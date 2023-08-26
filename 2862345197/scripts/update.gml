// =============================================================================
#macro FACE_L_PUPIL         0
#macro FACE_L_EYELID_T      1
#macro FACE_L_EYELID_B      2
#macro FACE_R_PUPIL         3
#macro FACE_R_EYELID_T      4
#macro FACE_R_EYELID_B      5
#macro FACE_MOUTH           6
// =============================================================================

// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

var attacking = (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR);

// ===== MAKE SURE THE NODE HANDLER IS STILL THERE =====
if !instance_exists(node_handler) {
	node_handler = instance_create(0, 0, "obj_article2");
	if !node_handler_should_create {
		print("hey why did you delete my article >:(")
	}
	node_handler_should_create = false;
}
// =====================================================

if introTimer != 14 {
    if (introTimer2 < 4) {
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
}

if was_reloaded || object_index == oTestPlayer{
introTimer = 14;
}

//this increments introTimer every few frames, depending on the number entered
if (introTimer < 13) {
    draw_indicator = false;
	if state_timer = 1 {
	sound_play(sound_get("level_start"));
	}
	if state_timer = 32 {
	sound_play(sound_get("level_transition"));
	}
	if state_timer = 52 {
	sound_play(land_sound);
	}
} else {
    draw_indicator = true;
}
//---------------------------

if (hsp != 0) && (!free) && !(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
    if (slidesound_playing != 2){
	sound_play(walk_sound, true, 0, 1, 1);   
	slidesound_playing = 2;
	}
} else {
    if slidesound_playing > 0 {
    sound_stop(walk_sound);
    slidesound_playing--;
    }
}

if annoyingplaying = true{
suppress_stage_music(0, 0.05);
    if !(phone_attacking && attack = AT_TAUNT) && mistake < 101{
	    if initial_invince {
	    annoyingplaying = false;
		mistake = 101;
	    sound_stop(sound_get("AnnoyingRageGameMusic"));
	    }
    mistake++;
    }
}

// fix for a dattack dust fx bug
// credit to FloralQuaFloral
if(dattack_dan_why){
if "asset_new_dust" in self{
    with(asset_new_dust) {
        if(player == other.player && x != -300) {
            switch(dust_fx) {
                case 12:
                    x = -300; y = -300;
                break;
            }
        }
    }
}
     dattack_dan_why = false;
}

//print_debug("image index = " + string(image_index));
//print_debug("idle index = " + string(idle_index));

if (state == PS_IDLE || (attacking && attack == AT_JAB)) && (idle_index < 19.8){
idle_index = idle_index + 0.2 % 20;
} else {
idle_index = 0;
}
if (state == PS_WALK || (attacking && attack == AT_FTILT)) && (walk_index < 3.875){
walk_index +=0.125;
} else {
walk_index = 0;
}

if state != PS_PARRY {
parry_success = false;
}

if pshooter_limit > 0{
    if !phone_attacking {
    pshooter_limit = 0;
    }
}

if pshoot_carry = true {
    if !( (attack_pressed || attack_down) || (state == PS_IDLE || state == PS_IDLE_AIR || state == PS_WALK || state == PS_WALK_TURN || state == PS_LANDING_LAG || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) || (phone_attacking && (attack == AT_JAB || attack == AT_FTILT || attack == AT_NAIR))){
    pshoot_carry = false;
    }
}

if state = PS_DOUBLE_JUMP && state_timer = 0{
jump_index_speed = 0.29;
jump_index = 0;
}
if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) || (phone_attacking && attack == AT_NAIR){
	if jump_index < 6 {
	jump_index += jump_index_speed;
	}
}

if has_rune("J") {
if djumps < 1 {
djump_speed         = 13;
djump_sound         = sound_get("shelly_djump");
small_djump         = false;
} else {
djump_speed         = 10;
djump_sound         = sound_get("shelly_djump_arrow");
small_djump         = true;
}
}

if has_rune("L") {
air_friction = 0.02
    if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || (phone_attacking && attack == AT_NAIR) ) {
		    if !(left_down || right_down) {
		    air_friction = 0.5;
			}
	}
}

