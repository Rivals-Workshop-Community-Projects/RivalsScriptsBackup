//article chungus
state_timer++;
if(state == 0){
	hsp = spr_dir*12;
	if(state_timer == 1){
		y = chungy+12;
		scisbox = create_hitbox(AT_NSPECIAL, 1, x, y-44);
		hbox.no_absorb = true;
	}
}
scisbox.x = x;
scisbox.hitbox_timer = 0;
if (player_id.bababooey == true){
	spr_dir *= -1;
	scisbox.player = player_id.bababooey_two;
	player_id.bababooey = false;
}
if(x > room_width){
	instance_destroy();
	exit;
}
if(y > room_height){
	instance_destroy();
	exit;
}
image_index += 0.2