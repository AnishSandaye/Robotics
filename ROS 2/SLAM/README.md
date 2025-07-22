Procedure:
1. Set the TurtleBot3 Model
  export TURTLEBOT3_MODEL=burger

2. Launch the Gazebo Simulation
  ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

3. Launch Navigation2 with a Custom Map
  export TURTLEBOT3_MODEL=burger
  ros2 launch turtlebot3_navigation2 navigation2.launch.py \
      use_sim_time:=true \
      map:=/home/anish/my_map.yaml
