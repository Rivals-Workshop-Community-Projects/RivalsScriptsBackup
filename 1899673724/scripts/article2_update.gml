//article2_update.gml

//Spring

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying

*/

player_id.springy = y

if (replacedcount > maxarticles){
    shoulddie = true;
	spawn_hit_fx( x + 2, y + 2, 144 );
}

if (shoulddie == true){
	instance_destroy();
}

//Make time progress
springtimer++;
state_timer++;
springimagespeed++;

if (state == 0){
	if (state_timer == 2){
		spawn_hit_fx( x, y - 18, 144 );
	}
	if (springimagespeed == 3){
		image_index++;
		springimagespeed = 0
	}
	if (state_timer == 15){
		state = 1
		state_timer = 0
	}
}

if (state == 1){
	image_index = 0
}

if (springtimer == 49){
	spawn_hit_fx( x, y - 18, 144 );
}
if (springtimer == 50){
	instance_destroy();
}

//if (place_meeting(x, y - 10, player_id) && state == 1){
	//springtimer = 146
	//springimagespeed = 0
//}