//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}
if (attack == AT_JAB){
	if window == 1 && window_timer == 4{
		spawn_base_dust(x +20*spr_dir,y,"dash",1* -spr_dir)
	}
	if window == 4 && window_timer == 6{
		spawn_base_dust(x ,y,"dash",1* spr_dir)
		spawn_base_dust(x +20*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_JAB_2){
	if window == 1 && window_timer == 5{
		spawn_base_dust(x -10*spr_dir,y,"dash",1* spr_dir)
		spawn_base_dust(x +20*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_DATTACK){
	if window == 1 && window_timer == 9{
		spawn_base_dust(x -10*spr_dir,y,"dash",1* spr_dir)
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_DATTACK_2){
	if window == 1 && window_timer == 13{
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +20 ,y,"dash_start",1* spr_dir)
	}
}

if (attack == AT_FTILT){
	if window == 2 && window_timer == 3{
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +20 ,y,"dash_start",1* spr_dir)
	}
}
if (attack == AT_FTILT_2){
	if window == 2 && window_timer == 7{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.7,0.9);
		spawn_base_dust(x +20*spr_dir,y,"dash",1* -spr_dir)
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +90*spr_dir,y,"dash_start",1* -spr_dir)
	}
	if window == 3 && window_timer == 3 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}
if (attack == AT_UTILT){
	if window == 2 && window_timer == 2{
		spawn_base_dust(x -10*spr_dir,y,"dash",1* spr_dir)
		spawn_base_dust(x +20*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_UTILT_2){
	if window == 1 && window_timer == 9{
		sound_play (asset_get("sfx_oly_uspecial_twirl"),false,noone,0.7,0.9);
		spawn_base_dust(x +20*spr_dir,y,"dash",1* -spr_dir)
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
	}
	if window == 2 && window_timer == 3 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}
if (attack == AT_DTILT){
	if window == 1 && window_timer == 5{
		spawn_base_dust(x ,y,"dash_start",1* spr_dir)
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_DTILT_2){
	if window == 1 && window_timer == 7{
		spawn_base_dust(x ,y,"dash_start",1* spr_dir)
		spawn_base_dust(x +90*spr_dir,y,"dash_start",1* spr_dir)
		spawn_base_dust(x +140*spr_dir,y,"dash_start",1* spr_dir)
	}
	if window == 2 && window_timer == 3 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}

if (attack == AT_FSTRONG){
	if window == 3 && window_timer == 5{
		sound_play (asset_get("sfx_tow_anchor_land"),false,noone,0.8);
		sound_play (sound_get("nspecial_to_club_quick"),false,noone,1.0);
		spawn_base_dust(x ,y,"dash_start",1* spr_dir)
	}
}

if (attack == AT_FSTRONG_2){
	if window == 2 && window_timer == 13{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.8,0.9);
		sound_play (sound_get("nspecial_to_whip"),false,noone,1.0);
	}
	if window == 2 && window_timer == 15{
		sound_play (asset_get("sfx_tow_anchor_land"),false,noone,0.8,1.05);
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +90*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +140*spr_dir,y,"dash_start",1* -spr_dir)
	}
}
if (attack == AT_USTRONG){
	if (window == 3 or (window == 4 and window_timer < 10)) {
    		hud_offset = round(lerp(hud_offset, 200, .2))
    	}
	if window == 2 && window_timer == 8{
		spawn_base_dust(x +20*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x,y,"jump",1* spr_dir)
	}
	if window == 4 && window_timer == 11{
		spawn_base_dust(x,y,"land",1* spr_dir)
	}
}

if (attack == AT_USTRONG_2){
	if window == 2 && window_timer == 9{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.8,0.9);
		sound_play (sound_get("nspecial_to_whip"),false,noone,1.0);
		spawn_base_dust(x +10*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x -10*spr_dir,y,"dash_start",1* spr_dir)
	}
	if ((window == 2 and window_timer > 7) or window == 3 or window == 4 or (window == 5 and window_timer < 2)) {
    		hud_offset = round(lerp(hud_offset, 450, .2))
    	}
}
if (attack == AT_DSTRONG){
	if window == 2 && window_timer == 3{
		move_cooldown[AT_DSTRONG] = 40;
		spawn_base_dust(x +10*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x -10*spr_dir,y,"dash_start",1* spr_dir)
		silver_bullets--;
	}
}

if (attack == AT_FAIR_2){
	if window == 1 && window_timer == 10{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.7,0.9);
	}
	if window == 2 && window_timer == 3 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}

