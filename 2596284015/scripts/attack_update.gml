// attack_update is a script called when you're doing an attack. It runs for every in-game frame.
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Billiard Shot

if (attack == AT_NSPECIAL){
	if (window == 1){ move_cooldown[AT_NSPECIAL] = 250; }
	if (window == 3 && window_timer == 1){
		cueball_id = create_hitbox(AT_NSPECIAL, 1, x+60 * spr_dir, y-45);
		cueball_id.hitbox_timer = 0;
		if (joy_pad_idle == false){
		cueball_id.hsp = lengthdir_x(16, joy_dir);
		cueball_id.vsp = lengthdir_y(16, joy_dir);
		} else {
		cueball_id.hsp = lengthdir_x(-16 * spr_dir, 180);
		cueball_id.vsp = lengthdir_y(2, 90);
		}
	}
	if (window <= 2){ ballspeed = 15 * spr_dir; }
	if (window == 1 && window_timer == 20){
    sound_play(nspecial_voice);
	}
}

if (attack == AT_FSPECIAL){
	if (window == 1){
		move_cooldown[AT_FSPECIAL] = 150;
	if (window_timer < 4){ rolled_id = noone; }	
	}
}

if (attack == AT_DSPECIAL){
	if (window == 1){
	move_cooldown[AT_DSPECIAL] = 150;
	if (window_timer < 4){ rolled_id = noone; }
	}
}

if (attack == AT_DSTRONG){
	force_depth = 1;
	depth = 10;
}

//DOWN AIR GROUND BOUNCE
if (attack == AT_DAIR) && (dairbounce == true) && ((window == 4)){
    spawn_base_dust(x, y, "jump", 0);
    sound_play(asset_get("sfx_blow_heavy1")); //PLAY STRONG HIT SOUND
    hitstop = 5; //
    hitstop_full = 5; //
    hitpause = true; //THERE IS HITPAUSE
    window = 4; //GOES INTO THE BOUNCING WINDOW
    window_timer = 1; //FIRST FRAME OF BOUNCING WINDOW
    dairbounce = false; //NO MORE BOUNCE
    //shake_camera (5, 2);
}

if (attack == AT_DAIR){
	can_fast_fall = false;
    if window == 1 {dairbounce = true};
    if window > 1{
    	can_move = false;
    }
    if (window == 2 || window == 3 || (window == 1 && window_timer > 10)) && free == false{
    	window = 3;
    	window_timer = 1;
    }
    if (window == 5 || window == 6){
    	if (hitpause == false){
    	if (joy_pad_idle == false){
    	hsp = lengthdir_x(5.1, joy_dir);
    		}
    	}
    }
}

if (attack == AT_DAIR){
	can_wall_jump = true;
}

/*
if (attack == AT_DATTACK){
	if (has_hit_player == true){
		if (window == 3 && window_timer >= 2 && window_timer <= 5 && joy_pad_idle == false){
			set_state(PS_ROLL_FORWARD);
		}
	}
}

//NEUTRAL SPECIAL
/*
if up_down == true{
	dir_up = 1;
}
if down_down == true{
	dir_down = 1;
}

if up_down == false{
	dir_up = 0;
}
if down_down == false{
	dir_down = 0;
}


joy_dir = dir_up - dir_down;

if attack == AT_NSPECIAL && window == 10{
	if joy_dir == 0{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 14);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
	}
	if joy_dir == 1{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
	}
	if joy_dir == -1{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 6);
	}
}
*/


/* Billiard charging
if (attack == AT_NSPECIAL) {
    if !free {
        if (window == 1 && !special_down) {
            window = 8;
            window_timer = 0;
        }

        if (window == 7 or window >= 10) {
            set_state( PS_IDLE );
        }
    }
    else {
        if (window == 11 && !special_down) {
            window = 16;
            window_timer = 0;
        }
        
        if (window == 15 or window <= 10) {
            set_state( PS_IDLE_AIR );
        }
    }
}
*/


//DAir cancelling

/*if attack == AT_DAIR{
	if window == 3{
		can_jump = true;
		can_shield = true;
	}
	else{
		can_jump = false;
		can_shield = false;
	}
}*/


#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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