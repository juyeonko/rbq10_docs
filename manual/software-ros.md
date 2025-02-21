---
layout: doc
outline: deep
---

# ROS

## :hammer: Prerequisites
- Supported OS: Ubuntu 22.04
- ROS Version: ROS2 HUMBLE

## :inbox_tray: Installation

In your ROS 2 workspace `src` directory, clone the repository:
```bash
git clone https://github.com/palwanishan/rbq_ros2.git
```
and initialize and install the submodules:
```bash
cd rbq_ros2
git submodule init
git submodule update
```

From here, build and source the ROS 2 workspace:
```bash
sudo rosdep init && rosdep update
cd <ros2 ws>
source /opt/ros/humble/setup.bash
rosdep install --from-paths src -y --ignore-src
colcon build --symlink-install
source install/local_setup.bash
```

## :minidisc: RBQ ROS2 Driver

The RBQ driver contains all of the necessary topics, services, and actions for controlling RBQ over ROS2. To launch the driver, run:
```bash
ros2 run rbq_driver rbq_driver
```
To launch the rviz2, run:
```bash
ros2 launch rbq_description description.launch.py
```

### Configuration

Connect to Robot's ssid.

## :dog2: RBQ10 URDF

## :satellite: Hardware Communication System

<figure>
	<img src='/images/ros/hardware-communication-system.png' alt='missing' />
	<figcaption style="text-align: center;">[ Hardware Communication System ]</figcaption>
</figure>

## :feet: Gait State Transition

### Gait State

<table>
  <tr>
    <th>Gait State</th>
    <th>Control Off</th>
	<th>Fall Mode</th>
	<th>Sitting</th>
	<th>Standing Mode</th>
	<th>Walk Mode</th>
	<th>Stairs Mode</th>
	<th>Wave Mode</th>
	<th>Run Mode</th>
  </tr>
	<tr>
    <th>No.</th>
	<td>-1</td>
	<td>-2</td>
	<td>0</td>
	<td>1</td>
	<td>2</td>
	<td>4</td>
	<td>5</td>
	<td>6</td>
  </tr>
</table>

### Gait State Transition Diagram

<figure>
    <img src='/images/ros/gait-transition.png' alt='missing' />
    <figcaption style="text-align: center;">[ Gait State Transition Diagram ]</figcaption>
</figure>

## :speech_balloon: Topics

### Command Topics

Most of the commands integrated into RViz2's "RBQ" panel. 

Many simple robot commands can be called as services from the command line once the driver is running. For example:

### Robot State Topics


### Vision Sensor Topics

<style scoped>
th {
  text-align: center;
}
td {
  text-align: center;
}
</style>