if (attack == AT_BAIR_2){
	if window == 2 && window_timer == 4{
		sound_play (asset_get("sfx_oly_uspecial_twirl"),false,noone,0.7,0.9);
	}
	if window == 4 && window_timer == 13 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med2"),false,noone,0.5);
	}
}
if (attack == AT_UAIR_2){
	if window == 1 && window_timer == 14{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.7,0.9);
	}
	if window == 2 && window_timer == 5 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}
if (attack == AT_DAIR_2){
	if window == 1 && window_timer == 13{
		sound_play (asset_get("sfx_oly_uspecial_twirl"),false,noone,0.7,0.9);
	}
	if window == 3 && window_timer == 2 && !hitpause{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7);
	}
}

if (attack == AT_TRICK){
	if window == 1 && window_timer == 1{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7,0.9);
	}
	
	if window == 1 && window_timer == 15{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.8,0.9);
		sound_play (sound_get("nspecial_to_whip"),false,noone,1.0);
	}
	if window == 1 && window_timer == 17{
		sound_play (asset_get("sfx_tow_anchor_land"),false,noone,0.8,1.05);
		spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +90*spr_dir,y,"dash_start",1* -spr_dir)
		spawn_base_dust(x +140*spr_dir,y,"dash_start",1* -spr_dir)
		
	}
}

if (attack == AT_TRICK_2){
	if window == 1 && window_timer == 5{
			sound_play (sound_get("nspecial_to_club"),false,noone,1.0);
	}

	if window == 1 && window_timer == 13{
		sound_play (asset_get("sfx_tow_anchor_land"),false,noone,0.8);
		spawn_base_dust(x ,y,"dash_start",1* spr_dir)
	}
}

if (attack == AT_TRICK_AIR){
	can_fast_fall = false;
	if window == 1 && window_timer == 1{
		sound_play (asset_get("sfx_shovel_hit_med1"),false,noone,0.7,0.9);
	}
	
	if window == 1 && window_timer == 12{
		sound_play (asset_get("sfx_oly_uspecial_kick"),false,noone,0.8,0.9);
		sound_play (sound_get("nspecial_to_whip"),false,noone,1.0);
	}
}

if (attack == AT_TRICK_2_AIR){
	can_fast_fall = false;
	can_wall_jump = true;
	if window == 1{
		dive_forgiveness = 0;
	}
	if window == 2 and dive_forgiveness >= dive_forgiveness_threshold and free{
		can_jump = true;
        can_shield = true;
        if((special_down && up_down)){
			set_attack(AT_USPECIAL);
		}
	} 
}


if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1){
        trick = 1;
    }
    if (window == 5 && window_timer == 1){
        trick = 0;
    }
}
if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 50;
	if window == 1 && window_timer == 12{
		silver_bullets--;
		sound_play (sound_get("gun_shot"))
	}
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 80;
	if (window == 1 && window_timer == 3 && instance_exists(madara) && madara.state < 2){
		madara.image_index = 9;
		madara.state = 4;
	} 
	if (window == 2 && window_timer == 12){
		silver_bullets -= 2;
		sound_play (sound_get("whistle_only"));
		madara = instance_create(x, y-30, "obj_article1");
	}
}

//Uspecial
if (attack == AT_USPECIAL){
	if window == 3 {
	if (window_timer == 1 && silver_bullets >= 3){
		silver_bullets -= 3;
		uspecial_cancel = true;
	}
	can_move = false;
	can_fast_fall = false;
	can_wall_jump = true;
	
	//Angle the sprite correctly.
	//This is not in update.gml because this needs access to the last frame of the window for smoothing to work.
	spr_angle = uspecial_angle + (180*(spr_dir == -1));
	}
	if(window == 4){
		if (uspecial_cancel == true){
			can_attack = true;
			if (attack_pressed){
				spr_angle = 0;
    			draw_x = 0;
    			draw_y = 0;
			}
		}
		can_wall_jump = true;
    }
    if (window == 1){
    	uspecial_cancel = false;
    	//Grounded doesn't enter cooldown
    	if(window_timer == 8 && free){
            move_cooldown[AT_USPECIAL] = 999
        }
    	//Regular USpecial
    	if (silver_bullets >= 3){
    		reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE)
    	}
    	//USpecial without bullets
    	else {
    		set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
    	}
    }
} 

