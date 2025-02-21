---
layout: doc
outline: deep
---

# RBQuad-DEV

## Quick Start

### SSH Access to RBQ10

#### Step 1: Setup RBQuad_DEV

```bash
mkdir rbq_ws
cd rbq_ws
git clone https://github.com/HyobinJeong/RBQuad_DEV.git
```

#### Step 2: Make Keys Directory

```bash
cd ~/rbq_ws/RBQuad_DEV
mkdir keys
```

#### Step 3: Setup `motion_shared_key`

Place the `motion_shared_key` you received in `RBQuad_DEV/keys` folder.

<figure>
  <img src='/images/dev/motion-shared-key.png' alt='missing' />
  <figcaption style="text-align: center;">[ motion_shared_key ]</figcaption>
</figure>

#### Step 4: Connect to Robot by SSH

1. Select and connect SSID named `RBQ_{XX}` from Wi-Fi network of user PC.

<figure style="margin-left: 150px; margin-right: 150px;">
  <img src='/images/dev/wifi.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQ_{XX} Wi-Fi ]</figcaption>
</figure>

2. Run `ssh.bash`

```bash
cd ~/rbq_ws/RBQuad_DEV/scripts/
./ssh.bash
```

<blockquote>
  <p>💡  If SSH successfully connects to the robot, the username will change to <code>rbq@motion</code>.</p>
  <figure>
    <img src='/images/dev/ssh-access.png' alt='missing' />
    <figcaption style="text-align: center;">[ SSH Connect Success ]</figcaption>
  </figure>
</blockquote>


### Run Program

#### Run Default Program `PODOLAN`

```bash
cd ~/rbq_ws/motion/bin/
sudo ./PODOLAN
```

<blockquote>
  <p>💡  If <code>PODOLAN</code> runs properly, <code>Daemon</code>, <code>QuadWalk</code> will run together automatically.</p>
  <figure>
    <img src='/images/dev/podolan.png' alt='missing' />
    <figcaption style="text-align: center;">[ PODOLAN ]</figcaption>
  </figure>
</blockquote>

#### Run Tutorial Program

With `PODOLAN` running, open an additional terminal window to run `TutorialAL`.

```bash
cd ~/rbq_ws/motion/bin/
sudo ./TutorialAL
```

<figure>
  <img src='/images/dev/tutorialal.png' alt='missing' />
  <figcaption style="text-align: center;">[ TutorialAL ]</figcaption>
</figure>

### Run GUI with Qt Creator

#### Step 1: Install Qt Creator

```bash
sudo apt update
sudo apt install qtcreator
```

#### Step 2: Run Qt Creator

```bash
qtcreator
```

<figure>
  <img src='/images/dev/qt-creator.png' alt='missing' />
  <figcaption style="text-align: center;">[ Qt Creator ]</figcaption>
</figure>

#### Step 3: Load Project

1. Go to `Edit` tab and select `Load Project...`.

<figure>
  <img src='/images/dev/load-project.png' alt='missing' />
  <figcaption style="text-align: center;">[ Load Project ]</figcaption>
</figure>

2. Open `RBQuad_DEV.pro` file in `~/rbq_ws/RBQuad_DEV/src` directory.

<figure>
  <img src='/images/dev/pro-open.png' alt='missing' />
  <figcaption style="text-align: center;">[ RBQuad_DEV.pro ]</figcaption>
</figure>

3. At <b>Configure Project</b>, check only `Release` from <b>Desktop</b>, <br>type `../build` and click `Configure Project`.

<figure>
  <img src='/images/dev/configure-project.png' alt='missing' />
  <figcaption style="text-align: center;">[ Configure Project ]</figcaption>
</figure>

#### Step 4: Run GUI

1. Right-click GUI folder and select `Run`. After the project built, GUI will start.

<figure>
  <img src='/images/dev/gui-run.png' alt='missing' />
  <figcaption style="text-align: center;">[ Run GUI ]</figcaption>
</figure>

2. By selecting `Connect` button in the launched GUI, the robot and GUI will be integrated.

<blockquote>
  <p>💡  If properly connected, <code>LAN COM</code> status on GUI will turn to red.</p>
</blockquote>

<div class="image-group">
  <figure>
    <img src='/images/dev/gui-connect.png' alt='missing' />
    <figcaption>[ Connect button ]</figcaption>
  </figure>
  <figure>
    <img src='/images/dev/gui-connected.png' alt='missing' />
    <figcaption>[ Connected ]</figcaption>
  </figure>
</div>

#### Use `TutorialAL` with GUI

1. Run `TutorialAL`.

```bash
cd ~/rbq_ws/motion/bin/
sudo ./TutorialAL
```

2. While running `TutorialAL`, select `Tutorial Test` button in GUI.

<figure>
  <img src='/images/dev/tutorial-test.png' alt='missing' />
  <figcaption style="text-align: center;">[ Tutorial Test button ]</figcaption>
</figure> 

<blockquote>
  <p>💡  If message <code>CMD TutorialAL_COMMAND_TEST Received</code> is displayed in the terminal, the execution of <code>TutorialAL</code> and the integration with GUI have been successfully completed.</p>
  <figure>
    <img src='/images/dev/gui-tutorialal-success.png' alt='missing' />
    <figcaption style="text-align: center;">[ TutorialAL GUI Connect Success ]</figcaption>
  </figure> 
</blockquote>

### Build and Deploy

#### Build

1. Modify header and source files of `TutorialAL` in Qt Creator on user PC.

<figure>
  <img src='/images/dev/build1.png' alt='missing' />
  <figcaption style="text-align: center;">[ Modify TutorialAL ]</figcaption>
</figure> 

2. Build `TutorialAL` Project.

<figure>
  <img src='/images/dev/build2.png' alt='missing' />
  <figcaption style="text-align: center;">[ Build TutorialAL ]</figcaption>
</figure>

#### Deploy

By running `build_deploy.bash` script in `~/rbq_ws/RBQuad_DEV/scripts` directory, the newly built executable files will be copied to the robot PC.

<blockquote>
  <p>⚠️  <code>build_deploy.bash</code> must be runned only after terminating <code>TutorialAL</code>. <br>If you attempt to deploy while <code>TutorialAL</code> is running, the copy process may not be completed successfully.</p>
</blockquote>

0. If `TutorialAL` is running, terminate the program.

<figure>
  <img src='/images/dev/deploy-kill.png' alt='missing' />
  <figcaption style="text-align: center;">[ Kill TutorialAL ]</figcaption>
</figure>

1. Run `build_deploy.bash`.

```bash
cd ~/rbq_ws/RBQuad_DEV/scripts
./build_deploy.bash
```

<figure>
  <img src='/images/dev/build-deploy-bash.png' alt='missing' />
  <figcaption style="text-align: center;">[ build_deploy.bash ]</figcaption>
</figure>

<blockquote>
  <p>⚠️  If error related to <code>-lxcb-xinerama</code> occurs, install following package.</p>
</blockquote>

```bash
sudo apt install libxcb-xinerama0-dev
```

1. Rerun `TutorialAL`.

<blockquote>
  <p>💡  By selecting <code>Tutorial Test</code> button in GUI, the modified content will be reflected.</p>
  <figure>
    <img src='/images/dev/deploy-tutorialal.png' alt='missing' />
    <figcaption style="text-align: center;">[ New TutorialAL ]</figcaption>
  </figure> 
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