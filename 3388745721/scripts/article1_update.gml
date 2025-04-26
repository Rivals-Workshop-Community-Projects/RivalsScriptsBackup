//Position
if (spr_dir != player_id.spr_dir){
		QD_turn++;
		x += 20*spr_dir;
}
else {
	if (QD_number == 1){
		x = player_id.x - 70*spr_dir;	
		y = player_id.y - 80;
	}
	if (QD_number == 2){
		x = player_id.x - 90*spr_dir;	
		y = player_id.y - 50;
	}
}

if (QD_turn >= 5){
	spr_dir = player_id.spr_dir;
	QD_turn = 0;
}

//State 0 - Spawn
if (state == 0){
	image_index += 0.5;
	if (image_index >= 4.5) state = 1;
}

//State 1 - Idle
if (state == 1){
	sprite_index = sprite_get("QD_idle");
	image_index += 0.2;
}

//State 2 - Die/Parry
if (state == 2){
	sprite_index = sprite_get("QD_die"); 
	image_index += 0.25;
	if (image_index >= 3.5) shoulddie = true;	
}

//State 3 - Consumed
if (state == 3){
	sprite_index = sprite_get("QD_consume"); 
	image_index += 0.25;
	if (image_index >= 6.5) shoulddie = true;	
}

//Make time progress
state_timer++;

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}





