#!/usr/bin/env python3

import os
import re


def fix_qml_module_config(path):
    with open(path, 'r') as f:
        content = f.read()

    # Check if this file has qt_add_qml_module
    if "qt_add_qml_module" not in content:
        return False

    # Extract the target name
    qt_add_match = re.search(r'qt_add_qml_module\s*\(\s*(\w+)', content)
    if not qt_add_match:
        return False

    target_name = qt_add_match.group(1)
    print(f"Found QML module target: {target_name}")

    # Remove NO_RESOURCE_TARGET_PATH which is invalid for libraries
    if "NO_RESOURCE_TARGET_PATH" in content:
        content = content.replace("NO_RESOURCE_TARGET_PATH", "")
        print(f"Removed NO_RESOURCE_TARGET_PATH from {path}")

    # Make sure resource targets are defined
    if "add_custom_target" not in content:
        # Add resource targets before install command
        resource_code = f"\n\n# Explicitly create resource targets for QML modules\n"
        resource_code += f"add_custom_target({target_name}_resources_1)\n"
        resource_code += f"add_custom_target({target_name}_resources_2)\n"

        install_pos = content.find("install(TARGETS")
        if install_pos > 0:
            content = content[:install_pos] + \
                resource_code + content[install_pos:]
        else:
            content += resource_code
        print(f"Added resource targets to {path}")

    # Update install command to include all targets
    install_pattern = r'install\s*\(\s*TARGETS\s+' + target_name + \
        r'(?:\s+[^\)]+)?\s+EXPORT\s+qameleonTargets\s*\)'
    install_match = re.search(install_pattern, content)

    if install_match:
        updated_install = f"install(TARGETS {target_name} {target_name}_resources_1 {target_name}_resources_2 EXPORT qameleonTargets)"
        content = re.sub(install_pattern, updated_install, content)
        print(f"Updated install command in {path}")
    else:
        # Add install command if missing
        content += f"\ninstall(TARGETS {target_name} {target_name}_resources_1 {target_name}_resources_2 EXPORT qameleonTargets)\n"
        print(f"Added install command to {path}")

    with open(path, 'w') as f:
        f.write(content)
    return True


# Find all CMakeLists.txt files
fixed_files = 0
for root, dirs, files in os.walk('/workspaces/QameleonGUI/libs/qameleon'):
    for file in files:
        if file == 'CMakeLists.txt':
            path = os.path.join(root, file)
            if fix_qml_module_config(path):
                fixed_files += 1

print(f"\nFixed {fixed_files} CMakeLists.txt files")
