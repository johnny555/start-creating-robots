FROM osrf/ros:humble-desktop
WORKDIR /workspace
COPY . /workspace/.devcontainer/
RUN apt-get update \
    && apt-get install -y ros-humble-ros-gz  ros-humble-rqt-robot-steering ros-humble-slam-toolbox ros-humble-navigation2 \
    ros-humble-nav2-bringup wget python3-pip vim \
    && rm -rf /var/lib/apt/lists/*
RUN bash .devcontainer/setup_container.bash
