if(itempoolUpdated == false){
	updateItempool();
	itempoolUpdated = true;
}

//stickmin
switch(get_player_stocks(player)){
	case 1:
		fail_text = "THIS RUN: 3 WAVES";
		break;
	case 2:
		fail_text = "THIS RUN: 2 WAVES";
		break;
	case 3:
		fail_text = "THIS RUN: 1 WAVE";
		break;
}

if get_player_color(player) == 10 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(58, 210, 228);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(10,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1);
	init_shader();
}

if get_player_color(player) == 10 && dewIt {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(254, 33, 139);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(10,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	color_rgb=make_color_rgb(140, 11, 93);
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(10,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	init_shader();
}

if(GAUGE_EXP_CURRENT >= GAUGE_EXP_MAX){
	levelUp();
}

//Trummel + Alto Support
if (trummelcodecneeded){
    trummelcodec = 17;
    trummelcodecmax = 8;
    trummelcodecsprite1 = sprite_get("taxiPINGED");
    trummelcodecsprite2 = sprite_get("taxiPINGED");
    var page = 0;


    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "alto look that";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = "that is a suitcase";
    trummelcodecline[page,4] = " ";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Some lost luggage?";
    trummelcodecline[page,2] = "We should turn it in";
    trummelcodecline[page,3] = "to the lost and found.";
    trummelcodecline[page,4] = " ";
    page++; 
	
	//Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "@everyone";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
	
	//Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "oh no what is that";
    trummelcodecline[page,2] = "awful noise it just made";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
	
	//Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Whatever's in there...";
    trummelcodecline[page,2] = "Let's send it packing!";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
	
	//Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "alto no";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
	
	//Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "This LUG looks tough";
    trummelcodecline[page,2] = "to HANDLE! I'm WHEELIE";
    trummelcodecline[page,3] = "excited to check";
    trummelcodecline[page,4] = "what this bag can do!";
    page++;
	
	//Page 6
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "aloe pls";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
	
	//Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "treadmill pls";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;
}

//kirby
if (swallowed == 1) {
    swallowed = 0;
    var ability_spr = sprite_get("suitkirb");
    var ability_hurt = sprite_get("suitkirb_hurt");
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_may_whip2"));
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 18);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 11);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

		set_num_hitboxes(AT_EXTRA_3, 4);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -70);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -24);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 68);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 52);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 1.35);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_CAMERA_SHAKE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 305)

		set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 6);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -48);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 70);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 10);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 1.35);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_EXTRA_3, 3, HG_EXTRA_CAMERA_SHAKE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 305)
    }
}

//aldor ranno jump
if(state == PS_CROUCH && item[17, 3] == 1){
	hyperJump = true;
}

if(hyperJump){
	if(state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP){
		jump_speed = 16;
	} else {
		jump_speed = 11.5;
		hyperJump = false;
	}
}

/*
//pandora
if(item[15, 3] == 1 && state == PS_CROUCH && crouchCounter < 100){
	crouchCounter++;
	
	if (get_gameplay_time() % 2 == 0){
		spawn_hit_fx( x + 40 - random_func(1, 80, true), y - random_func(2, 100, true) , smokeKT1 );
	}
}

if (crouchCounter > 90 && crouchCounter < 100){
	spawn_hit_fx( x , y - 30 , 13 );
	sound_play(asset_get("sfx_shovel_hit_med2"));
	shake_camera( 4, 2 );
	crouchCounter = 100;
}

if(crouchCounter >= 45 && !hitpause){
	if (get_gameplay_time() % 4 == 1){
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smokeKT2 );
	}
}

if(crouchCounter >= 100 && !hitpause){
	if (get_gameplay_time() % 4 == 0) {
		spawn_hit_fx( x - ((25 - random_func(1, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smokeKT3 );
	}
}
*/

if(!free){
	carbounceRestoredJumps = false;
}

//clamp max speed when jumping out of fspecial - later

if(state == PS_DOUBLE_JUMP && state_timer == 0 && prev_state == PS_ATTACK_AIR && attack == AT_FSPECIAL){
	hsp = clamp(hsp, 0, (spr_dir * 8));
}


if(state == PS_LANDING_LAG){
	char_height = 44;
	leafBlower = false;
}

if(state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
}

/*
//pandora unlock
if(suitcaseLevel >= 8 && item[15, 3] == 0 && item[15, 7] == false){
	achieveUnlock(15);
}
*/