if (attack == AT_QUICKSILVER){
	if (window == 1 && window_timer == get_window_value(AT_QUICKSILVER, 1, AG_WINDOW_LENGTH)){
		silver_bullets += 5;
		if (silver_bullets >= 20) silver_bullets = 20;
		take_damage( player, -1, 10 );
		move_cooldown[AT_DSPECIAL] = 0;
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_DSTRONG] = 0;
	}
}
if (attack == AT_TAUNT){
	if window == 2 && window_timer == 2{
		spawn_base_dust(x +10*spr_dir,y,"dash_start",1* spr_dir)
		spawn_base_dust(x,y,"jump",1* spr_dir)
	}
	
}

//Trick Mechanic

//Grounded
if (attack == AT_JAB || attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK
	|| attack == AT_JAB_2 || attack == AT_FTILT_2 || attack == AT_UTILT_2 || attack == AT_DTILT_2 || attack == AT_DATTACK_2){
	//Plays the visual and sound showing it was successful
	if ((window > (get_attack_value(attack, AG_NUM_WINDOWS)-1) || (get_window_value( attack, window, AG_WINDOW_CANCEL_TYPE) == 1)) 
	&& special_pressed && !shield_down && trick_attack == false && silver_bullets >= 3){
		trick_attack = true;
		var vfx = spawn_hit_fx( x, y, trick_spark );
		vfx.depth -= 1;
		sound_play(sound_get("nokonata_SB"),false,noone,0.7,0.9);
	}
	//The trick attack actually happens (it only happens at the last third of the endlag window, might be different on whiff???)
	if (trick_attack == true && (window == get_attack_value(attack, AG_NUM_WINDOWS) || (get_window_value( attack, window, AG_WINDOW_CANCEL_TYPE) == 1)) 
	&& window_timer >= (get_window_value( attack, window, AG_WINDOW_LENGTH)*0.75) ){
		attack_end();
		silver_bullets -= 3;
		if (left_down || left_pressed) spr_dir = -1;
		if (right_down || right_pressed) spr_dir = 1;
		if (trick == 0 && trick_attack == true && !free){
			trick = 1;
			attack = AT_TRICK;
			trick_attack = false;
		}
		if (trick == 1 && trick_attack == true && !free){
			trick = 0;
			attack = AT_TRICK_2;
			trick_attack = false;
		}
		hurtboxID.sprite_index = sprite_get("tattack_hurt");
		window = 0;
		window_timer = 0;
	}
}

//Aerial
if (attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_BAIR
	|| attack == AT_NAIR_2 || attack == AT_FAIR_2 || attack == AT_UAIR_2 || attack == AT_DAIR_2 || attack == AT_BAIR_2){
	//Plays the visual and sound showing it was successful
	if (window > (get_attack_value(attack, AG_NUM_WINDOWS)-1) && special_pressed && !shield_down && trick_attack == false && silver_bullets >= 3){
		trick_attack = true;
		vsp = -5;	//Hop when triggering it
		var vfx = spawn_hit_fx( x, y, trick_spark );
		vfx.depth -= 1;
		sound_play(sound_get("nokonata_SB"),false,noone,0.7,0.9);
	}
	//The trick attack actually happens (it only happens at the last third of the endlag window, might be different on whiff???)
	if (trick_attack == true && window == get_attack_value(attack, AG_NUM_WINDOWS) && 
	window_timer >= (get_window_value( attack, window, AG_WINDOW_LENGTH)*0.75) ){
		attack_end();
		silver_bullets -= 3;
		if (left_down || left_pressed) spr_dir = -1;
		if (right_down || right_pressed) spr_dir = 1;
		if (trick == 0 && trick_attack == true && free){
			trick = 1;
			attack = AT_TRICK_AIR;
			trick_attack = false;
		}
		if (trick == 1 && trick_attack == true && free){
			trick = 0;
			attack = AT_TRICK_2_AIR;
			trick_attack = false;
		}
		hurtboxID.sprite_index = sprite_get("tair_hurt");
		window = 0;
		window_timer = 0;
	}
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
