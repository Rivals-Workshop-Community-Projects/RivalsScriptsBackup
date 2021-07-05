//B - Reversals
if (attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_BAIR && window == 2 && window_timer == 4 {
spr_dir *= -1
}


if attack == AT_FAIR && window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_swipe_weak1"), false, noone, 1, 0.9);
}


if (attack == AT_DSTRONG) && (window == 2) && (window_timer == 1) {
		sound_play(asset_get("sfx_swipe_weak1"), false, noone, 1, 1.1);
}

if (attack == AT_DSPECIAL) && (window == 1) && (window_timer == 1) {
		sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1, 1);
}

if (attack == AT_FSTRONG) && (window == 2) && (window_timer == 1) {
		sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1, .8);
}

/*
if (attack == AT_USPECIAL){
	djumps = 0;
}
*/
/*
if (attack == AT_NSPECIAL){
	can_shield = true;
    if (window == 3 && window_timer == 1){
		sound_play(asset_get("mfx_coin"), false, noone, 1, 1.1);
    }
	if ((window == 2 && window_timer > 1) && (!special_down)){
		window = 6;
		window_timer = 0;
    }
	if (window == 3 && (!special_down)){
		window = 7;
		window_timer = 0;
    }
	if ((window == 6 && window_timer == 6) || (window == 7 && window_timer == 6)){
		window = 5;
		window_timer = 0;
    }
	move_cooldown[AT_NSPECIAL] = 300; 
}
*/

if attack == AT_NSPECIAL {
	can_fast_fall = false;
	 if (window == 1){
		grabbedid = noone;

			if (window_timer == 1) {
				sound_play(asset_get("sfx_leaves"));
			}

	 }

	if (window == 2 && has_hit_player){
		window = 4;
		window_timer = 0;
		hsp = 0;
		vsp = 0;
		grabbedid.x = x + spr_dir * 50; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
		grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
		grabbedid.wrap_time = 6000;
		grabbedid.state = PS_WRAPPED;	
		destroy_hitboxes();
	}

	if (window == 4){
		can_move = false;
		grabbedid.ungrab = 0;
		hsp = 0;
		vsp = 0;
		grabbedid.x = x + spr_dir * 50; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
		grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
		grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
		
		if (window == 4 && window_timer == 6){
			grabbedid.ungrab = 2;
			window = 5;
			window_timer = 0;
		}
	}
}


if (attack == AT_FSPECIAL){
	prevent_fspecial = true;
    can_fast_fall = false;
	can_wall_jump = true;
	/*
    if (shield_pressed && window == 2){
		set_state(PS_PRATFALL)
		spawn_hit_fx( x, y - 22, 66 );
		sound_play(asset_get("sfx_abyss_hex_hit"));
		vsp = -6;
		
		if (spr_dir == -1) {
				hsp = -3;
		}
		else {
		hsp = 3;
		}
		
	}
	*/
	
	 if (window == 1){
		grabbedid = noone;

			if (window_timer == 1) {
				sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
			}

	 }
	
	 if (window == 2 && has_hit_player){
			window = 4;
			window_timer = 0;
			hsp = 0;
			vsp = 0;
			grabbedid.x = x + spr_dir * 50; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
			grabbedid.y = y + 15; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
			grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
			grabbedid.wrap_time = 6000;
			grabbedid.state = PS_WRAPPED;	
			destroy_hitboxes();
    }
	
		 if (window == 4){
			can_move = false;
			grabbedid.ungrab = 0;
			hsp = 0;
			vsp = 0;
			grabbedid.x = x + spr_dir * 50; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
			grabbedid.y = y + 15; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
			grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
			
			if (window == 4 && window_timer == 20){
				grabbedid.ungrab = 2;
				window = 5;
				window_timer = 0;
				djumps = 0;
			
				if (spr_dir == 1) {
					vsp -= 8;
					hsp -= 5;
				}	
				else {
					vsp -= 8;
					hsp += 5;
				}
			}
    }
	if (window == 5) {
		prevent_uspecial = false;
	}
	
	if(!free){
		if (window == 2) {
			sound_play(asset_get("sfx_land_heavy"));
			vsp = -7;
		}
	}
}


if (attack == AT_TAUNT){
	if (window == 4 && taunt_repeat == true){
		window = 3;
	}
	else if (window == 3 && taunt_repeat == false)
	{
	    window = 4;
	    window_timer = 0;
	}
	
}

// USPECIAL spaghetti code


if (attack == AT_USPECIAL){
	if (window == 1 && window_timer == 1) {
		sound_play(asset_get("sfx_leaves"));
	}
}



/*
if (attack == AT_USPECIAL && window == 1 && window_timer == 1 && minion_active){
	sound_play(asset_get("sfx_abyss_portal_spawn"));
}

if (attack == AT_USPECIAL && window == 1 && window_timer == 1 && (!minion_active)){
	sound_play(asset_get("sfx_leaves"));
	window = 5;
	window_timer = 0;
}

if (attack == AT_USPECIAL && window == 2 && window_timer == 1 && minion_active){
	var hfx = spawn_hit_fx( x, y - 22, 66 );
	hfx.depth = depth - 1000;
	x = minion.x;
	y = minion.y + 10;
	var hfx = spawn_hit_fx( x, y - 22, 66 );
	hfx.depth = depth - 1000;
}

if (attack == AT_USPECIAL && window == 5 && window_timer == 20 && (!minion_active)){
	window = 4;
	window_timer = 0;
}
*/


//if (attack == AT_DSPECIAL || (AT_DAIR && window == 2 && window_timer == 1) || AT_USTRONG){
//   move_cooldown[AT_DSPECIAL] = 150;	
//	move_cooldown[AT_DAIR] = 150;	
//	move_cooldown[AT_USTRONG] = 150;	
//}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 80;		
	
	can_fast_fall = false;
	
	if (window == 2 && free && window_timer < 10){
		vsp = -6;
		
		if (window_timer == 1) {
			sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.2);
			spawn_hit_fx( x, y - 30, 116 );
		}
		
	}
	 
	if (joy_pad_idle == false && spr_dir == 1) { 
		
		if (joy_dir == 90) || (joy_dir == 270) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);	
		
		}
		
		if (joy_dir < 60) || (joy_dir > 300) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);	
		
		}
		
		if (joy_dir == clamp(joy_dir, 130, 230)) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, -5);	
		
		}
	}
	
	if (joy_pad_idle == false && spr_dir == -1) { 
		
		if (joy_dir == 90) || (joy_dir == 270) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);	
		
		}
		
		if  (joy_dir == clamp(joy_dir, 130, 230)) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);	
		
		}
		
		if (joy_dir < 60) || (joy_dir > 300) { 
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, -5);	
		
		}
	}
	
	if (joy_pad_idle) { 
				
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -13);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);

	}
	
}

if (attack == AT_DAIR) {
	hsp = (hsp * 0.95);
}

if (attack == AT_USPECIAL && window == 2){
    move_cooldown[AT_DSPECIAL] = 80;	
	move_cooldown[AT_USPECIAL] = 80;	
}

if (attack == AT_USPECIAL){
   prevent_uspecial = true;
}