---
layout: doc
outline: deep
---

# Robot Quick Start

## Turn On the Robot

## STEAM DECK Remote Controller Connection

### Step 1: Open RBQGUI APP
Open the application named `RBQGUI` on the Desktop of STEAM DECK.

<figure>
  <img src='/images/start/rc-connect-open-app.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQGUI APP ]</figcaption>
</figure>

### Step 2: Connect Wi-Fi
Connect Wi-Fi of STEAM DECK to the Wi-Fi named `RBQ_{XX}`.

<figure>
  <img src='/images/start/rc-connect-wifi.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQ_{XX} WiFi ]</figcaption>
</figure>

### Step 3: Connect Robot with STEAM DECK

1. Press `Remote Controller-Robot Communication Connection` button (orange) at the top bar left. Then, the pop-up window will be activated.

<figure>
  <img src='/images/start/rc-connect-connect1.png' alt='missing' />
  <figcaption style="text-align: center;">[ Remote Controller-Robot Communication Connection button ]</figcaption>
</figure>

<br>

1. Press `Connect` button at the pop-up window. <br> If STEAM DECK and the robot are properly connected, `Remote Controller-Robot Communication Connection` button will turn to green.

<div class="image-group">
  <figure>
    <img src='/images/start/rc-connect-connect2.png' alt='missing' />
    <figcaption>[ Connect button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/start/rc-connect-connect3.png' alt='missing' />
    <figcaption>[ Connected ]</figcaption>
  </figure>
</div>

## Robot Initial Pose Setting

Place the robot on a flat surface, ensuring that all of its feet and knees are in contact with the ground. Refer to the robot posture shown in the image below.

<figure>
  <img src='/images/start/initial-pose.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQ10 Initial Pose ]</figcaption>
</figure>

## Auto Start

1. Press `Robot Initial Setup` button (red) at the top bar left. Then, the pop-up window will be activated.

<figure>
  <img src='/images/start/auto-start1.png' alt='missing' />
  <figcaption style="text-align: center;">[ Robot Initial Setup button ]</figcaption>
</figure>

<br>

1. Press `Auto Start Robot` button at the pop-up window.

<figure>
  <img src='/images/start/auto-start2.png' alt='missing' />
  <figcaption style="text-align: center;">[ Auto Start Robot button ]</figcaption>
</figure>

<br>

1. Confirm that three `Manual Setup` buttons all change to green.

<figure>
  <img src='/images/start/auto-start3.png' alt='missing' />
  <figcaption style="text-align: center;">[ Auto Start Success ]</figcaption>
</figure>

<br>

<blockquote>
  <p>⚠️  If any one of three <code>Manual Setup</code> buttons doesn’t change to green, <br>follow the instructions:</p> 
  <ol>
    <li>If <code>Check CAN-Bus</code> failed, restart the robot.</li>
    <li>If <code>Find Home-pose</code> failed, check the leg poses of the robot and restart the robot again.</li>
  </ol>
</blockquote>

<!-- ## Enable External Joystick

1. Press the “SLAM-NAVIGATION” button (orange) on right bottom side. Then, the SLAM Navigation mode automatically starts.

<div class="image-group">
  <figure>
    <img src='/images/start/ext-joy1.png' alt='missing' />
    <figcaption>[ SLAM-NAVIGATION button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/start/ext-joy2.png' alt='missing' />
    <figcaption>[ SLAM Navigation Mode ]</figcaption>
  </figure>
</div>

<br>

2. If the below left screen comes out and keep loading,
   1. Press the exit button (red) on right top side. (Left Image)
   2. Press the “Camera View Mode” button (orange). (Right Image)
   3. Press the “SLAM-NAVIGATION” button again.

<div class="image-group">
  <figure>
    <img src='/images/start/ext-joy3.png' alt='missing' />
    <figcaption>[ SLAM-NAVIGATION button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/start/ext-joy4.png' alt='missing' />
    <figcaption>[ SLAM Navigation Mode ]</figcaption>
  </figure>
</div>

<br>

3. To use the external STEAM DECK Joystick, disable the “Enable EXT Joystick” toggle button. 
   
<div class="image-group">
  <figure>
    <img src='/images/start/ext-joy5.png' alt='missing' />
    <figcaption>[ SLAM-NAVIGATION button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/start/ext-joy6.png' alt='missing' />
    <figcaption>[ SLAM Navigation Mode ]</figcaption>
  </figure>
</div>

<br>

<blockquote>
  <p>💡  To do autonomous driving, activate the "Enable EXT Joystick" toggle button.</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;->  External joystick NOT working</p>
</blockquote> -->

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