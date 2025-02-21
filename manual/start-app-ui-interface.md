---
layout: doc
outline: deep
---

# APP UI Interface

## Introduction

<figure>
  <img src='/images/app-ui/intro1.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQGUI APP ]</figcaption>
</figure>

- Left buttons: change robot posture
  - Sit
  - Stand
  - Walk
  - Stair
  - Docking
  - Walking Parameter Setting

- Right Top buttons: change view mode
  - 3D Virtual View mode
  - Camera View mode

- Right Button buttons: for autonomous driving
  - SLAM Navigation mode

<blockquote>
  <p>💡  The robot will change the posture or the APP screen will change and the corresponding button will change to orange. </p>
</blockquote>

## Sit

The robot will maintain the sit posture. Any joystick operation will not be working.

## Stand

- currently Sitting -> stand up
- currently Walking or Stair mode -> stop & stand in place

<br>

<b> Joystick Operation</b>
<table>
  <tr>
    <th>JOYSTICK</th>
    <th>CONTROL KEY</th>
    <th>MOVEMENT</th>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Forward / Backward</td>
    <td>Waist Bend / Lift</td>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Left / Right</td>
    <td>Shoulder Recoil</td>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Forward / Backward</td>
    <td>Body Height Adjustment</td>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Left / Right</td>
    <td>Turn Left / Right</td>
  </tr>
</table>

## Walk

<br>

<b> Joystick Operation</b>
<table>
  <tr>
    <th>JOYSTICK</th>
    <th>CONTROL KEY</th>
    <th>MOVEMENT</th>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Forward / Backward</td>
    <td>Go Straight / Backwards</td>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Left / Right</td>
    <td>Grab Walking</td>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Forward / Backward</td>
    <td>Waist Bend / Lift</td>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Left / Right</td>
    <td>Turn Left / Right</td>
  </tr>
</table>

## Stair

In stair mode, the robot adjusts the walking speed and leans the body according to the slope of the stairs. 

<blockquote>
  <p>💡  When the robot is in stair mode,</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R Stick - Forward / Backward control keys are not used. </p>
</blockquote>

<br>

<b> Joystick Operation</b>
<table>
  <tr>
    <th>JOYSTICK</th>
    <th>CONTROL KEY</th>
    <th>MOVEMENT</th>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Forward / Backward</td>
    <td>Go Straight / Backwards</td>
  </tr>
  <tr>
    <td>L Stick</td>
    <td>Left / Right</td>
    <td>Grab Walking</td>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Forward / Backward</td>
    <th>NOT USED</th>
  </tr>
  <tr>
    <td>R Stick</td>
    <td>Left / Right</td>
    <td>Turn Left / Right</td>
  </tr>
</table>

## Docking

<figure>
  <img src='/images/app-ui/docking.png' alt='missing' />
  <figcaption style="text-align: center;">[ Docking button ]</figcaption>
</figure>

<br>

<blockquote>
  <p>⚠️  <b>WARNING</b>:</p>
  <ol>
    Obstacle avoidance of the robot is disabled around the docking station. So make sure there is no obstacle around the docking station.
  </ol>
</blockquote>

## Walking Parameter Setting

- Select the presets for the robot’s walking and movement
- Customize max walking speed, body height, or foot lifting height

<table>
  <tr>
    <th>Preset</th>
    <th>Usage</th>
    <th>Max Speed</th>
    <th>Body Height</th>
    <th>Foot Height</th>
  </tr>
  <tr>
    <th>ECO</th>
    <td>Maximum Energy Efficiency</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>Sport+</th>
    <td>Maximum Speed</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>Silent</th>
    <td>Minimum Noise</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>Off-Road</th>
    <td>Maximum Obstacle Overcoming Ability</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>Default</th>
    <td>Default</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

## View Modes

### 3D Virtual View Mode

### Camera View Mode

## SLAM Navigation Mode

By clicking `SLAM-NAVIGATION` button, the mode will be changed to SLAM Navigation mode and the screen will show the map.

<figure>
  <img src='/images/app-ui/slam-intro.png' alt='missing' />
  <figcaption style="text-align: center;">[ SLAM Navigation mode ]</figcaption>
</figure>

### Camera View

<figure>
  <img src='/images/app-ui/slam-camera-view.png' alt='missing' />
  <figcaption style="text-align: center;">[ Camera View buttons ]</figcaption>
</figure>

<div class="image-group">
  <figure>
    <img src='/images/app-ui/slam-top-view.png' alt='missing' />
    <figcaption>[ Camera Top View ]</figcaption>
  </figure>
  <figure>
    <img src='/images/app-ui/slam-follow-view.png' alt='missing' />
    <figcaption>[ Camera Follow View ]</figcaption>
  </figure>
</div>

### Easy Mode

<figure>
  <img src='/images/app-ui/slam-easy-mode-buttons.png' alt='missing' />
  <figcaption style="text-align: center;">[ Easy Mode buttons ]</figcaption>
</figure>

- Auto Init: Localization start
- Schedule Start: Start the saved Schedule
- Return Home: Return to Docking Station during autonomous driving
- Look Goal: Change Camera View to focus on Goal Node
- Stop: Stop the robot during autonomous driving

<blockquote>
  <p>💡  Press <code>Auto Init</code> button after docking the robot (or sitting down the robot)</p>
</blockquote>


<style scoped>
th {
  text-align: center;
}
td {
  text-align: center;
}
</style>

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