if !(state = PS_ROLL_FORWARD || state = PS_ROLL_BACKWARD || state = PS_TECH_FORWARD || state = PS_TECH_BACKWARD) {
rolltime = 0;
}

if state_cat = SC_AIR_NEUTRAL && taunt_down && down_down && move_cooldown[AT_TAUNT_2] = 0 && initial_invince = 0{
move_cooldown[AT_TAUNT_2] = 60;
set_attack(AT_TAUNT_2);
}

switch (state)
{
	case PS_IDLE:
	case PS_WALK:
	case PS_WALK_TURN:
	    if pshoot_carry = true && state_timer > 0{
	    set_attack(AT_JAB);
	    phone_attacking = true;
	    pshoot_carry = false;
	    }
	break;
	case PS_LANDING_LAG:
	    if prev_state == PS_ATTACK_AIR && attack = AT_NAIR && attack_down {
	    pshoot_carry = true;
	    }
	break;
	case PS_JUMPSQUAT:
	    jump_index_speed = 0.219;
        jump_index = 0;
		if has_rune("L") {
		clear_button_buffer(PC_JUMP_PRESSED);
		}
	break;
	case PS_FIRST_JUMP:
	case PS_DOUBLE_JUMP:
	case PS_IDLE_AIR:
		
	    if state_timer == 1 && !hitpause && state != PS_IDLE_AIR{
		    jumpchance = random_func( 0, 2, true );
		    jumpsfxnum = random_func( 0, 7, true ) + 1;
    		    if jumpchance == 1 && !isrobot{
    		    sound_play(sound_get("jump_" + string(jumpsfxnum)));
			    }
	    }
		if (pshoot_carry = true && state_timer > 0){
		set_attack(AT_NAIR);
		pshoot_carry = false;
		shootsfxnum = random_func( 0, 5, true ) + 1;
		sound_play(sound_get("pshooter_clack_" + string(shootsfxnum)));
		}
		if (prev_state = PS_ATTACK_GROUND && (attack == AT_FTILT || attack == AT_JAB)){
		set_attack(AT_NAIR);
		pshoot_carry = false;
		}
		
		if !attack_down && pshoot_carry = true {
		pshoot_carry = false;
		pshooter_limit = 0;
		pcool = 0;
		}
	break;
	case PS_WALL_JUMP:
	    if state_timer == 1 && !hitpause{
        sound_play(jump_sound);
		    jumpchance = random_func( 0, 2, true );
		    jumpsfxnum = random_func( 0, 7, true ) + 1;
    		    if jumpchance == 1 && !isrobot{
    		    sound_play(sound_get("jump_" + string(jumpsfxnum)));
			    }
        }
	break;
	case PS_WAVELAND:
	    if !free && state_timer == 1{
	    sound_stop(air_dodge_sound);
	    sound_stop(jump_sound);
	    }
	break;
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		if !hitpause {
		rolltime++;
		}
		if (rolltime > 8 && rolltime < 12) || (rolltime > 15 && rolltime < 18) {
			hsp = 0;
		}
	break;
	case PS_TECH_FORWARD:
	case PS_TECH_BACKWARD:
		if !hitpause {
		rolltime++;
		}
		if (rolltime > 11 && rolltime < 14) || (rolltime > 17 && rolltime < 20) {
			hsp = 0;
		}
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	    if attack = AT_JAB || attack = AT_FTILT || attack = AT_NAIR {
		    if pshooter_firing > 0{
			pshooter_firing--;
			}
			if pshooter_limit == 3 {
			pcool = 20;
			}
			if pcool > 0{
			pcool--;
			pshooter_limit = 0;
			set_num_hitboxes(AT_JAB, 0);
			set_num_hitboxes(AT_FTILT, 0);
			set_num_hitboxes(AT_NAIR, 0);
			} else {
			set_num_hitboxes(AT_JAB, 1);
			set_num_hitboxes(AT_FTILT, 1);
			set_num_hitboxes(AT_NAIR, 1);
			}
		}
}

