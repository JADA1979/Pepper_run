#! /bin/bash

echo "Starting OntoSLAM 3D talker..."
gnome-terminal -- roscore.sh
sleep 5
cd pepper_sim_ws/src/slam-up/seminar_thesis/scripts/OntoSLAM
python talker_3d.py