//f key unlock
if(practice && get_gameplay_time() > 10 && keyboard_string == "f" && item[26, 3] == 0 && item[26, 7] == false){
	achieveUnlock(26);
	//drawDan = true;
}
/* //forget if this or the next was bugfix
if(((state_cat == SC_AIR_NEUTRAL && prev_state == PS_PRATLAND) || (state_cat == SC_AIR_COMMITTED && prev_prev_state = PS_PRATLAND)) && item[17, 3] == 0 && item[17, 7] == false){
	achieveUnlock(17);
}
*/

if((state_cat == SC_AIR_NEUTRAL && prev_state == PS_PRATLAND) && item[17, 3] == 0 && item[17, 7] == false){
	achieveUnlock(17);
}

if(octaneTryUnlock && has_rune("I")){
	if(octaneUnlockTimer > 0){
		octaneUnlockTimer--;
		if(state == PS_DOUBLE_JUMP){
			achieveUnlock(22);
			octaneTryUnlock = false;
		}
	} else {
		octaneTryUnlock = false;
		octaneUnlockTimer = 0;
	}
}

if(state_cat == SC_AIR_NEUTRAL && prev_state == PS_ATTACK_GROUND && attack == AT_TAUNT && item[3, 3] == 1 && item[3, 7] == false && suitcaseLevel >= 9 && sandStage == 0){
	achieveUnlock(3);
	sandStage++;
	item[3, 0] = "CREATION'S CURSE";
	item[3, 1] = "Wait, you were serious?";
	item[3, 2] = sprite_get("item_creatorsmark1");
	item[3, 6] = "101% SANDBERT DAIR";
}

/*
//pandora cheevo VS katie/sai
if(PS_SPAWN){
	with (oPlayer) {
		if (player != other.player) {  
			other.name = get_char_info(player, INFO_STR_NAME);
		}
	}
	if ((string_count("katie", string_lower(name)) > 0 || string_count("sai", string_lower(name))) > 0 && item[15, 3] == 0 && item[15, 7] == false ) {
		if(state_timer == 1){
			pandoraIntro = true;
		} else if (state_timer == 88){
			achieveUnlock(15);
		}
	}
}
*/


//intro stuff
if(get_player_color(player) == 16){
	arizonaIntro = true;
} else if(get_player_color(player) == 14){
	gameboyIntro = true;
} else if(get_player_color(player) == 13){
	abyssIntro = true;
} else if(get_player_color(player) == 6){
	halloweenIntro = true;
} else if (get_player_color(player) == 11){
	goldenIntro = true;
} else if (get_player_color(player) == 12){
	beachIntro = true;
} else if (get_player_color(player) == 15){
	geneIntro = true;
}
if(get_player_color(player) == 11 && get_gameplay_time() % 21 == 0 && !hitpause && state != PS_RESPAWN){
	var goldFX = spawn_hit_fx( x - ((22 - random_func(1, 50, true)) * spr_dir) , y - random_func(12, 58, true) , sparkle );
	goldFX.depth = -100;
}

if(abyssIntro){
	if (introTimer2 < 3) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	//this increments introTimer every few frames, depending on the number entered

	if (introTimer < 13) {
		draw_indicator = false;
	}
	//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
	if (state == PS_SPAWN && state_timer == 3){		//abyss 3
		sound_play (asset_get ("sfx_abyss_portal_spawn"));
	}
/*
} else if(pandoraIntro){
	if (introTimer2 < 4) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	
	if (introTimer < 13) {
		draw_indicator = false;
	}
	if (state == PS_SPAWN){
		if (state_timer == 20){
			sound_play (asset_get("sfx_shovel_hit_med1"));
		}
		if (state_timer == 50){
			sound_play (asset_get ("sfx_ell_arc_taunt_start"));
		}
	}
*/
} else if(gameboyIntro){
	if (introTimer2 < 3) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	
	if (introTimer < 13) {
		draw_indicator = false;
	}
	if (state == PS_SPAWN){
	
		if (state_timer == 35){		//35 anti-cw, 16 normal
			sound_play (asset_get("sfx_may_arc_coineat"));
			//sound_play (sound_get("gb"));	//sfx_may_arc_coineat anti-cw
		}
	}
} else if(goldenIntro){
	if (introTimer2 < 5) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	
	if (state == PS_SPAWN){
		if (state_timer == 82){
			sound_play (asset_get ("sfx_kragg_rock_pull"));
			set_victory_portrait(sprite_get("portraitGold"));
			set_victory_sidebar(sprite_get("result_smallGold"));
		}
	}
} else if(halloweenIntro){
	if (introTimer2 < 5) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	
	if (state == PS_SPAWN){
		if (state_timer == 32){
			sound_play (asset_get ("sfx_forsburn_cape_swipe"));
			set_victory_portrait(sprite_get("portraitHalloween"));
			set_victory_sidebar(sprite_get("result_smallHalloween"));
		}
	}
} else {
	if (introTimer2 < 5) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
	//this increments introTimer every few frames, depending on the number entered

	if (state == PS_SPAWN && state_timer == 32){
		sound_play (asset_get ("sfx_forsburn_cape_swipe"));
	}
}