//ALT STUFF
if gaeming = true {
user_event(1);
gaeming = false;
}

if get_player_color(player) = 23 || get_player_color(player) = 9 {
    if phone_attacking && attack = AT_TAUNT {
	small_sprites = 0;
	} else {
	small_sprites = 1;
	}
}

alt = get_player_color(player);

//RAINBOW CODE -------------------------------------------------------------------------
//stolen from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0
if get_player_color(player) = 24 {
	hue+=0.4;
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(96, 149, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(24,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(82, 89, 211);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(96, 149, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(82, 89, 211);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(39, 16, 153);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(253, 255, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 144, 15);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(218, 86, 16);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
if get_gameplay_time() % 2 == 0 {
	init_shader();
}

//FINAL SMASH
if fs_start > 0 {
	fs_start--;
	
	if fs_start <= 30 {
	    with oPlayer {
		    if !(other.player = player && other.attack = 49 && window < 4) {
				hitpause = true;
			    hitstop = 10;
			    hitstop_full = 10;
			    orig_knock = 1;
			    old_hsp = hsp;
			    old_vsp = vsp; //so many things to set dan pls
			}
		}
	}
	
	if fs_start = 1 {
		cutscene = 230;
		nested_anim = 0;
		nesthit_anim = 0;
		sound_play(sound_get("finalsmash_music"));
		
		init_face();
        
		sq_line = random_func( 0, 3, true );
		if sq_line == 0 {
			sound_play(sound_get("finalsmash_sq1a"), false, 0, 1.5);
		}
		else if sq_line == 1 {
			sound_play(sound_get("finalsmash_sq1b"), false, 0, 1.5);
		}
		else {
			sound_play(sound_get("finalsmash_sq1c"), false, 0, 1.5);
		}
		
	}
}

if cutscene > 0 {
	cutscene--;
	nested_anim += 0.2;
	nesthit_anim += 1;
	if nested_anim > 10 { nested_anim = 0; }
	if nested_anim > 6 { nesthit_anim = 0; }
	
	suppress_stage_music( 0.0, 0.1 );
	
	if cutscene = 62 {
		
		evil_face();
		notify_stage_squid();
		
		sound_play(sound_get("finalsmash_sq2"), false, 0, 1.5);
		take_damage( fs_target_number, player, 30 );
	}
	
	//freeze players, play damage sound (the hits are an illusion haha)
	if cutscene > 1 {
	    with oPlayer {
			hitpause = true;
			hitstop = 10;
			hitstop_full = 10;
			orig_knock = 1;
			old_hsp = hsp;
			old_vsp = vsp; //so many things to set dan pls
			
			if player = 2 {
				other.fsx = x;
				other.fsy = y;
			}
		}
		
		if cutscene % 4 = 0 {
			hitsfxnum = random_func( 0, 3, true ) + 1;
			sound_play(sound_get("pshooter_hit_" + string(hitsfxnum)) );
		}
	}
	
	//launch or kill
	if cutscene == 1 {
	    if (get_player_damage( fs_target_number )) < 100 {
	    	create_hitbox(49, 3, fsmash_target.x, fsmash_target.y);
		}
		else {
			create_deathbox(fsmash_target.x, fsmash_target.y, 100, 100, fs_target_number, true, 1, 20, 2);
		}
	}

}


//compat
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Shelly"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "weew",]
}

//cheapie support :)
if introTimer >= 14 && cheapdetected = 1 {
if annoyingplaying = false {
annoyingplaying = true;
sound_play(sound_get("AnnoyingRageGameMusic_bad"), true, 0, 1, 1);
}
create_hitbox(AT_EXTRA_1, 1, x, y - 10);
create_hitbox(AT_EXTRA_1, 1, cheapx, cheapy);
set_player_damage( player, 0 );
set_player_stocks( player, get_player_stocks( player )+1 );
}

with oPlayer {

if array_find_index(other.cheapies,url) || ("has_apple" in self && "has_shake" in self) || (get_char_info(player, INFO_STR_NAME) == "Mario Pissing (Classic)") || (get_char_info(player, INFO_STR_NAME) == "Dance Master Duane") || get_char_info( player, INFO_STR_AUTHOR) == "FelixBlobDev" {
    other.cheapdetected = 1;
	other.cheapx = x;
	other.cheapy = y;
  	}
}

#define init_part(_sprite, _x, _y, _angle)
var lwo = {
    sprite: _sprite,
    
    x: _x,
    y: _y,
    angle: _angle,
    
    target_x: _x,
    target_y: _y,
    target_angle: _angle,
    
    draw_offset_x: 0,
    draw_offset_y: 0,
    draw_offset_angle: 0,
    
    draw_target_offset_x: 0,
    draw_target_offset_y: 0,
    draw_target_offset_angle: 0
};
return lwo;

#define set_part(_ind, _x, _y, _angle)
var lwo = face[_ind];
lwo.target_x = _x;
lwo.target_y = _y;
lwo.target_angle = _angle;

#define init_face
if "face" not in self {
	mouth_subimg = 0;
	face_angle = 0;
	face_alpha = 1;
	face_target_alpha = face_alpha;
	face = [
	    init_part(sprite_get("squid_pupil"), -35, -40, 0), // l pupil
	    init_part(sprite_get("squid_eye"), -58, -80, 160), // l eyelid top
	    init_part(sprite_get("squid_eye"), -55, 0, 0), // l eyelid bottom
	
	    init_part(sprite_get("squid_pupil"), 65, -40, 0), // r pupil
	    init_part(sprite_get("squid_eye"), 58, -80, 200), // r eyelid top
	    init_part(sprite_get("squid_eye"), 55, 0, 0), // r eyelid bottom
	
	    init_part(sprite_get("squid_mouth_2"), 0, 35, 0) // mouth
	];
}
else {
	set_part(FACE_L_PUPIL, -35, -40, 0);
    set_part(FACE_L_EYELID_T, -58, -80, 160);
    set_part(FACE_L_EYELID_B, -55, 0, 0);
    
    set_part(FACE_R_PUPIL, 65, -40, 0);
    set_part(FACE_R_EYELID_T, 58, -80, 200);
    set_part(FACE_R_EYELID_B, 55, 0, 0);
    
    set_part(FACE_MOUTH, 0, 35, 0);
}

face_x = 210;
face_y = 280;
face_target_x = face_x;
face_target_y = face_y;

#define evil_face

set_part(FACE_L_PUPIL, -65, -40, 0);
set_part(FACE_L_EYELID_T, -50, -65, 155);
set_part(FACE_L_EYELID_B, -53, -20, 335);

set_part(FACE_R_PUPIL, 35, -40, 0);
set_part(FACE_R_EYELID_T, 50, -65, 205);
set_part(FACE_R_EYELID_B, 53, -20, 25);

set_part(FACE_MOUTH, 0, 40, 0);

face_target_x = 730;

#define notify_stage_squid
with obj_stage_article if num == 69 && "face_last_pos_change_time" in self {
	voice_type = "finalsmash";
	voice_occurring = true; // this prevents squid from starting a new event
	voice_end_time = current_time + 4200;
	face_alpha = 1;
	face_target_alpha = 1;
	face_x = view_get_xview() + other.face_target_x;
	face_y = view_get_yview() + other.face_target_y;
	face_target_x = face_x;
	face_target_y = face_y;
	
	expression = "evil";
	
	set_part(FACE_L_PUPIL, -50, -40, 0);
	set_part(FACE_L_EYELID_T, -50, -65, 155);
	set_part(FACE_L_EYELID_B, -53, -20, 335);
	
	set_part(FACE_R_PUPIL, 50, -40, 0);
	set_part(FACE_R_EYELID_T, 50, -65, 205);
	set_part(FACE_R_EYELID_B, 53, -20, 25);
	
	set_part(FACE_MOUTH, 0, 40, 0);
	face[FACE_MOUTH].sprite = other.face[FACE_MOUTH].sprite;
}
