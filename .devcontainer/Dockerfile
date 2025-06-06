FROM mcr.microsoft.com/devcontainers/cpp:1-ubuntu-22.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    automake \
    build-essential \
    clang \
    cmake \
    debianutils \
    g++ \
    libgl1-mesa-dev \
    libopencv-dev \
    libxcb-xinerama0 \
    python3 \
    python3-dev \
    python3-pip \
    python3-tk \
    python3-venv \
    qml6-module-qtquick \
    qml6-module-qtquick-controls \
    qml6-module-qtquick-dialogs \
    qml6-module-qtquick-layouts \
    qml6-module-qtquick-templates \
    qml6-module-qtquick-window \
    qml6-module-qtqml-workerscript \
    qt6-base-dev \
    qt6-declarative-dev \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
