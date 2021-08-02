//update

if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(14);
	}
}
if (!lu_ds){
	if (state == PS_DASH_STOP){
		lu_ds = true;
	}
}else{
	if (lu_ds_timer == lu_ds_max){
		lu_ds = false;
		lu_ds_timer = 0;
	}
	if (state != PS_DASH_STOP && state != PS_IDLE){
		lu_ds = false;
		lu_ds_timer = 0;
	}
}


if (state==PS_SPAWN && extra_col == 0){
	if (taunt_down&&down_down){//mirage
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}
	/*if (){//
		extra_col = 2
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}*/
	if (taunt_down&&right_down){//cookie
		extra_col = 5
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}
	if (taunt_down&&left_down){//lightmagic
		extra_col = 6
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}
	
	if (special_down&&right_down){//margret
		extra_col = 3
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}
	if (special_down&&left_down){//arry
		extra_col = 4
		white_flash_timer = 18;
		sound_play(sound_get("ting"));
		sound_play(sound_get("antici_2"));
		init_shader();
	}
	
	if (get_player_color( player ) == 18){
		if (jump_down&&right_down){//alt 1
			extra_col = 7
			white_flash_timer = 18;
			sound_play(sound_get("ting"));
			sound_play(sound_get("antici_4"));
			init_shader();
		}
		if (jump_down&&left_down){//alt 2
			extra_col = 8
			white_flash_timer = 18;
			sound_play(sound_get("ting"));
			sound_play(sound_get("antici_4"));
			init_shader();
		}
	}
}

/* outdated extra alts...
if (hypal == 0){
	if (taunt_down){
		if (down_down){
			hypal = 1;
		} else if (up_down){
			hypal = 2;
			sound_play(sound_get("ae_1"), false, 0);
			dash_speed = 7.5;
			initial_dash_time = 5;
			initial_dash_speed = 18;
			max_jump_hsp = 6.5;
			air_max_speed = 6;
			set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 12);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 12);
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
			dair_min_dur = 32;
			set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 0);
			set_hitbox_value(AT_DAIR, 3, HG_HIT_LOCKOUT, 0);
			set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 3);
			set_window_value(AT_EXTRA_3, 11, AG_WINDOW_LENGTH, 2);
			runeL = true;
			set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 0);
			set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
		}
	} else if (special_down) {
		if (down_down){
			hypal = 3;
		} else if (up_down){
			hypal = 4;
		}
	} else {
		hypal = -1;
	}
}
if (hypal == 2){
	//take_damage( player, -1, -1 );
	damage_scaling = 0.4;
	if (hitstun != 0){
		hitstun = 4;
		hitstun_full = 4;
	}
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if (attack != AT_USPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_NSPECIAL && attack != AT_JAB && attack != AT_TAUNT){
			window_timer++;
		}
	}
	if (state == PS_AIR_DODGE && state_timer == 3){
		sound_play(sound_get("dash"));
		hsp = hsp * 2;
		vsp = vsp * 2;
		clear_button_buffer( PC_SHIELD_PRESSED );
		invincible = true;
		invince_time = 1;
		set_state( PS_IDLE_AIR );
	}
	suppress_stage_music(0,1);
	if (state==22 && state_timer==0){
		sound_play(sound_get("dash"));
	}
	if (hyae == 0){
		if (state != PS_SPAWN && state != PS_ATTACK_GROUND){
			sound_stop(sound_get("ae_1"));
			sound_play(sound_get("ae_2"), true, 0, 0.8);
			hyae = 1;
		}
	}
	if (hyae == 1){
		if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){
			sound_stop(sound_get("ae_2"));
			sound_play(sound_get("ae_1"), false, 0, 1, 4);
			hyae = 2;
		}
	}
	if (hyae == 2){
		if (state != PS_ATTACK_GROUND){
			sound_stop(sound_get("ae_1"));
			sound_play(sound_get("ae_3"), true, 0, 0.8);
			hyae = 3;
		}
	}
	if (hyae == 3){
		if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){
			sound_stop(sound_get("ae_3"));
			sound_play(sound_get("ae_1"), false, 0, 1, 4);
			hyae = 0;
		}
	}
} outdated extra alts...
*/

