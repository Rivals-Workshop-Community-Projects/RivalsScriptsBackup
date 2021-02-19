//uspecial things
if (attack == AT_USPECIAL){
	if (window == 2){
		can_wall_jump = true;
		if (free){
			if (window_timer == 23){ //this loops the window while you're in the air; had to do it this way because dan's game does not work. fix your game dan
				window_timer = 1;
			}
		}
		else{ //go into landing window 
			window = 3;
			window_timer = 1;
		}
	}
}

if (attack == AT_USPECIAL){

	if (window == 1){
		vsp = clamp(vsp, -99, 2); //limit fallspeed during startup
	}

	if (window == 1){
		if (window_timer == uspecial_startup - 1){
			spawn_hit_fx( x, y, 143 ); //explosion vfx
			vsp = uspecial_boost;
		}
	}
}

//nspecial

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1){
        if (!instance_exists(birdboy)){
            birdboy = instance_create(x + (spr_dir*55),y - 0,"obj_article1");
            spawn_hit_fx( x + (spr_dir*65), y - 5, 13 );
        }
    }
}



if attack == AT_TAUNT && taunt_down && window == 3 && window_timer == 1 {
	window = 1;
	window_timer = 0;
	if shield_down debug_toggle = !debug_toggle
}

if (attack == AT_DSPECIAL) {
	if window = 2 and window_timer = 5 and !has_hit_player {state = PS_IDLE}
	if window = 3 {
		grabbedid.x = x-spr_dir*50;
		grabbedid.y = y-12;
		grabbedid.visible = true
		if !special_down and window_timer > 15 {
			window_timer = 0 
			window = 4 
			create_hitbox( AT_DSPECIAL, 2, x, y )
		}
		if window_timer = 1 and grab_passes = 0{
			hsp += 8 * spr_dir;
		}
		if window_timer = 20{
			if grab_passes = 2{
				create_hitbox( AT_DSPECIAL, 3, x, y )	
			}
			else{
				window_timer = 0
				grab_passes ++;
			}
		} 
		if spr_dir {
			if right_down hsp = 5
			if left_down hsp = -3
		}
		else {
			if right_down hsp = 3
			if left_down hsp = -5
		}
		grabbedid.wrap_time = 60
		grabbedid.state = PS_WRAPPED
	}
	if window = 4 and (window_timer == 0) {
		grab_passes = 0
		grabbedid.grabbed = 0
		grabbedid.visible = true
		grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
		
	}
	if window = 4 and (window_timer == 1) {
		grabbedid = noone
	}
}
