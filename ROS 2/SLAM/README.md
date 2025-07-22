Procedure:
I.Mapping
Prerequisites
  echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
  source ~/.bashrc
1. Set the TurtleBot3 Model
  export TURTLEBOT3_MODEL=burger
2. Launch Gazebo Simulation
  ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
<img width="1838" height="1057" alt="Screenshot from 2025-07-21 10-35-04" src="https://github.com/user-attachments/assets/7c6cc1b7-763c-4e64-bab2-5f2d4ee11e4d" />
3. Launch SLAM (Simultaneous Localization and Mapping)
  ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=true
<img width="1836" height="1065" alt="Screenshot from 2025-07-20 23-58-16" src="https://github.com/user-attachments/assets/9babd51a-21d2-4a3d-a99e-b7ac064c50b1" />
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
<img width="496" height="534" alt="Screenshot from 2025-07-21 10-35-43" src="https://github.com/user-attachments/assets/63b11c03-d2a5-4881-abc9-38a5b86975ce" />
<img width="496" height="534" alt="Screenshot from 2025-07-21 10-35-59" src="https://github.com/user-attachments/assets/55b04583-e70b-43b3-a1e3-d67deb9347c9" />

