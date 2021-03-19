#! /bin/bash

OPC=$(dialog --menu "Pepper simulation setup: " 0 0 0 \
	1 "Gazebo" \
	2 "Control" \
	3 "Localization" \
	4 "SLAM" \
	5 "OntoSLAM" \
	6 "Perception" \
	7 "Rviz" \
	8 "Help" --stdout)
case $OPC in
	1)
		OPC1=$(dialog --menu "Gazebo options: " 0 0 0 \
		1 "Basic world" \
		2 "Museum world" \
		3 "Office world" \
		4 "Actors world" \
		5 "Agents world" --stdout)
		case $OPC1 in
			1)
			gnome-terminal -- basic.sh
			execpepper.sh;;

			2)
			gnome-terminal -- museum.sh
			execpepper.sh;;

			3)
			gnome-terminal -- office.sh
			execpepper.sh;;

			4)
			gnome-terminal -- actors.sh
			execpepper.sh;;

			5)
			gnome-terminal -- agents.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	2)
		OPC2=$(dialog --menu "Control options: " 0 0 0 \
		1 "RQT control" \
		2 "Joystick control" \
		3 "Random control" \
		4 "Navigation control" --stdout)
		case $OPC2 in
			1)
			gnome-terminal -- rqt.sh
			execpepper.sh;;

			2)
			gnome-terminal -- joyp1.sh
			gnome-terminal -- joyp2.sh
			execpepper.sh;;

			3)
			gnome-terminal -- random.sh
			execpepper.sh;;

			4)
			gnome-terminal -- nav.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	3)
		OPC3=$(dialog --menu "Localization options: " 0 0 0 \
		1 "EKF localization" \
		2 "AMCL localization" --stdout)
		case $OPC3 in
			1)
			gnome-terminal -- launchekf.sh
			gnome-terminal -- launchplotter.sh
			execpepper.sh;;

			2)
			gnome-terminal -- launchamcl.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	4)
		OPC4=$(dialog --menu "SLAM options: " 0 0 0 \
		1 "Gmapping SLAM" \
		2 "RTABMAP SLAM" \
		3 "3D Octomap SLAM" --stdout)
		case $OPC4 in
			1)
			gnome-terminal -- gmapping.sh
			execpepper.sh;;

			2)
			gnome-terminal -- rtabmap.sh
			execpepper.sh;;

			3)
			gnome-terminal -- octo1.sh
			gnome-terminal -- octo2.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	5)
		OPC5=$(dialog --menu "OntoSLAM options: " 0 0 0 \
		1 "OntoSLAM 2D map listener" \
		2 "OntoSLAM 2D map talker" \
		3 "OntoSLAM 3D map listener" \
		4 "OntoSLAM 3D map talker" --stdout)
		case $OPC5 in
			1)
			gnome-terminal -- 2dlistener.sh
			execpepper.sh;;

			2)
			gnome-terminal -- 2dtalker.sh
			execpepper.sh;;

			3)
			gnome-terminal -- 3dlistener.sh
			execpepper.sh;;

			4)
			gnome-terminal -- 3dtalker.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	6)
		gnome-terminal -- perception.sh
		execpepper.sh;;

	7)
		OPC7=$(dialog --menu "Rviz options: " 0 0 0 \
		1 "Rviz with EKF topics" \
		2 "Rviz with AMCL topics" \
		3 "Rviz with Gmapping topics" \
		4 "Rviz with RTABMAP topics" \
		5 "Rviz with 3D Octomap topics" \
		6 "Rviz with Navigation topics" \
		7 "Rviz with OntoSLAM 2D topics" \
		8 "Rviz with OntoSLAM 3D topics" --stdout)
		case $OPC7 in
			1)
			gnome-terminal -- launchrvizekf.sh
			execpepper.sh;;

			2)
			gnome-terminal -- launchrvizamcl.sh
			execpepper.sh;;

			3)
			gnome-terminal -- launchrvizgmapping.sh
			execpepper.sh;;

			4)
			gnome-terminal -- launchrvizrtabmap.sh
			execpepper.sh;;

			5)
			gnome-terminal -- launchrvizocto.sh
			execpepper.sh;;

			6)
			gnome-terminal -- launchrviznav.sh
			execpepper.sh;;

			7)
			gnome-terminal -- launchrvizonto2d.sh
			execpepper.sh;;

			8)
			gnome-terminal -- launchrvizonto3d.sh
			execpepper.sh;;
		esac
		execpepper.sh;;

	8)
		OPC8=$(dialog --menu "Help options: " 0 0 0 \
		1 "Github link" \
		2 "Base tutorial link" \
		3 "Rutas" --stdout)
		case $OPC8 in
			1)
			gnome-terminal -- git.sh
			execpepper.sh;;

			2)
			gnome-terminal -- tuto.sh
			execpepper.sh;;

			3)
			gnome-terminal -- photo.sh
			execpepper.sh;;
		esac

esac
clear


