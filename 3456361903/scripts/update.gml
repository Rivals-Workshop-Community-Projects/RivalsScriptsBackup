//update

//user_event(9); //Leave this at the top of update.
// nvm that sounds bad


//Image Mask
if(get_gameplay_time() > 100){
    if(!start_predraw){
    start_predraw = true;
    }
}


switch (state) {
    //fake parry anim
    case (PS_PARRY_START):
        parry_anim_i = 0;
    break;
    case (PS_PARRY): 
        parry_anim_i = state_timer * 6 / 30
        if (special_pressed) {
        	white_flash_timer = 16
        	spotlight = noone;
        	in_spotlight = false;
        }
    break;
    
    //superjump
    case (PS_CROUCH):
        if (state_timer >= sjump_init && state_timer < sjump_charge) {
            if (state_timer%8==1) strong_flashing = true;
        } else if (state_timer >= sjump_init+sjump_charge) {
            if (state_timer == sjump_init+sjump_charge) {
                white_flash_timer = 12;
                sound_play(sound_get("sma_crouchcharge"))
                jump_sound = jump_sound_superjump;
            }
            jump_speed = 19
            in_sjump = true;
        }break;
    case (PS_JUMPSQUAT):
        if (in_sjump) {
            if (state_timer == 1) sound_play(sound_get("jamb_jump"), false, noone, 0.8, 1.3)
        }break;
	case PS_ROLL_FORWARD: 
	case PS_ROLL_BACKWARD: 
	{
		if (state_timer == 3) {
			sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.4, 1.1);
			spawn_hit_fx(x, y-16, HFX_ELL_STEAM_HIT); 
			var log = create_hitbox(AT_EXTRA_2, 1, x, y-32); //make hitbox
		}
		else if (state_timer == 16) spawn_hit_fx(x-(spr_dir*24), y-24, HFX_ELL_STEAM_HIT); 
	}break;
	case PS_AIR_DODGE: 
	{
		if (state_timer == 2) {
			sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.4, 1.1);
			spawn_hit_fx(x, y-16, HFX_ELL_STEAM_HIT); 
			var log = create_hitbox(AT_EXTRA_2, 1, x, y-32); //make hitbox
		}
		else if (state_timer == 12) spawn_hit_fx(x, y-24, HFX_ELL_STEAM_HIT); 
	}break;

}


if (state != PS_CROUCH && state != PS_JUMPSQUAT && state != PS_FIRST_JUMP && state != PS_IDLE) {
    jump_speed = init_jump_speed
    jump_sound = jump_sound_default
    in_sjump = false;
}
if (state == PS_IDLE) {
    //superjump buffer
    if (state_timer > sjump_buffer) {
        jump_speed = init_jump_speed
        jump_sound = jump_sound_default
        in_sjump = false;
        
    }
}

if (state != PS_PRATFALL && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) glide_stored = false;
if (state == PS_PRATFALL && glide_stored) if (up_down) {
	state = PS_ATTACK_AIR
	attack = AT_USPECIAL
	window = 3;
}

if (just_bounced) {
	if (state_timer % 4 == 0) {
		randnote = vfx_n_b
		switch (random_func_2(9, 5, 1)) {
			case 0: randnote = vfx_n_b break;
			case 1: randnote = vfx_n_g break;
			case 2: randnote = vfx_n_y break;
			case 3: randnote = vfx_n_r break;
			case 4: randnote = vfx_n_w break;
		}
		spawn_hit_fx((x-(16*spr_dir)+(random_func(1, 32, 1))*spr_dir), y-32+(random_func(1, 64, 1)), randnote)
	}
	
	//spawn_hit_fx(x, y, vfx_notemorph_b)
	
	just_bounced_period--
	
	if (just_bounced_period <= 0) {
		just_bounced = false;
		just_bounced_period = just_bounced_period_max;
	}
}

if (in_spotlight) {
	idle_anim_speed = idle_anim_speed_spotlight
} else {
	idle_anim_speed = idle_anim_speed_init
}

if (bboost_counter == 3) {
	//get a "boogie boost"
	jump_sound = jump_sound_bboost
	djump_sound = djump_sound_bboost
	max_djumps = 2;
	
	if (state_timer % 8  == 0 ) spawn_hit_fx((x-(16*spr_dir)+(random_func(1, 32, 1))*spr_dir), y-32+(random_func(1, 64, 1)), vfx_n_gold)
	
	//air strongs
	//thank you giik
	if (state == PS_ATTACK_AIR && state_timer == 0) {
		if up_strong_pressed set_attack(AT_USTRONG);
		if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
		if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
		if down_strong_pressed set_attack(AT_DSTRONG);
	}
	
	if ((state == PS_FIRST_JUMP or state == PS_ATTACK_AIR) && state_timer == 2) jumped_off_ground_once = true;
	if (!free && state != PS_ATTACK_GROUND && state != PS_FIRST_JUMP && !just_bounced && jumped_off_ground_once) bboost_counter  =  0;
	if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_IDLE or state == PS_TECH_GROUND or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD) bboost_counter = 0;
	
	if  ((state == PS_DOUBLE_JUMP and state_timer == 1) or ((state == PS_ATTACK_AIR or PS_ATTACK_GROUND) and (attack == AT_NSPECIAL or attack == AT_UTILT or attack == AT_DSPECIAL) && window == 1 and window_timer == 1)) {
		count = spawn_hit_fx(x, y-8, vfx_count_fant)
		count.spr_dir = 1;
		count.depth = depth-1;
		count.grav = .05
	}
	
	////////////////// NORMALS
	// - Higher Damage
	// - Halved (rounded up) Endlag
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
	set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
	//
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 13);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 4);
	//
	set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 5);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
	//
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 11);
	set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 4);
	//
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
	set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
	//
	////////////////// STRONGS
	// - Higher Damage
	if (free) {
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
		//
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
		//
		set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
		set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
	}
	////////////////// DSPECIAL
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
} else {
	jump_sound = jump_sound_default
	djump_sound = djump_sound_default
	max_djumps = 1;
	jumped_off_ground_once = false;
	
	// reset the
	////////////////// NORMALS
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
	set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
	//
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 7);
	//
	set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
	//
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
	set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
	//
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
	set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
	//
	////////////////// STRONGS
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
	//
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
	//
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
	////////////////// DSPECIAL
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
}

if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP) {
	move_cooldown[AT_DSPECIAL] = 0;
	if (move_cooldown[AT_NSPECIAL] > 19999) move_cooldown[AT_NSPECIAL] = 0;
	if (move_cooldown[AT_FSPECIAL] > 1999) move_cooldown[AT_FSPECIAL] = 90;
    //dair_used = false;
    //sound_stop(asset_get("sfx_absa_current_pop"));
}

if (spot_cd_on == true) {
	spot_cd--;
	if (spot_cd <= 0 || state == PS_RESPAWN || state == PS_DEAD) {
		spot_cd = spot_cd_max
		spot_cd_on = false;
	}
}

if (state == PS_WAVELAND && bboost_counter == 3) {
	bboost_counter = 0;
}

//unmoving hud code by jh
if (state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD){
    if (window == 0){ //records position
        airdodge_pos_x = floor(x);
        airdodge_pos_y = floor(y);
    }
    if (window == 1){
        draw_indicator = false;
        if (window_timer == 0){ //spawn a hit effect or play a sound or smth here
            airdodge_pos_x = x;
            airdodge_pos_y = y;
        }
    }
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
	case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;