if(state == PS_SPAWN && state_timer == 8){
	keyboard_string = "";
	if has_rune("I"){
		item[0, 7] = true;
		item[10, 7] = true;
		item[25, 7] = true;
	}
	if has_rune("F"){
		item[26, 7] = true;
	}
		
	switch(get_player_color(player)){
		case 9:
			achTrophy = hit_fx_create(sprite_get("achievement1"), 60);
			
			set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 44);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 11);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));

			set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
			break;
		case 11:
			introTimer = -4;
			set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 18);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 12);
				
			set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 64);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
				
			set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
			set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pull"));
			break;
	}
}

//controller unlock
if(get_gameplay_time() <= 180){
	setNextItem();
	if(attack_pressed || special_pressed || jump_pressed || shield_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed || taunt_pressed || up_pressed || down_pressed || left_pressed || right_pressed || up_stick_pressed || down_stick_pressed || left_stick_pressed || right_stick_pressed){
		inputTally++;
	}
	if(item[18, 3] == 0 && item[18, 7] == false && inputTally >= 50){
		achieveUnlock(18);
	}
}

//joycon unlock
if(item[23, 3] == 0 && item[23, 7] == false){
	//keyboard check
	if((state == PS_DASH_START)){
		if(state_timer == 0){
			driftCounter = 0;
		} else {
			if((hsp / spr_dir) < -4){
				driftCounter++;
			}
		}
	}

	if(driftCounter = 10){
		achieveUnlock(23);
	}
}

if (chiefcase && dingReady && holdingTimer <= 30){
	sound_play(sound_get("ding"));
	dingTimer = 120;
}
if(dingTimer > 0){
	dingReady = false;
	if(!chiefcase){
		dingTimer--;
	}
} else {
	dingReady = true;
}

/*
if(state_cat == SC_GROUND_COMMITTED){
	move_cooldown[AT_DAIR] = 0;
}
*/

if(state == PS_LANDING_LAG && attack == AT_NAIR && triggerSplash && item[2, 3] == 1 && state_timer == 0 && !hitpause){
	create_hitbox(AT_NAIR, 6, x, y);
	triggerSplash = false;
}

//Practice mode XP toggle
if (get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT){
	practice = true;
}
if (practice && shield_pressed && taunt_pressed){
    if(!practiceXP){
    	practiceXP = true;
        clear_button_buffer(PC_SHIELD_PRESSED);
        clear_button_buffer(PC_TAUNT_PRESSED);
    } else {
		practiceXP = false;
		GAUGE_EXP_CURRENT = 0;
		clear_button_buffer(PC_SHIELD_PRESSED);
        clear_button_buffer(PC_TAUNT_PRESSED);
	}
}

if(practiceXP && GAUGE_EXP_CURRENT < gaugeToCheck){
	GAUGE_EXP_CURRENT++;
}

if (get_stage_data(SD_ID) == 2275518 or get_stage_data(SD_ID) == 2551050 or get_stage_data(SD_ID) == 0440312){
	boss_fight = true;
}

if(boss_fight == true){
	if(get_gameplay_time() % 20 == 0 && GAUGE_EXP_CURRENT < gaugeToCheck){
		GAUGE_EXP_CURRENT++;
	}
}

var alive_players = 0;
with(oPlayer){
	if(state != PS_DEAD){
		alive_players++;
	}
}

with(oPlayer){
	if((alive_players == 2) && (other.player != player) && get_player_stocks(player) == 1 && get_player_damage(player) >= 100 && markedForDeath == false){
		markedForDeath = true;	//marks opponent to die to uptilt2
		if((other.url == 1996010699 || other.url == 2081495747)){
			other.canBuyGodhead = true;
		}
	}
}

if(get_player_stocks(player) == 9 || get_match_setting(SET_STOCKS) == 9){
	item[11, 6] = "3gGbCqj";	//when there are eggs in april
} else {
	item[11, 6] = "INFINITY UTILT";
}

if(!practice && get_match_setting(SET_STOCKS) != 0 && (item[11, 3] == 0) && (item[11, 7] == false) && (canBuyGodhead == true)){
	achieveUnlock(11);
}

