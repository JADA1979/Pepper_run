ROS Kinetec, Gazebo 7, Ubuntu 16.04 


**Install script:**
``` 
1º STEP:
>> CTRL+ALT+T
$ sudo apt-get install dialog
>> NAVIGATE TO /shfiles
$ chmod a+x -v *.sh

2º STEP:
>> CTRL+ALT+T
>> NAVIGATE TO /home
$ gedit .bashrc
>> PASTE IN LAST LINE: export PATH=$PATH:~"path_to_/shfiles"
>> EXAMPLE: export PATH=$PATH:~/shfiles
>> SAVE

3º STEP:
>> CTRL+ALT+T
>> NAVIGATE TO /home
$ dialog --create-rc ~/.dialogrc
>> CTRL+H
>> CUT ".dialogrc" FROM DOWNLOADED FOLDER
>> PASTE IN /home
```

**Run script:**
``` 
$ execpepper.sh
```
[ROS Kinetic](https://www.youtube.com/watch?v=LtHeyCBAE-8)

[Pepper](https://www.youtube.com/watch?v=toLx_NlV4kA)
