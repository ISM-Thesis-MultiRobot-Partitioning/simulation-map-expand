# About

This ROS2 program listens to a map of [`nav_msgs/OccupancyGrid`](https://docs.ros.org/en/melodic/api/nav_msgs/html/msg/OccupancyGrid.html) type on a topic `MAP_TOPIC`, and publishes them onto `MAP_TOPIC/map_expanded`.

`MAP_TOPIC` is an environment variable that must be set, and which must point to the desired map topic to be expanded.
