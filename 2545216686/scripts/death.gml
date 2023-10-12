//death.gml

sound_stop(sfx_flight);

if (instance_exists(remoteRobot) || instance_exists(remoteRobot2)){
	if (instance_exists(remoteRobot)){
		with(remoteRobot){
			tailsDied = true;
		}
	}
}