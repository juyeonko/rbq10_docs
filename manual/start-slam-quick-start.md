---
layout: doc
outline: deep
---

# SLAM Navigation Quick Start

## Auto Quick Start (if there are scheduled tasks)

<blockquote>
  <p>💡  The scheduled tasks will start automatically when the robot is powered on.</p>
</blockquote>

### Step 1: Check fail messages
  - LiDAR, Camera, Localization, Robot fail messages on left top side 

<blockquote>
  <p>⚠️  If any fail message is shown, follow the instructions:</p>
  <ol>
    <li>If Localization fail, try auto init again.</li>
    <li>If LiDAR, Camera, Robot fail, try Cold Start.</li>
  </ol>
</blockquote>

<figure>
  <img src='/images/slam-start/auto-local-fail.png' alt='missing' />
  <figcaption style="text-align: center;">[ Localization Failed ]</figcaption>
</figure>

<div class="image-group">
  <figure>
    <img src='/images/slam-start/auto-bat-low.png' alt='missing' />
    <figcaption>[ RBQ10 Low Battery ]</figcaption>
  </figure>
  <figure>
    <img src='/images/slam-start/auto-lidar-fail.png' alt='missing' />
    <figcaption>[ LiDAR Connection Failed ]</figcaption>
  </figure>
</div>

<br>

### Step 2: Check schedule status

<blockquote>
  <li>SCHEDULER ON: there are saved scheduled tasks.</li>
  <li>SCHEDULER OFF: there are NO saved scheduled tasks.</li>
  <p>💡&nbsp;&nbsp;If there are scheduled tasks but the scheduler status is “OFF”, the scheduled tasks will not start.</p>
</blockquote>

<figure>
  <img src='/images/slam-start/auto-scheduler-off.png' alt='missing' />
  <figcaption style="text-align: center;">[ SCHEUDULER OFF ]</figcaption>
</figure>

<br>

### Step 3: Activate `Enable SLAM Enabled` toggle button. 

<blockquote>
  <p>💡  If OFF, autonomous driving will not work.</p>
</blockquote>

<figure>
  <img src='/images/slam-start/auto-toggle.png' alt='missing' />
  <figcaption style="text-align: center;">[ SLAM Enabled ON ]</figcaption>
</figure>

<br>

### Step 4: Change the map view perspective.

- 2D, 3D, Follow View Change buttons

<figure>
  <img src='/images/slam-start/auto-view-2d.png' alt='missing' />
  <figcaption style="text-align: center;">[ 2D View ]</figcaption>
</figure>

<figure>
  <img src='/images/slam-start/auto-view-3d.png' alt='missing' />
  <figcaption style="text-align: center;">[ 3D View ]</figcaption>
</figure>

<figure>
  <img src='/images/slam-start/auto-view-follow.png' alt='missing' />
  <figcaption style="text-align: center;">[ Follow View ]</figcaption>
</figure>

<br>

### (Optional) Step 5: Restart

1. Once the task and schedule settings are completed, take the robot to the docking station and initiate docking (or make it sit in front).

2. Perform `Cold Start`. The schedule tasks will automatically start.

3. After `Cold Start`, initialize the robot by pressing `Connect` → `Auto Robot Start` buttons on STEAM DECK. 

4. Turn ON `Enable EXT Joystick`.

## Template Map: Load Saved Map and Set the Path

<blockquote>
  <p>💡  Make sure the robot to be placed near the base node when starting for the first time.</p>
</blockquote>

### Step 1: Unzip Map Zip Folder

Extract `sra_template.zip` zip folder  to `sra_template` in `Home/maps_3d` directory.

<figure>
  <img src='/images/slam-start/map-folder.png' alt='missing' />
  <figcaption style="text-align: center;">[ Follow View ]</figcaption>
</figure>

<br>

### Step 2: Load the Map

1. Click `Map load` button.
2. Select the extracted folder `sra_template` in Step 1.
3. If the map is properly loaded, `Map load` button will turn to green.
4. If the robot is turned on, the most recently loaded map will be automatically loaded.

<blockquote>
  <p>💡  If map is huge, it might take long time.</p>
</blockquote>

