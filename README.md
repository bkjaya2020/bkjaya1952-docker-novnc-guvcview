# bkjaya1952-docker-novnc-guvcview
# A docker image pre-installed guvcview-Linux based on bkjaya1952/q4wine-x11vnc-novnc-docker

A docker image pre-installed guvcview-inux based on guvcview and bkjaya1952/q4wine-x11vnc-novnc-docker

Refer:- http://guvcview.sourceforge.net/

Usage :-

To create a guvcview (name gvw) using bkjaya1952/docker-novnc-guvcview

Refer:- https://hub.docker.com/r/bkjaya1952/docker-novnc-guvcview

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name gvw --privileged=true bkjaya1952/docker-novnc-guvcview</code>

<code>sudo docker start gvw</code>

<code>xdg-open http://localhost:8008/vnc_lite.html</code>

Then the novnc desktop with q4wine will appear on the web browser at the startup.

At the first run of the docker container , you will have to run the first startup wizard to configure the q4wine as follows.

The it will automatically download wine and install.

For configuring q4wine please refer the following link

https://hub.docker.com/repository/docker/bkjaya1952/q4wine-x11vnc-novnc-docker


<img src="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-05-37.png" alt="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-05-37.png" width="625" height="520">

Figure:- 1 Press autodetect button to include drive Z: during configuring q4wine

<img src="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-06-08.png" alt="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-06-08.png" width="625" height="520">

Figure:- 2 Right click on wine desktop to add new icon for guvcview 

<img src="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-09-11.png" alt="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-09-11.png" width="625" height="520">

Figure:- 3 Fill the box as shown in the figure to connect guvcview starter at /usr/bin/guvcview in the drive Z:

<img src="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-10-46.png" alt="https://raw.githubusercontent.com/bkjaya2020/bkjaya1952-docker-novnc-guvcview/master/Screenshot%20from%202020-09-09%2017-10-46.png" width="625" height="520">

Figure :- 4 guvcview USB camera stream 



How to change the timezone

After quitting the noVNC

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file


