ARG ROS_DISTRO=foxy
FROM osrf/ros:${ROS_DISTRO}-desktop

ENV ROS_WS=/root/ros2_ws

# File is executed by ENTRYPOINT
RUN sed --in-place \
    's|^source .*|\0\nsource "${ROS_WS}/install/setup.bash"|' \
    /ros_entrypoint.sh \
    && echo "source /ros_entrypoint.sh" >> /root/.bashrc

WORKDIR ${ROS_WS}

COPY map_expand ${ROS_WS}/src/map_expand

RUN colcon build

CMD ros2 run map_expand expander