if (get_player_color( player ) == 11){
	if (hylalala > 0 && hylalala <= 120){
		hylalala_s = round(ease_quadInOut( 0, 36, hylalala, 120 ))
	}
	if (hylalala > 120 && hylalala <= 240){
		hylalala_s = round(ease_quadInOut( 36, 0, hylalala-120, 120 ))
	}
	if (hylalala >= 240){
		hylalala = 0;
	}
	hylalala++;
		init_shader()
}

if (move_cooldown[AT_FSPECIAL]==1){
	sound_play(sound_get("ting"));
	white_flash_timer = 7;
	spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 2, 80, true ), y-(char_height/2)-48+random_func( 9, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 3, 80, true ), y-(char_height/2)-48+random_func( 10, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 4, 80, true ), y-(char_height/2)-48+random_func( 11, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 5, 80, true ), y-(char_height/2)-48+random_func( 12, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 6, 80, true ), y-(char_height/2)-48+random_func( 13, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 7, 80, true ), y-(char_height/2)-48+random_func( 14, 96, true ), particle2 );
}

if (get_player_color( player ) == 7){ //towerofheaven
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[35, 67, 49]
init_shader();
}
}
if (get_player_color( player ) == 15){ //lilliana
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[70, 60, 70]
init_shader();
}
}
if (extra_col == 6){ //towerofheaven
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[255, 214, 0]
init_shader();
}
}

// - - - abyss rune
if runesUpdated {
	if runeA { //DAIR lasts a bit longer, and ends quicker.
		set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 7); 
		dair_min_dur = 32;
	} else {
		reset_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH); 
		dair_min_dur = 18;
	}
}

//print(string(get_stage_data( SD_ID )))
if (phone_manual_init == 1){
	//if (get_stage_data( SD_ID ) == 416499||!phone_disable){
	//if (variable_instance_exists(id, "obj_stage_main")||!phone_disable){
		//print ("yes 1")
	if (variable_instance_exists(obj_stage_main, "phone_user_id")||!phone_disable){
		//print ("yes 2")
		phone_disable = false;
		user_event(14);
		phone_manual_init++;
	}else{
		phone_manual_init = -1
	}
	//}
}
if (phone_manual_init >= 1 && !phone_disable){
	//test
}
if (phone_manual_init == 0){
	phone_manual_init++;
}

// - - - kirbycopy

if swallowed {
swallowed = 0
var ability_spr = sprite_get("nspecial_kirby");
var ability_hurt = sprite_get("nspecial_kirby_hurt");
var ability_icon = sprite_get("lumina_ability_icon")
var nspsnd_beam = sound_get("beam_beam")
var nspsnd_blast = sound_get("beam_blast")
var nsp_bullet = sprite_get("bullet3_kirby")

var nsphs1 = sound_get("hit1");
var nsphs2 = sound_get("hit4");

with enemykirby {
newicon = ability_icon
//copy from nspecial basically

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);


//" nspc  " | nsp1s nsp1a  nsp1e   nsp2s   nsp2a   nsp2h   nsp2e
//" 0-1:2 " | 2-2:1 3-10:9 11-11:1 12-12:1 13-14:2 15-15:1 16-16:1

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);

//1 - uncharged
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, nspsnd_beam);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 48);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 9);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);

//2 - charged
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX, nspsnd_blast);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_3, 11); 

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8


var nsphl = 0;
var nspmultibkb = 4; //2
var nspmultiangle = 55; //55
var nspmultivfx = 109;

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 62);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 62);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 72);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 72);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -60);

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8

set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 75);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 83);
set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 4, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 81);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 81);
set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 57);
set_hitbox_value(AT_EXTRA_3, 5, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 5, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_EXTRA_3, 6, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_X, 77);
set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_Y, -9);
set_hitbox_value(AT_EXTRA_3, 6, HG_WIDTH, 77);
set_hitbox_value(AT_EXTRA_3, 6, HG_HEIGHT, 59);
set_hitbox_value(AT_EXTRA_3, 6, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 6, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_EXTRA_3, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 6, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_EXTRA_3, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 6, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 6, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 6, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 6, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 6, HG_EXTRA_CAMERA_SHAKE, -1);

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8

