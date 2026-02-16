//Ai updating stuff

temp_level = 9;
ai_attack_time = 2;

var encouragement = 0;

if (holdup_timer > 0){ up_down = true; holdup_timer--; }
if (holdright_timer > 0){ right_down = true; holdright_timer--; }
if (holddown_timer > 0){ down_down = true; holddown_timer--; }
if (holdleft_timer > 0){ left_down = true; holdleft_timer--; }

//if (ai_target.y < y && ai_attack_timer > 2 && free == false){ special_down = true; up_pressed = true; }

if (SuperMecha == false && EmeraldAmount >= 4 && free == false && ai_going_into_attack == false){
	taunt_pressed = true;
}

if (SuperMecha == true){
	move_cooldown[AT_TAUNT] = 10;
	move_cooldown[AT_FTHROW] = 10;
}

if (move_cooldown[AT_TAUNT_2] > 100 && SuperMecha == false){
	taunt_pressed = true;
}

if (attack == AT_EXTRA_1){ joy_pad_idle = false; }

if (attack == AT_FSTRONG){
	strong_down = true;
}

if (attack == AT_FSPECIAL){
	//if (window < 4){ holddown_timer = 45; }
	if (ai_going_into_attack){ special_down = true; }
}
if (attack == AT_FSPECIAL_2){
	if (window < 4){ holddown_timer = 55; }
	if (ai_going_into_attack){ special_down = true; }
}

if (attack == AT_EXTRA_3){
	if (state_timer > 3){
		attack = AT_UTILT;
	}
	//attack_pressed = true;
	//up_pressed = true;
	//down_down = false;
	//holddown_timer = 0;
	//spr_dir = -1 * spr_dir;
}

if (attack == AT_DATTACK){
    if (has_hit){ attack_pressed = true; }
    if (ready_to_attack){ special_pressed = true; }
}

if (attack == AT_JAB && has_hit){ attack_pressed = true; left_down = false; right_down = false; }

if (attack == AT_FTILT && ready_to_attack){ jump_pressed = true; }

if (attack == AT_DSPECIAL_2 && free == true){ special_down = false; }

//if (attack == AT_UTILT && ai_target.y < y && has_hit && hitpause == false && state != PS_ATTACK_GROUND){ attack = AT_USPECIAL_2; window = 1; window_timer = 0; }

if (attack == AT_DSTRONG){
    if (ai_target.y < y && has_hit){
    special_pressed = true; up_pressed = true;
    }
}

if (attack == AT_USTRONG){
    if (has_hit && ready_to_attack == true){
    up_pressed = true; special_pressed = true;
    }
}

if (attack == AT_UTILT && has_hit && ready_to_attack == true){
    jump_pressed = true;
}

if ((ai_target.state == PS_DEAD || ai_target.state == PS_RESPAWN)){
    taunt_pressed = true;
}

if (ai_going_into_attack == true && (ai_target.state == PS_ATTACK_GROUND || ai_target.state == PS_ATTACK_AIR) ){
    if (timestop == false){
    shield_pressed = true;
    joy_pad_idle = false;
    }
}

if (ready_to_attack == true && ai_attack_timer == 20 && free == false && (ai_target.y > y+3)){ white_flash_timer = 10; down_down = true; }
//if (ai_attack_timer == 40){ vsp = 0; hsp = 0; white_flash_timer = 11; state = PS_IDLE_AIR; state_timer = 0; }

