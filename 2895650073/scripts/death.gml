// called when the character gets KO'd

if (door_storage!=-4){
	door_storage.state = 2;
	door_storage.state_timer = 0;
	door_storage.state_end = 8;
	door_storage.replaced = true;
}