set_hitbox_value(AT_EXTRA_3, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 7, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 7, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_EXTRA_3, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_X, 76);
set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_Y, 8);
set_hitbox_value(AT_EXTRA_3, 7, HG_EXTRA_CAMERA_SHAKE, -1);


//this is the uh light smack hitbox
set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 8, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 8, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_EXTRA_3, 8, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_3, 8, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_3, 8, HG_HEIGHT, 77);
set_hitbox_value(AT_EXTRA_3, 8, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 8, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_3, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_3, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 8, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 8, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 8, HG_HIT_SFX, nsphs2);
set_hitbox_value(AT_EXTRA_3, 8, HG_HIT_LOCKOUT, nsphl);


//this is the final hitbox for uncharged
set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 9, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 9, HG_WINDOW_CREATION_FRAME, 38);
set_hitbox_value(AT_EXTRA_3, 9, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_X, 72);
set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_Y, 20);
set_hitbox_value(AT_EXTRA_3, 9, HG_WIDTH, 43);
set_hitbox_value(AT_EXTRA_3, 9, HG_HEIGHT, 51);
set_hitbox_value(AT_EXTRA_3, 9, HG_SHAPE, 0);

set_hitbox_value(AT_EXTRA_3, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_3, 9, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_EXTRA_3, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_3, 9, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 9, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 9, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_EXTRA_3, 9, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_EXTRA_3, 9, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_EXTRA_3, 9, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 10, HG_WINDOW, 8);
set_hitbox_value(AT_EXTRA_3, 10, HG_LIFETIME, 3);

set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_X, 48);
set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 10, HG_WIDTH, 55);
set_hitbox_value(AT_EXTRA_3, 10, HG_HEIGHT, 51);
set_hitbox_value(AT_EXTRA_3, 10, HG_SHAPE, 2);

set_hitbox_value(AT_EXTRA_3, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 10, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_3, 10, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 10, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_3, 10, HG_HIT_SFX, nsphs2);
set_hitbox_value(AT_EXTRA_3, 10, HG_HIT_LOCKOUT, nsphl);


//this is the charged bullet
set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 11, HG_WINDOW, 8);
set_hitbox_value(AT_EXTRA_3, 11, HG_LIFETIME, 61);//41

set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_X, 48);
set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_Y, -36);

set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_SPRITE, nsp_bullet);
set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_HSPEED, 5.5);//4.8

set_hitbox_value(AT_EXTRA_3, 11, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 11, HG_WIDTH, 74);
set_hitbox_value(AT_EXTRA_3, 11, HG_HEIGHT, 74);

set_hitbox_value(AT_EXTRA_3, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 11, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 11, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_EXTRA_3, 11, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_3, 11, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_3, 11, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 11, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_EXTRA_3, 11, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_EXTRA_3, 11, HG_PROJECTILE_PARRY_STUN, 1);


}
}//swallowed_end

if enemykirby != noone {
var ekid = enemykirby;
var nspsnd_charge = sound_get("beam_charge");
var nspsnd_charged = sound_get("beam_charged");
	with oPlayer {
		if (id == ekid){
			if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
				hsp = clamp(hsp, -3, 3);
				vsp = clamp(vsp, -6, 5);
				//" nspc  " | nsp1s nsp1a  nsp1e   nsp2s   nsp2a   nsp2h   nsp2e
				//" 0-1:2 " | 2-2:1 3-10:9 11-11:1 12-12:1 13-14:2 15-15:1 16-16:1
				if (window == 1 && window_timer == 2){
					set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
					nsp_charge = 0;
					sound_play(nspsnd_charge);
					nsp_snd_timer = 0;
				}
				if (window == 2){
					if (nsp_charge <= 24){
						nsp_charge++;
					}else{
						//visual...
						if (nsp_snd_timer == 0 || nsp_snd_timer%13 ==0){
							white_flash_timer = 7;
							sound_stop(nspsnd_charge);
							sound_stop(nspsnd_charged);
							sound_play(nspsnd_charged);
						}
						nsp_snd_timer++;
					}
				}
				if (window == 3 && special_down){
					window = 2;
					window_timer = 0;
				}
				if ((window == 2||window==3) && !special_down){
					white_flash_timer = 0;
					if (nsp_charge > 24){
						sound_stop(nspsnd_charge);
						set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 11);
						window = 7;
						window_timer = 0;
						nsp_charge = 0;
					}else{
						sound_stop(nspsnd_charge);
						window = 4;
						window_timer = 0;
					}
				}
				if (window == 8 && window_timer == 1){
					spawn_hit_fx( x+(48*spr_dir), y-30, 109 );
					if (free){
					vsp = -5;
					}
				}
			}
		}
	}
}





