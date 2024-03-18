//update

user_event(9); //Leave this at the top of update.


if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if(hitpause || state = PS_HITSTUN) {
	shade_consumer = 0;
}

//Shade Consume
if shade_stock == 0 && shade_consumer == 0 {
    shade_timer--;
    bobTime++;
} else {
	bobTime = 0;
}

if shade_timer == 8 {
	sound_play(sound_get("hero_shade_ready"))
} else if shade_timer == 0 {
    shade_stock = 1;
    shade_timer = shade_duration;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	shade_a = 0.5;
} else {
	shade_a = 1;
}


if (vwings_timer < vwings_duration) vwings_timer++;

if (state == PS_DOUBLE_JUMP) {
	if (state_timer == 1) {
		vwings_a = 1;
		vwings_timer = 0;
	}
}

if (state = PS_AIR_DODGE || hitpause) {
	vwings_timer = vwings_duration;
}

if (state = PS_PARRY) {
	if (state_timer == 1) {
		sound_play(sound_get("hero_baldur"))
	}
}

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) {
	if (state_timer == 1) {
		sound_play(sound_get("hero_evade"))
	}
}

//hfx draw
with (hit_fx_obj) if (player_id == other) {
    if (hit_fx == other.fx_shadeb_big) {
        depth = player_id.depth+1;
    }
}




//cling slide
////////////////////// wall mechanics
if (state = PS_WALL_JUMP) {
	if (clinging) vsp += state_timer * wallslide_fric + wallslide_initial_speed;
	if (!free)
	{
	    used_walljump = [false, false];
	    clinging = false;
	}
}

//fade handler
			for (var i = 0; i < 10; i++){
			   if(after_image[i] != -1 && get_gameplay_time() % 2 == 0){
			       after_image[i].alpha--;
			       if(after_image[i].alpha == 0){
			           after_image[i] = -1;
			       }
			   } 
			}

			
//Mantis Lord Pogo Compat			
if get_gameplay_time() == 60 {
	if ("knight_ids" in obj_stage_main)
		array_push(obj_stage_main.knight_ids, id)
}

			
			
