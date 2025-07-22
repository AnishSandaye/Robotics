Procedure:
I.Mapping
Prerequisites
  echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
  source ~/.bashrc
1. Set the TurtleBot3 Model
  export TURTLEBOT3_MODEL=burger
2. Launch Gazebo Simulation
  ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
3. Launch SLAM (Simultaneous Localization and Mapping)
  ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=true
4. Drive the Robot to Map the Environment
  ros2 run teleop_twist_keyboard teleop_twist_keyboard
5. Save the Map
  export TURTLEBOT3_MODEL=burger
  ros2 run nav2_map_server map_saver_cli -f ~/my_map

II. Navigation
1. Set the TurtleBot3 Model
  export TURTLEBOT3_MODEL=burger

2. Launch the Gazebo Simulation
  ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

3. Launch Navigation2 with a Custom Map
  export TURTLEBOT3_MODEL=burger
  ros2 launch turtlebot3_navigation2 navigation2.launch.py \
      use_sim_time:=true \
      map:=/home/anish/my_map.yaml
