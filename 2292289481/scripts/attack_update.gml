//B - Reversals
//if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    //trigger_b_reverse();
//}

if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    if ((left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) &&     
     (b_reversed == false)) {
      hsp *= -1;
      spr_dir *= -1;
      b_reversed = true;
} else if (state_timer == 6) {
    b_reversed = false;
  }
}

if attack == AT_BAIR {

	if  window == 2 && window_timer == 3 {
		spr_dir *= -1
	}

	if ((window == 4 || window == 5) && !free) {
			//destroy_hitboxes();
			//shake_camera (2, 4);
			spawn_base_dust(x+15*spr_dir, y, "dash_start", -spr_dir);
			spawn_base_dust(x-15*spr_dir, y, "dash_start", spr_dir);
			//sound_play(asset_get("sfx_blow_heavy1"), false, noone, .9);
			//window = 7;
			//window_timer = 0;
	}
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

if (attack == AT_DSTRONG) && (window == 2) && (window_timer == 16) {
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, .9);
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
	//can_fast_fall = false;
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
   // can_fast_fall = false;
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
		reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
		grabbedid = noone;
		//reset_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME);

			if (window_timer == 1 && !(on_minion)) {
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
	
	if(!free){
		if (window == 2) {
			sound_play(asset_get("sfx_land_heavy"));
			vsp = -7;
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 7.5);
			spawn_base_dust(x+5*spr_dir, y, "dash", -spr_dir);
			spawn_base_dust(x-5*spr_dir, y, "dash", spr_dir);
			cancel_pratfall = true;
			if cancel_pratfall && window_timer == 30 {
				window = 3;
				window_timer = 0;
			}
		}
	}

	if (window == 2 && cancel_pratfall) {
		
		if window_timer == 30 {
			window = 3;
			window_timer = 0;
		}
		
	}

	if (window == 1 && window_timer == 1) {
		cancel_pratfall = false;
	}

	if (window == 6 && window_timer == 1) {
				sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1);
				destroy_hitboxes();
			}
			if (window == 6 && window_timer == 16){
				window = 3;
				window_timer = 0;
				djumps = 0;
			}

}

if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)) {
        if (window == 2 && state_timer % 4 == 0) {
            instance_create(x, y, "obj_article3");
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


if (attack == AT_USPECIAL_GROUND){
	if (window == 1 && window_timer == 1) {
		sound_play(asset_get("sfx_leaves"));
		prevent_uspecial = true;
	}
}


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

if (attack == AT_USPECIAL_GROUND && window == 2){
    move_cooldown[AT_DSPECIAL] = 80;	
	move_cooldown[AT_USPECIAL_GROUND] = 80;	
}

if (attack == AT_DSTRONG) {

	if (window == 3 && window_timer == 1 && !hitpause) {
			shake_camera (3, 5);
			spawn_base_dust(x+88*spr_dir, y, "dash_start", -spr_dir);
			spawn_base_dust(x-50*spr_dir, y, "dash_start", spr_dir);
	}

}


#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

