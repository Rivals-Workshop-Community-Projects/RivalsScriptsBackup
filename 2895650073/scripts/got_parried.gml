//got parried

if (door_storage!=-4){
	door_storage.state = 2;
	door_storage.state_timer = 0;
	door_storage.state_end = 8;
}

if (attack==AT_JAB){
jabparry_queue = true;
}