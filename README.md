# Start Creating Robots 

A Taste Of ROS 

## Getting Setup 

This repo makes use of Docker, VS Code and WSL (if on Windows). 

### Step 0. (Windows Only) Setup WSL

1. Follow the instructions at (https://learn.microsoft.com/en-us/windows/wsl/setup/environment)[WSL setup ] to install WSL. Make sure to setup a user with a password. But Breifly the steps are: 

```
wsl.exe --install
wsl.exe --set-version Ubuntu 2
wsl.exe --update
```

### Step 1: Download and install Docker Desktop 

https://www.docker.com/products/docker-desktop/

- Make sure that Docker Desktop is running. 

### Step 2: Download and install VS Code

https://code.visualstudio.com

### Step 3: Install Dev Containers Extension in VS Code 

- Open VS Code, Hit "Ctr+Shift+X" to open the extension window. Search for an extension called "Dev containers" and install. 

### Step 4: Clone the reop 

In Windows: 
 - Open the "Terminal" app.
 - type `wsl` and hit enter.
 - type `cd` and hit enter.
 - type `git clone https://github.com/johnny555/start-creating-robots.git`

On Mac or Linux: 
- Open a Terminal
- type `cd` and hit enter.
- type `git clone https://github.com/johnny555/start-creating-robots.git`

### Step 5: Open the folder in the Dev Container. 

- Open VS Code
- (windows only) Click the bottom left of the VS Code window, it should look like `><` and then select "Connect to WSL". This connects your VS code to the WSL system. 
- Hit ctr+shift+p, and then find and run the option task "Dev Containers: Open Folder In Container"
- When asked for a folder, simply open the folder `start-creating-robots` which should be in the list. It may be tempting, but do not open the `.devcontainer` folder.
- Your system will download the docker container. It may take 10 minutes. It will eventually open up a VS Code system, which in the bottom left will say: 

`Dev Container: Start Creating Robots`

Congratulations you are now inside the dev container. 

### Step 6: Run Gazebo

- Inside VS Code, hit Ctr+Shift+P, select "Tasks: Run Task", then select "Gazebo Test". 
- In a web browser open the page: http://localhost:8080/vnc.html
- Hit the "Connect" button. 
- You should see a gazebo simulation running. Play with it! 
- If its not centered in the screen, right click on "Gazebo" in the task bar to the bottom and click "Maximize". 

Congratulations! You are now ready to Start Creating Robots with ROS.