// - - - trummelalto codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 20;
    trummelcodecsprite1 = sprite_get("lumina_not_lumina");
    trummelcodecsprite2 = asset_get("empty_sprite");
    var page = 0;

/*
	
    trummelcodecspeaker[page] = #;
    trummelcodecexpression[page] = #;
    trummelcodecline[page,1] = "";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
*/
	//0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Hey, that's Lumina.";
    trummelcodecline[page,2] = "Another one of the";
    trummelcodecline[page,3] = "new-face humans up in";
    trummelcodecline[page,4] = "this Aetherian world.";
    page++;
	
	//1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "looks young but";
    trummelcodecline[page,2] = "shouldnt she be";
    trummelcodecline[page,3] = "tiny";
    trummelcodecline[page,4] = "";
    page++;
	
	//2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "I think we have like a";
    trummelcodecline[page,2] = "Master Hand-like force";
    trummelcodecline[page,3] = "that keeps our powers";
    trummelcodecline[page,4] = "equal or something.";
    page++;
	
	//3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
    trummelcodecline[page,1] = "Even if not, she still";
    trummelcodecline[page,2] = "has a few tricks up her";
    trummelcodecline[page,3] = "huge oversized sleeves.";
    trummelcodecline[page,4] = "";
    page++;
	
	//4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "Lumina's NSPECIAL is";
    trummelcodecline[page,2] = "quite similar to what";
    trummelcodecline[page,3] = "Beam Kirby has, even";
    trummelcodecline[page,4] = "the sound!";
    page++;
	
	//5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "She charges up her wand,";
    trummelcodecline[page,2] = "and depending on the";
    trummelcodecline[page,3] = "amount charged, releases";
    trummelcodecline[page,4] = "two kinds of attacks.";
    page++;
	
	//6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "Her FSPECIAL summons a";
    trummelcodecline[page,2] = "field of light, of which";
    trummelcodecline[page,3] = "when we get hit by her";
    trummelcodecline[page,4] = "attacks within the field...";
    page++;
	
	//7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "The field shatters, and";
    trummelcodecline[page,2] = "shoots out about eight";
    trummelcodecline[page,3] = "light bullets in a";
    trummelcodecline[page,4] = "crescent shape!";
    page++;
	
	//8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "Getting hit by them will,";
    trummelcodecline[page,2] = "of course, leave us open";
    trummelcodecline[page,3] = "for any follow-up";
    trummelcodecline[page,4] = "attacks. Watch out!";
    page++;
	
	//9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "She can also shatter the";
    trummelcodecline[page,2] = "light field herself by";
    trummelcodecline[page,3] = "shooting a charged";
    trummelcodecline[page,4] = "NSPECIAL to it, but...";
    page++;
	
	//10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "The bullets will be pretty";
    trummelcodecline[page,2] = "susceptible to parrying,";
    trummelcodecline[page,3] = "and it'll put Lumina into";
    trummelcodecline[page,4] = "Extended Parry Stun too.";
    page++;
	
	//11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Something important to";
    trummelcodecline[page,2] = "note about her USPECIAL,";
    trummelcodecline[page,3] = "which is a ledge-cancel-";
    trummelcodecline[page,4] = "-able teleport.";
    page++;
	
	//12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "That may sound worrying,";
    trummelcodecline[page,2] = "but when her teleport is";
    trummelcodecline[page,3] = "starting up and looks";
    trummelcodecline[page,4] = "like a dot of light...";
    page++;
	
	//13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "She is still vulnerable";
    trummelcodecline[page,2] = "to attacks! It's pretty";
    trummelcodecline[page,3] = "slow too, so interrupting";
    trummelcodecline[page,4] = "it will be simple.";
    page++;
	
	//14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "And final thing, her";
    trummelcodecline[page,2] = "DSPECIAL. Lumina has...";
    trummelcodecline[page,3] = "a Ganondorf kick.";
    trummelcodecline[page,4] = "A kick...?";
    page++;
	
	//15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "Now, that also means";
    trummelcodecline[page,2] = "she has that crazy spike";
    trummelcodecline[page,3] = "Ganondorf also has,";
    trummelcodecline[page,4] = "with a good recovery!";
    page++;
	
	//16
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "You better watch out,";
    trummelcodecline[page,2] = "or she'll probably try";
    trummelcodecline[page,3] = "to hit you with it,";
    trummelcodecline[page,4] = "a lot.";
    page++;
	
	//17
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
    trummelcodecline[page,1] = "Wow, I talked about her";
    trummelcodecline[page,2] = "stuff for a while, didn't";
    trummelcodecline[page,3] = "I? Without much humor,";
    trummelcodecline[page,4] = "even!";
    page++;
	
	//18
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "The writer must be";
    trummelcodecline[page,2] = "bad at keeping things";
    trummelcodecline[page,3] = "short!";
    trummelcodecline[page,4] = "";
    page++;
	
	//19
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "well they can't even keep";
    trummelcodecline[page,2] = "lumina short so";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
	//20
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
}