<div class="image-group">
  <figure>
    <img src='/images/slam-start/map-map-load-btn.png' alt='missing' />
    <figcaption>[ Map load button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/slam-start/map-loaded-map.png' alt='missing' />
    <figcaption>[ Loaded Map ]</figcaption>
  </figure>
</div>

<br>

### Step 3: Check Localization

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/map-connect-loc.png' alt='missing'/>
  <figcaption style="text-align: center;">[ Connect button, LOC START button ]</figcaption>
</figure>

Confirm that “Connect” button and “LOC START” button are green.

<blockquote>
  <p>⚠️  If either one of the buttons is not green, re-dock the robot or sit the robot in front of the docking station and reboot.</p>
</blockquote>

If localization works properly, the robot within the map will automatically adjust its position.

<blockquote>
  <p>⚠️  If the robot doesn’t adjust its position correctly(localization failed), try auto init.</p>

  <figure>
    <img src='/images/slam-start/map-loc-fail.png' alt='missing'/>
    <figcaption style="text-align: center;">[ Localization Failed ]</figcaption>
  </figure>
</blockquote>

### Step 4: Activate “Enable EXT Joystick” toggle button

It will disable the manual control via STEAM DECK joystick and enables the autonomous driving.

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/map-tog-on.png' alt='missing'/>
  <figcaption style="text-align: center;">[ Enable EXT Joystick ON ]</figcaption>
</figure>

### Step 5: Switch to "ANNOTATION" mode

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/map-annotation.png' alt='missing'/>
  <figcaption style="text-align: center;">[ ANNOTATION mode ]</figcaption>
  </figure>

### Step 6: Make Robot Stand Up, Walk, and Move forward by 2 meters

In `Pose` tab at bottom left,
<div class="image-group">
  <figure>
    <img src='/images/slam-start/map-stand.png' alt='missing'/>
    <figcaption style="text-align: center;">[ Stand button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/slam-start/map-walk.png' alt='missing'/>
    <figcaption style="text-align: center;">[ Walk button ]</figcaption>
  </figure>
</div>

1. Click `Stand` button.
2. Click `Walk` button.

Then, in `Move` tab,

3. Move the robot forward by 2 meters.
4. Confirm that the robot(blue) doesn't overlap with the base node(yellow).

<figure>
  <img src='/images/slam-start/map-overlap.png' alt='missing'/>
  <figcaption style="text-align: center;">[  ]</figcaption>
</figure>

### Step 7: Set the Path

<figure>
  <img src='/images/slam-start/map-quick-anno.png' alt='missing'/>
  <figcaption style="text-align: center;">[ Quick annotation button ]</figcaption>
</figure>

1. Click `Quick annotation` button. -> automatically set the first goal node, and record the path
2. Move the robot -> automatically create the path and nodes
3. Click `Quick annotation` button again. -> finish the path setting

### Step 8: Connect the base node and the first goal node

<blockquote>
  <p>The base node and the first goal node which was set automatically at Step 9 must be connected.</p>
</blockquote>

To link the two nodes,

1. Hold `Shift` key in the keyboard and select the base node(yellow) and the first goal node(blue).
2. Press `B` key in the keyboard or `Add link2[B]` button in the top bar. 
3. A link will be created and connected the two nodes.

<figure>
  <img src='/images/slam-start/map-node-connect.png' alt='missing'/>
  <figcaption style="text-align: center;">[ Connected base node and first goal node ]</figcaption>
</figure>

### Step 9: If node editing finished, switch to `DRIVE` mode

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/map-drive.png' alt='missing'/>
  <figcaption style="text-align: center;">[ DRIVE mode ]</figcaption>
</figure>

### Step 10: Return to Base Node

Click `RTB` button in `Task` tab at right bottom section. It will check whether the robot can drive autonomously to its destination(base node) by the path created.

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/map-rtb.png' alt='missing'/>
  <figcaption style="text-align: center;">[ RTB button ]</figcaption>
</figure>

<blockquote>
  <p>⚠️  If the robot doesn’t head towards the docking station, check if all the nodes, especially between the first goal node and the base node in Step 9, are connected properly.</p>
</blockquote>

## Task Tab: Save the Task Path

### Task Tab

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/task-tab.png' alt='missing' />
  <figcaption style="text-align: center;">[ Task tab ]</figcaption>
</figure>

- `Task Add[U]`, `Task Delete[I]`, `Save`, `Load`, `Reload` buttons: <br>set one or multiple goals in `Task Node List`
- Only goal nodes can be added in `Task Node List`, which will be done in the corresponding order.
- Robot will sequentially reach each goal node and lastly return to the base node.

### Step 1: Add Tasks (Goal Nodes)

<figure>
  <img src='/images/slam-start/task-add.png' alt='missing' />
  <figcaption style="text-align: center;">[ Add Goal Node to Task Node List ]</figcaption>
</figure>

1. Press `Shift` key in the keyboard and click the goal node(blue).
2. Click `Task Add[U]` button, then the corresponding goal node will be added to `Task Node List`.

### Step 2: Save the Tasks

After adding all the goal nodes in the desired order, click `Save` button. <br> Multiple goal nodes can be set, then the robot will sequentially reach each goal node and return to the base node after all finish.

<div class="image-group">
  <figure>
    <img src='/images/slam-start/task-node-list.png' alt='missing' />
    <figcaption style="text-align: center;">[ Goal Nodes in Order ]</figcaption>
  </figure>
  <figure>
    <img src='/images/slam-start/task-save.png' alt='missing' />
    <figcaption style="text-align: center;">[ Save button ]</figcaption>
  </figure>
</div>

### Step 3: Save the Task File

Rename the task file name like `task_(desired name).json`.

<blockquote>
  <p>⚠️  If the name NOT follows the template as <code>task_*.json</code>, the file will be not loaded afterwards.</p>
</blockquote>

<figure>
  <img src='/images/slam-start/task-json.png' alt='missing' />
  <figcaption style="text-align: center;">[ Proper task file names (red box) ]</figcaption>
</figure>

### Step 4: Start the Task

To move the robot by the tasks saved in `Task Node List`, click `Start[0]` button.

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/task-start.png' alt='missing' />
  <figcaption style="text-align: center;">[ Start button ]</figcaption>
</figure>

<blockquote>
  <ol>
    <li>The robot MUST always start near the docking station within 2 meters.</li>
    <li>If there are no goal nodes <code>Task Node List</code>, it will not move.</li>
  </ol>
</blockquote>

## Schedule Tab: Set the Schedule of Saved Task

### Schedule Tab

<figure style="margin-left: 100px; margin-right: 200px;">
  <img src='/images/slam-start/schedule-tab.png' alt='missing' />
  <figcaption style="text-align: center;">[ Schedule Tab ]</figcaption>
</figure>

- Schedule option allows the robot to perform tasks at specific given times.
- Set the schedule while the robot is NOT in autonomous driving and in SCHEDULER OFF status.

### Step 1: Set the Schedule and Task

<div class="image-group">
  <figure>
    <img src='/images/slam-start/schedule-time.png' alt='missing' />
    <figcaption style="text-align: center;">[ Add Time ]</figcaption>
  </figure>
  <figure>
    <img src='/images/slam-start/schedule-task-files.png' alt='missing' />
    <figcaption style="text-align: center;">[ Task Files ]</figcaption>
  </figure>
</div>

1. Set the time.
2. Click `Add` button.
3. Click `Load` button.
4. Select the task file named `task_*.json`.

### Step 2: Save Schedule List

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/slam-start/schedule-save.png' alt='missing' />
  <figcaption style="text-align: center;">[ Task Files ]</figcaption>
</figure>

1. If the loaded task file with the setting time has been added to `Schedule List` correctly, click `Save` button.
2. To start scheduled task, press `ON` button.

<blockquote>
  <p>💡  When the robot restarts,</p>
  <ol>
    <li>If ON, the saved scheduled tasks will be automatically loaded.</li>
    <li>If OFF, the saved scheduled tasks will NOT be loaded.</li>
  </ol>
</blockquote>

<style scoped>
  .image-group {
    display: flex;
    justify-content: space-between; 
    gap: 10px;
    text-align: center;
  }
  .image-group figure {
    width: 48%; 
    margin: 0;
  }
</style>