if(nspecIsFireball == false){
	if (instance_exists(crysProj_id) && crysProj_id != noone){
		if (crysProj_timer == 0){
			var inst = create_hitbox( AT_NSPECIAL, 1, crysProj_id.x, crysProj_id.y );
			inst.hitbox_timer = crysProj_id.hitbox_timer;
			inst.vsp = crysProj_id.vsp;
			inst.spr_dir = crysProj_id.spr_dir;
			inst.img_spd = crysProj_id.img_spd;
			inst.hsp = crysProj_id.hsp;

			crysProj_id.destroyed = true;
			
			crysProj_id = noone;
		} else {
			crysProj_timer -= 1;
		}
	}
}

if (faucetShards == true){
	makeFaucetShards(numFaucetShards);
}

#define updateItempool
{
	IDs_available = 0;
	f = 0;
	for(e = 0; e < items_length; e++){
		if(item[e, 7] = true){	//check if each item is allowed to spawn
			IDs_available[f] = item[e, 5];
			f++;
		}
	}
	numItemsAvailable = f;
	setItemVariants();
	if(numItemsAvailable == 0){
		item[6, 7] = true;
		updateItempool();
	} else {
		item[6, 7] = false;
	}
	if(ID_chosen == 6 && IDs_available[0] != 6){
		r = random_func(0, numItemsAvailable, true);
		IDLockedIn = false;
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	legendaryPinged = false;
}

#define achieveUnlock(i)
{
	item[i, 7] = true;
	var trophyFX = spawn_hit_fx( x + (spr_dir * 16) , y - 48 , achTrophy );
	trophyFX.depth = -10;
	sound_play( asset_get("sfx_shovel_knight_fanfare"));
	itempoolUpdated = false;
}

#define setItemVariants
{
	if(item[5, 3] == 0){
		if(numItemsAvailable <= 1){
			regTracker = 3;
			regBonusDmg = 3;
			item[5, 0] = "EMERGENCY REG.";
			item[5, 1] = "Tada! Barely made it!";
			item[5, 2] = sprite_get("item_badge3");
			item[5, 4] = sprite_get("mini_badge3");
			item[5, 8] = sprite_get("hud_shop1");
			item[5, 9] = $b2eaff;
		} else {
			if(displaySlot <= 1){
				regTracker = 0;
				regBonusDmg = -2;
				item[5, 0] = "EARLY REG. BADGE";
				item[5, 1] = "Tada! Discount!";
				item[5, 2] = sprite_get("item_badge0");
				item[5, 4] = sprite_get("mini_badge0");
			} else if (displaySlot >= 2 && displaySlot <= 4){
				regTracker = 1;
				regBonusDmg = 2;
				item[5, 0] = "REGISTRATION BADGE";
				item[5, 1] = "Tada!";
				item[5, 2] = sprite_get("item_badge1");
				item[5, 4] = sprite_get("mini_badge1");
			} else {
				regTracker = 2;
				regBonusDmg = 3;
				item[5, 0] = "LATE REG. BADGE";
				item[5, 1] = "Tada! Kept 'em waiting!";
				item[5, 2] = sprite_get("item_badge2");
				item[5, 4] = sprite_get("mini_badge2");
				item[5, 8] = sprite_get("hud_shop");
				item[5, 9] = $d5a5b5;
			}
		}
	}
	//
	//if(item[9, 3] == 0){
	//	if(gameboyIntro == false){
	//		item[9, 0] = "GAME-BREAKING GLITCH";
	//		item[9, 1] = "Wait, that- @!G7$%";
	//		item[9, 2] = sprite_get("item_glitch");
	//		item[9, 4] = sprite_get("mini_glitch");
	//	} else {
	//		item[9, 0] = "GAME-BREAKING 'M";
	//		item[9, 1] = "???? MISSING ##$";
	//		item[9, 2] = sprite_get("item_glitchm");
	//		item[9, 4] = sprite_get("mini_glitchm");
	//	}
	//}
}

#define levelUp
{
	var remainder = GAUGE_EXP_CURRENT - GAUGE_EXP_MAX;
	GAUGE_EXP_CURRENT = 0;
	itemCredits++;
	suitcaseLevel++;
	sound_play(asset_get("mfx_levelup"));
	GAUGE_EXP_CURRENT += remainder;
}

#define makeFaucetShards(i)
{
	if(item[24, 3] == 1){
		repeat(i){
			instance_create(faucetShardx, faucetShardy - 12,"obj_article1");
		}
	}
	faucetShards = false;
}

#define setNextItem
{
	r = random_func(0, numItemsAvailable, true);
	if(ID_chosen == 6 && IDs_available[0] != 6){
		IDLockedIn = false;
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	if(IDLockedIn == false){
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	itempoolUpdated = false;
	newItemHUDRefresh = true;
}