if(state == PS_LANDING_LAG or state == PS_LAND){
	sound_stop(sound_get("song"));
}

if(state != PS_ATTACK_GROUND and (down_down or up_down)){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("chirp2"));
} else if (state != PS_ATTACK_GROUND){
	reset_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
}

//Intro
if(get_gameplay_time() < 300){
	if (introTimer2 < 22) {
	    introTimer2++;
	} else {
	    introTimer2 = 0;
	    introTimer++;
	}

	//this increments introTimer every few frames, depending on the number entered
	
	if (introTimer < 3) {
	    draw_indicator = false;
	} else {
	    draw_indicator = true;
	}
	//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
	if((introTimer == 1 or introTimer == 2 or introTimer == 3) and introTimer2 == 1){
		sound_play(sound_get("one2"))
	}
}
/*
//Runes
if runesUpdated {
	
	//Rune A - Longstilts
	if runeA {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 34);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8 + 34);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9 + 34);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12 + 34);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13 + 34);
		set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8 + 34);
		set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 22 + 34);
		set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12 + 34);
		set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 18 + 34);
		set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 8 + 34);
		set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 27 + 34);
		set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 27 + 34);
		set_window_value(AT_DSPECIAL, 12, AG_WINDOW_VSPEED, -20);
		dspecial_height = 205;
	} else {
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_DSPECIAL, 12, AG_WINDOW_VSPEED);
		dspecial_height = 145;
	}
	
	//Rune B - Carrot semispike
	if runeB {
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 300);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2.4);
	} else {
		reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
		reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
	}
	
	//Rune D - Ostro speed up
	if runeD {
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 9);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED, 7);
	} else {
		reset_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED);
	}
	
	//Rune E - Quickstilts
	if runeE {
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 7);
		set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 7);
		set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX_FRAME, 7);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 3);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 3);
		set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED, -3);
		set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED, -3);
		set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
	} else {
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME);
		reset_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME);
		reset_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME);
	}
	
	//Rune G - Utilt long spear
	if runeG {
		set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 13);
		set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 17);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -100);
		utilt_height = 92;
	} else {
		reset_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START);
		reset_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y);
		reset_hitbox_value(AT_UTILT, 1, HG_HEIGHT);
		reset_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y);
		utilt_height = 72;
	}
	
	//Rune H - Ustrong endlag reduced
	if runeH {
		set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 19);
	} else {
		reset_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
	}
	
	//Rune J - Ftilt boost
	if runeJ {
		set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 12);
	} else {
		reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED);
	}
	
	//Rune K - Gee Bill! How come your mom lets you have TWO double jumps?
	if runeK {
		max_djumps = 2;
	} else {
		max_djumps = 1;
	}
	
	//Rune L - Nspecial time halved
	if runeL {
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 40);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
	} else {
		reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES);
	}
	
	//Rune N - Quick Carpet
	if runeN {
		carpet_max = 150;
	} else {
		carpet_max = 400;
	}
	runesupdated = false;
}

//kirby ability
if "swallowed" in self && swallowed {
	swallowed = 0;
	var ability_spr = sprite_get("kirby");
	var ability_hurt = sprite_get("kirby_hurt");
	var ability_proj = sprite_get("jab_proj");
	var ability_sound_shoot = sound_get("small_shoot");
	var ability_sound_hit = sound_get("hit_smb2");
	var myicon = sprite_get("kirbyicon");
	with enemykirby{
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sound_shoot);
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 7);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 1.8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_TYPE, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_FRAME, 4);
		
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, -10);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 0);
		
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, ability_sound_shoot);
		
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_WHIFFLAG, 2);
		
		set_num_hitboxes(AT_EXTRA_3, 2);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3)
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 100);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sound_hit);
		
		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 5)
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.2)
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 60);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 9);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, ability_sound_hit);
	}
} */

//Break the Targets
if get_btt_data { //Get data for Break The Targets
	course_name = "Shy Guy Course";
	//Set the spawn properties
	respawn_point = [[80,68],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 0, 0, 0, 0, 0, 0 );  
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [
	        	//Targets
		        [10, 114, 20, 0, -5, [0, 0, 2.5, [[112,20],[112,35]], 0, 0, 0, 0], [0]],
		        [10, 74, 74, 0, -5, [1, 0, 3, [[74,74],[86,74]], 0, 0, 0, 0], [0]],
		        [10, 108, 30, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 45.5, 33.5, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 24, 44, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 34, 10, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 80, 50, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 80, 38, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 104, 66, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 125, 72, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        //Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//Plats
		    	[1, 76, 42, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 100, 70, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}

#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}