if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Lumina"
	diag_portrait=sprite_get("lumina_face");
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Follow my light! Yes, now get punched by me!",
    "My light isn't bright enough to hurt your eyes, but they sure can hurt you otherwise!",
    "May my light lead the days.",
    "May my light lead the night.",
    "May my light lead the heavens.",
    "May my light lead the abyss.",
    "May my light lead the end.",
    "May my light lead your way!",
    "Did you know this variant of me is not canon to where I originate from?",
    "Did you know actual randomness sometimes feels not random to consciousness?"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "1894194148" && diag != ""){ //A.R.
        diag = "Hey! ...You want to fight me? I-I'm not sure if I can beat you... Take it easy on me, Arelle!!";
        diag_index = 4;
    }
    /*if(otherUrl == "2108895293" && diag != ""){ //Lumina (mirror match)
        diag = "should use NRS";
        diag_index = 0;
    }*/
    if(otherUrl == "2226596831" && diag != ""){ //Reckless
        diag = "H-hey, keep your distance, stop swinging that remote around! You might hurt someone!";
        diag_index = 5;
    }
    if(otherUrl == "2229832619" && diag != ""){ //N/A
        diag = "They say 'Brighter the light, darker its shadow'... This axolotl, it's as if there's light much brighter than mine.";
        diag_index = 7;
    }
    if(otherUrl == "2343479756" && diag != ""){ //Natsumi
        diag = "...I sense sadness from you. What do you hide behind your cheery look?";
        diag_index = 7;
    }
    if(otherUrl == "2415092274" && diag != ""){ //Ao
        diag = "Pretty stars you have! And your magic, Windy, Spinny, ow, a bit dizzy...";
        diag_index = 4;
    }
	
    if(otherUrl == "19*19" && diag != ""){ //???
        diag = "...You've finally reached us, then. Nobody around me who can help... Looks like I'll have to put an end to this myself, once. And. For. All.";
        diag_index = 6;
    }
	
    if(otherUrl == "1877715009" && diag != ""){ //Hikaru
        diag = "A burning passionate light I feel from your power! I want to learn from your magic!";
        diag_index = 1;
    }
    if(otherUrl == "2540199978" && diag != ""){ //Flake
        diag = "Hello, would you like me to lead your way? Where would you like to- ...Whuh? You can beat me up without looking?? You want to FIGHT ME??? Oh no I'm sorr- OW";
        diag_index = 5;
    }
    if(otherUrl == "2478102112" && diag != ""){ //Anyi
        diag = "Kyah! That scared me a little, what're you doing throwing all these toys AT ME?";
        diag_index = 5;
    }
    if(otherUrl == "2504902865" && diag != ""){ //Beryl
        diag = "...You carry around a house? Or do you make them on-the-fly? Can I know, how comfy is it!?!?";
        diag_index = 2;
    }
    if(otherUrl == "2456124960" && diag != ""){ //Nate
        diag = "Nice crystal you have! I sense a much different magic from it, perhaps much more sophisticated than mine... Wait, you have TWO magic elements!?";
        diag_index = 2;
    }
    /*if(otherUrl == "2552853220" && diag != ""){ //Fumo Reimu
        diag = "Cute plushie just sitting there! ... ... I think there's something intimidating about this plushie.";
        diag_index = 0;
    }
    if(otherUrl == "2557400455" && diag != ""){ //Fumo Reisen
        diag = "Cute plushie just sitting there! ... ... I think there's something inherently wrong about this plushie.";
        diag_index = 0;
    }*/
    /*if(otherUrl == "2504123533" && diag != ""){ //Visselle
        diag = "Gummies! Can I eat them?????";
        diag_index = 0;
    }*/
    if(otherUrl == "2504402693" && diag != ""){ //Mall Knight
        diag = "What are you riding on? Is it like a bicycle? It looks so cool!! Can I ride it??";
        diag_index = 2;
    }
    if((otherUrl == "1871575669" || otherUrl == "1870831102" || otherUrl == "1895586961" || otherUrl == "2284823424") && diag != ""){ //Steves
        diag = "You can sleep only at night... and when I don't have a bright light cast on your face!!";
        diag_index = 3;
    }
    if(otherUrl == "2504071554" && diag != ""){ //
        diag = "Ever heard of the term 'Old World Blues'? It refers to those so obsessed with the past they can't see the present, much less the future, for what it is. ...You can move on, you know.";
        diag_index = 7;
    }
	/*
    if(otherUrl == "" && diag != ""){ //
        diag = "";
        diag_index = 0;
    }
	*/
	/*scrapped dialogues
        diag = "Is that Ice magic? I love the ice element! It reminds me of my homeland, too!";
	*/
    
