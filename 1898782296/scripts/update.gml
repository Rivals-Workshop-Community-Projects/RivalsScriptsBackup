if(state == PS_WALL_JUMP && state_timer == 0){
	sound_play( sound_get("jump_yi1"), false, noone, 1, 1.25 );
}

if(jump_frame != -1){
	jump_frame += 0.4;
} 
if (jump_frame >= 8){
	jump_frame = 4;
}

//Super jump
if(!free){
	if(state == PS_CROUCH){
		superjump = true;
	}
	if(state != PS_CROUCH and state != PS_JUMPSQUAT and state != PS_FIRST_JUMP){
		superjump = false;
	}
	if(move_cooldown[AT_DSPECIAL] == 0){
		move_cooldown[AT_DSPECIAL_AIR] = 0;
	}
	if(autobomb == noone){
		autobomb_cooldown = false;
	}
	if((attack == AT_NSPECIAL)){
		if(state != PS_ATTACK_GROUND or state_cat != SC_HITSTUN){
			carpet_cooldown = true;
		} else {
			
			carpet_cooldown = false;
		}
		if(state_cat == SC_GROUND_NEUTRAL){
			carpet_cooldown = false;
		}
	} else {
		carpet_cooldown = false;
	}
}
else{
	if(state != PS_FIRST_JUMP){
		superjump = false;	
	}
	if(superjump = true){
		vsp -= 0.25;
	}
	move_cooldown[AT_DSPECIAL] = 2;
	on_autobomb = false;
}

//Dspecial
if((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and attack == AT_DSPECIAL and state_timer >=2){
	visible = false;
} else{
	if(state != PS_RESPAWN && (state_timer == 0 or attack == AT_DSPECIAL_AIR)){
		visible = true;	
	}
}

if(state == PS_JUMPSQUAT){
	with(obj_article_solid){
		if(player_id = other.id){
			sg_sprite = sprite_get("dspecial_shygone");
		}
	}
}

//print(superjump)

//Intro
if (introTimer2 < 2) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 21) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
if(introTimer == 1 and introTimer2 == 1){
	sound_play(voice_attack[1])
}
if(introTimer == 8 and introTimer2 == 1){
	sound_play(voice_attack_long[1])
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
}

//Trummel codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 17;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "This looks like a Shy Guy,";
    trummelcodecline[0,2] = "just some little mook";
    trummelcodecline[0,3] = "from the Mushroom";
	trummelcodecline[0,4] = "Kingdom.";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 4;

    trummelcodecline[1,1] = "But what's with all this";
    trummelcodecline[1,2] = "random junk on him? Who";
	trummelcodecline[1,3] = "would design a terrible";
	trummelcodecline[1,4] = "kit like this?";

    //Page 2
    trummelcodecspeaker[2] = 3;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "I, KING WART, WOULD!";
    trummelcodecline[2,2] = "Rrrribit!";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";
	
	//Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "wtf";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
	
	//Page 4
    trummelcodecspeaker[4] = 3;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "Silence your offensive";
    trummelcodecline[4,2] = "abbreviations, escargot!";
    trummelcodecline[4,3] = "";
	trummelcodecline[4,4] = "";
	
	//Page 5
    trummelcodecspeaker[5] = 3;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "I'll have you know my";
    trummelcodecline[5,2] = "soldier has the deadliest";
    trummelcodecline[5,3] = "arsenal the Subcon";
    trummelcodecline[5,4] = "empire could provide!";

	
	//Page 6
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "With how light he is,";
	trummelcodecline[6,2] = "he won't get much of an";
	trummelcodecline[6,3] = "opportunity to use them";
	trummelcodecline[6,4] = "before he's offstage.";
	
	//Page 7
    trummelcodecspeaker[7] = 3;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "That's where you're";
	trummelcodecline[7,2] = "wrong, cloud! I've";
	trummelcodecline[7,3] = "given him a propeller";
	trummelcodecline[7,4] = "to easily cut the sky!";
	
	//Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 2;

    trummelcodecline[8,1] = "...But he only gains";
	trummelcodecline[8,2] = "height if he has a jump.";
	trummelcodecline[8,3] = "Get rid of his jumps and";
	trummelcodecline[8,4] = "he can't go up far.";
	
	//Page 9
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 0;

    trummelcodecline[9,1] = "Clever, but you're";
	trummelcodecline[9,2] = "forgetting the Magic";
	trummelcodecline[9,3] = "Carpet, which lets him";
	trummelcodecline[9,4] = "land safely anywhere!";
	
	//Page 10
    trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 1;

    trummelcodecline[10,1] = "So we can just shove him";
	trummelcodecline[10,2] = "off the rug! We can even";
	trummelcodecline[10,3] = "use it to recover";
	trummelcodecline[10,4] = "ourselves!";
	
	//Page 11
    trummelcodecspeaker[11] = 3;
    trummelcodecexpression[11] = 0;

    trummelcodecline[11,1] = "GAH, but don't forget";
	trummelcodecline[11,2] = "about his determined";
	trummelcodecline[11,3] = "Pogo! He'll send YOU";
	trummelcodecline[11,4] = "falling instead!";
	
	//Page 12
    trummelcodecspeaker[12] = 1;
    trummelcodecexpression[12] = 3;

    trummelcodecline[12,1] = "It's so determined that";
	trummelcodecline[12,2] = "we can just airdodge";
	trummelcodecline[12,3] = "and he'll just zip on";
	trummelcodecline[12,4] = "by!";
	
	//Page 13
    trummelcodecspeaker[13] = 3;
    trummelcodecexpression[13] = 1;

    trummelcodecline[13,1] = "...";
	trummelcodecline[13,2] = "...";
	trummelcodecline[13,3] = "...";
	trummelcodecline[13,4] = "...rrrrribit...";
	
	//Page 14
    trummelcodecspeaker[14] = 1;
    trummelcodecexpression[14] = 1;

    trummelcodecline[14,1] = "Remember, no matter";
	trummelcodecline[14,2] = "what trashy tools our";
	trummelcodecline[14,3] = "foes have, there should";
	trummelcodecline[14,4] = "be some obvious counter!";
	
	//Page 15
    trummelcodecspeaker[15] = 3;
    trummelcodecexpression[15] = 0;

    trummelcodecline[15,1] = "...Same could be said";
	trummelcodecline[15,2] = "about your junk, you";
	trummelcodecline[15,3] = "cumulonimrod.";
	trummelcodecline[15,4] = "";
	
	//Page 16
    trummelcodecspeaker[16] = 1;
    trummelcodecexpression[16] = 4;

    trummelcodecline[16,1] = "EXCUSE ME?";
	trummelcodecline[16,2] = "";
	trummelcodecline[16,3] = "";
	trummelcodecline[16,4] = "";
	
	//Page 17
    trummelcodecspeaker[17] = 3;
    trummelcodecexpression[17] = 0;

    trummelcodecline[17,1] = "Now get back to work,";
	trummelcodecline[17,2] = "drone! Or I'll feed";
	trummelcodecline[17,3] = "you to the Albatoss!";
	trummelcodecline[17,4] = "Rrrrrribbit!";
}

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