if (attack == AT_NSPECIAL){
    var randomdash = random_func(0, 4, true);
    special_down = true;
    if (window < 6){
    	nspecial_air_time++;
        if (ai_target.y > y+3){ special_down = false; }
        if ((get_gameplay_time() mod 20) == 0){
            //spawn_hit_fx(x, y, 304);
            if (randomdash == 0){ /**/ } 
            if (randomdash == 1){ left_pressed = true; }
            if (randomdash == 2){ right_pressed = true; }
            if (randomdash == 3){ jump_pressed = true; }
        }
    }
    
    var randomdirection = random_func(0, 4, true);
    //if (free == true && ai_target.x < x){ left_down = true; }
    //if (free == true && ai_target.x > x){ right_down = true; }
    if (window == 7){
    	joy_pad_idle = false;
    	if (ai_target.x > x){ left_down = true; } //Right of him
    	if (ai_target.x < x){ right_down = true; } //Left of him
    	
    	if (point_distance(x, y, ai_target.x, ai_target.y) > 390){ special_down = false; }

    	if (instance_exists(asset_get("camera_obj"))){
		//Little safety net so players don't fling themselves
		if (x-325 > get_instance_x(asset_get("camera_obj")) ){
			//hsp -= 2;
			//special_down = false;
		}
		if (x+325 < get_instance_x(asset_get("camera_obj")) ){
			//hsp += 2;
			//special_down = false;
		}
		if (y-315 > get_instance_y(asset_get("camera_obj")) ){
			//vsp -= 2;
			//special_down = false;
		}
		if (y+315 < get_instance_y(asset_get("camera_obj")) ){
			//vsp += 2;
			//special_down = false;
			}
		}
    	
    	if (randomdirection == 0){ /**/ } 
    	if (randomdirection == 1){ left_pressed = true; }
    	if (randomdirection == 2){ right_pressed = true; }
    	if (randomdirection == 3){ down_pressed = true; }
    	if (randomdirection == 4){ up_pressed = true; }
    }
    if (free == false){
    	if (ai_target.x > x && spr_dir == -1){ special_down = false; } //Right of him and looking left? Stop
    	if (ai_target.x < x && spr_dir == 1){ special_down = false; } //Left of him and looking right? Stop
    }
}

if (ai_recovering == true){
    //if !(place_meeting( x + 30 * spr_dir, y, asset_get("par_block"))){
    //if (attack == AT_USPECIAL && move_cooldown[AT_FSPECIAL] == 0){
    //attack = AT_FSPECIAL;
    //window = 1;
    //window_timer = 0;
    //move_cooldown[AT_FSPECIAL] = 90;
    //move_cooldown[AT_USPECIAL] = 10;
        //}
    //}
    
    /*
    var wall_distance;
	for (var i = 0; i < 10; i++;) {
	wall_distance = x + (190 * spr_dir);
	if ( place_meeting( wall_distance, y, asset_get("par_block")) ){
	    if (attack == AT_USPECIAL && window == 1 && move_cooldown[AT_DSPECIAL] == 0){
    attack = AT_DSPECIAL;
    window = 1;
    window_timer = 0;
    move_cooldown[AT_DSPECIAL] = 80;
    move_cooldown[AT_USPECIAL] = 20;
	        }
        }
    }
    
    var air_distance;
	for (var i = 0; i < 10; i++;) {
	air_distance = x + (190 * spr_dir);
	if !( place_meeting( air_distance, y, asset_get("par_block")) ){
	    if (attack == AT_USPECIAL && window == 1 && move_cooldown[AT_FSPECIAL] == 0){
    attack = AT_FSPECIAL;
    window = 1;
    window_timer = 0;
    move_cooldown[AT_FSPECIAL] = 80;
    move_cooldown[AT_USPECIAL] = 20;
	    	}
        }
    }
    */
    
    if (attack == AT_USPECIAL){
    	if (has_walljump == true){ jump_pressed = true; } 
    	if (move_cooldown[AT_USPECIAL] > 9){ special_down = true; down_pressed = true; } 
    	
	if (has_walljump == false){
		//if (move_cooldown[AT_USPECIAL] > 5){ attack = AT_DSPECIAL; } 
	}
	
    if (state == PS_PRATFALL && hsp == 0 && has_walljump){ jump_pressed = true; can_wall_jump = true; } 
    }
    
    if (attack == AT_DSPECIAL){
    	if (window == 6 && window_timer > 40){ jump_pressed = true; }
    	//if (move_cooldown[AT_DSPECIAL] > 5){ special_down = true; up_pressed = true; }
    }
}

if (get_training_cpu_action() == CPU_FIGHT) {
// insert custom attack code here, since it should only execute
// if the CPU Action is set to Fight
}

if (get_training_cpu_action() == CPU_STAND) {
ai_disabled = true;
}
// insert custom recovery code here, since the CPU should try to recover regardless of the CPU Action setting