//  NRS/3-Part dialogue
    if(otherUrl == "2108895293"){ with(pet_obj){ //Lumina (mirror match)
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hey, you're...",
                "Oh hey! It's... me...",
                "...Actually, considering where I come from, this isn't even any surprising."]
            }
            switch(diag_nrs_state) {
                case 0: //First Message
                    other.diag_index = 4;
                    break;
                case 1: //Second Message
                    other.diag_index = 4;
                    break;
                case 2: //Last Message
                    other.diag_index = 7;
                    break;
            }
    } }
    if(otherUrl == "2504123533"){ with(pet_obj){ //Visselle
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Gummies! Can I eat them?????",
                "From one phosphorescent sorcerer to another, my wares are more than just jellies, kiddo.", // thanks to reiga themselvs for dialogue writing!!!!!
                "I'll give up on eating them, then, but I love how they look! Can I see more of your stuff after this?"]
            }
            switch(diag_nrs_state) {
                case 0: //First Message
                    other.diag_index = 2;
                    break;
                case 1: //Second Message
                    other.diag_index = 0;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
    } }
    if(otherUrl == "2552853220"){ with(pet_obj){ //Fumo Reimu
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Cute plushie just sitting there! ...",
                "...",
                "... I think there's something inherently wrong about this plushie."]
            }
            switch(diag_nrs_state) {
                case 0: //First Message
                    other.diag_index = 2;
                    break;
                case 1: //Second Message
                    other.diag_index = 0;
                    break;
                case 2: //Last Message
                    other.diag_index = 4;
                    break;
            }
    } }
    if(otherUrl == "2557400455"){ with(pet_obj){ //Fumo Reisen
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Cute plushie just sitting there! ...",
                "...",
                "... Why do I hear boss music?"]
            }
            switch(diag_nrs_state) {
                case 0: //First Message
                    other.diag_index = 2;
                    break;
                case 1: //Second Message
                    other.diag_index = 0;
                    break;
                case 2: //Last Message
                    other.diag_index = 4;
                    break;
            }
    } }
}














