#!/usr/bin/env python3

import os
import re


def fix_qt_qml_export(path):
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

    # Check if there's already an install command
    install_match = re.search(
        r'install\s*\(\s*TARGETS\s+' + target_name, content)

    # Modify or add the install command
    if install_match:
        # Update existing install command to include all related targets
        updated_content = re.sub(
            r'install\s*\(\s*TARGETS\s+' + target_name +
            r'\s+EXPORT\s+qameleonTargets\s*\)',
            f'install(TARGETS {target_name} {target_name}_resources_1 {target_name}_resources_2 {target_name}_qmlcache EXPORT qameleonTargets)',
            content
        )
    else:
        # Add new install command at the end
        updated_content = content + \
            f'\ninstall(TARGETS {target_name} {target_name}_resources_1 {target_name}_resources_2 {target_name}_qmlcache EXPORT qameleonTargets)\n'

    # Write back the updated content
    with open(path, 'w') as f:
        f.write(updated_content)

    return True


# Find all CMakeLists.txt files
for root, dirs, files in os.walk('/workspaces/QameleonGUI/libs/qameleon'):
    for file in files:
        if file == 'CMakeLists.txt':
            path = os.path.join(root, file)
            if fix_qt_qml_export(path):
                print(f"Fixed: {path}")
