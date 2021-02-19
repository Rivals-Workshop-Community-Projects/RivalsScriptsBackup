//if trummelcodecneeded{
//    trummelcodec = 17;
//    trummelcodecmax = 1;
//    trummelcodecsprite1 = sprite_get("X");
//    trummelcodecsprite2 = sprite_get("X");
//    var page = 0;
//
    //Page 0
//    trummelcodecspeaker[page] = 0;
//    trummelcodecexpression[page] = 0;
//
//    trummelcodecline[page,1] = "X";
//    trummelcodecline[page,2] = "X";
//    trummelcodecline[page,3] = "X";
//    trummelcodecline[page,4] = "X";
//    page++;

    //Page 1
//    trummelcodecspeaker[page] = 0;
//    trummelcodecexpression[page] = 1;

//    trummelcodecline[page,1] = "X";
//    trummelcodecline[page,2] = "X";
//    trummelcodecline[page,3] = "X";
//    trummelcodecline[page,4] = "X";
//    page++;

    //repeat...
//}

if (attack == AT_FSPECIAL_2){
	if (window == 3 && window_timer == 0){
		with (asset_get("oPlayer")){
			blue_time = 0;
		}
	}
}

if(get_player_color(player) == 10){
    rouxls = true;
}

if(get_player_color(player) == 0){
toonlink_photo = sprite_get("toonlink_photo");
dracula_portrait = sprite_get("dracportrait1");
dracula_portrait2 = sprite_get("dracportrait2");
gfzsignspr = sprite_get("goalpost");
}

if (blue_time > 0){
	blue_time --;
} else blue_time = 0;

var papyrus = id;
if (blue_time > 0){
	with (asset_get("oPlayer")){
		if (blue_time == 0){
			with (papyrus){
				blue_time = 0;
			}
		}
	}
}

if (has_rune("G")){
	dash_speed = 9;
	initial_dash_speed = 9.5;
}

if (has_rune("B")){
	knockback_adj = 0.75;
}

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered
if (introTimer < 12){
    draw_indicator = false;
} else {
    draw_indicator = true;
}

var bomb_out = false;

with orb{
    if (player_id == other.id){
        bomb_out = true;
    }
}

if instance_exists(orb) == false{
	orb = noone;
}

if (instance_exists(orb)){
	orb_out = true;
} else orb_out = false;

if (orb_out == true){
	move_cooldown[AT_NSPECIAL] = 2;
}

if (hit_timer > 0) hit_timer--;
else hit_counter = 0;

if (move_cooldown[AT_DSPECIAL] > 0){
	hit_timer = 0;
}

if (attack == AT_TAUNT && window == 2 && taunt_timer >= 0){
	taunt_timer ++;
}

if (spr_dir == -1 && attack == AT_DSTRONG){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongalt"));
}

if (spr_dir == 1 && attack == AT_DSTRONG){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
}

if (state == PS_DASH_START && state_timer == 1){
	sound_play(sound_get("sfx_dashstart"));
}
if (state == PS_DASH_STOP && state_timer == 1){
	//sound_stop(sound_get("sfx_dash"));
	sound_play(sound_get("sfx_dashstop"));
}
/*if ((state == PS_DASH && state_timer % 180 == 0) or (state == PS_DASH && state_timer == 1) ){
	sound_stop(sound_get("sfx_dash"));
	sound_play(sound_get("sfx_dash"));
}
*/
if (state == PS_DASH_TURN && state_timer == 1){
	//sound_stop(sound_get("sfx_dash"));
	sound_play(sound_get("sfx_dashstart"));
	//sound_play(sound_get("sfx_dash"));
}
if (free) {
	//sound_stop(sound_get("sfx_dash"));
}
if (state == PS_DASH == false) {
	//sound_stop(sound_get("sfx_dash"));
	if (prev_state == PS_DASH_TURN && state_timer == 1){
		sound_play(sound_get("sfx_dashstop"));
	}
}
if (state == PS_PARRY && state_timer == 3){
	sound_play(sound_get("sfx_rise"));
}

if (state == PS_ATTACK_GROUND && attack == AT_UTILT){
	char_height = 114;
}
else{
	char_height = 74;
}


if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt");
	var myicon = sprite_get("kirbyicon");
	var ping = (sound_get("sfx_ping"));
	var dam = (sound_get("sfx_ut_souldamage"));
	var bluebone = (sprite_get("fspecial_proj"));
    with enemykirby {
			newicon = myicon
			set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
			set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

			set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
			set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
			set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);

			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ping);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

			set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
			set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
			set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

			set_num_hitboxes(AT_EXTRA_3, 2);

			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -45);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 92);
			set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 270);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);

			set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 60);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 16);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 40);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -80);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_GROUNDEDNESS, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
			set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 55);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_FINAL_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .6);
			set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, bluebone);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, bluebone);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, dam);

	}
} //Kirby ability script ends here

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN && blue == true){
	    blue_time = 0;
        blue = false;
        can_djump = true;
    }
    if(blue == true and blue_id == other.id){
        blue_time -= 1;
        outline_color = [0, 0, 255];
        if (state == PS_IDLE_AIR or state == PS_FIRST_JUMP){
        can_djump = false;
        }
        if (can_djump == false){
        	djumps = 3;
        }
        if (state == SC_AIR_COMMITTED or state == PS_TUMBLE){
        	can_djump = true;
        }
        if (state == PS_FIRST_JUMP){
        	if (jump_down && state_timer <= 30){
        		vsp -= .3;
        	}
        }
        
    }
    if(blue_time <= 0){
            blue = false;
            blue_time = 0;
            can_djump = true;
     }
    if (blue == false){
        outline_color = [0, 0, 0];
        can_djump = true;
    }
}
/*{
        blue_time -= 1;
        outline_color = [0, 0, 255];
        if (state != SC_HITSTUN && state != PS_ATTACK_AIR){
        	djumps = 9999999;
        }
        if (state == PS_FIRST_JUMP){
        	if (jump_down && state_timer <= 30){
        		vsp -= .3;
        	}
        }
    }
    if (blue == false && blue_time == 0){
        outline_color = [0, 0, 0];
		djumps = 0;
    }*/

with (asset_get("oPlayer")){
	if (blue and blue_id == other.id){
		if (activated_kill_effect && blue_time >= 0){
			blue_time = 0;
		}
	}
}

if (bone_useable == false)
{
	move_cooldown[AT_USPECIAL] = 2;
	if (state == PS_HITSTUN && move_cooldown[AT_USPECIAL] >= 0){
		move_cooldown[AT_USPECIAL] = 0;
		bone_useable = true;
		instance_destroy(bone);
		bone = noone;
	}
	if (free == false && bone == noone)
	{
	    bone_useable = true;
	}
}

if (has_rune("O")){
	walk_speed = 3.25;
	walk_accel = 0.2;
	walk_turn_time = 6;
	ground_friction = .5;
	jump_start_time = 5;
	jump_speed = 13;
	short_hop_speed = 8;
	djump_speed = 12;
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = .8;
	prat_fall_accel = .85; //multiplier of air_accel while in pratfall
	air_friction = .02;
	max_djumps = 1;
	double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
	walljump_hsp = 7;
	walljump_vsp = 11;
	walljump_time = 32;
	max_fall = 13; //maximum fall speed without fastfalling
	fast_fall = 16; //fast fall speed
	gravity_speed = .65;
	hitstun_grav = .5;
	knockback_adj = 1.5; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
	
	land_time = 4; //normal landing frames
	prat_land_time = 3;
	wave_land_time = 2;
	wave_land_adj = 3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = .01; //grounded deceleration when wavelanding
	
	//crouch animation frames
	crouch_startup_frames = 1;
	crouch_active_frames = 1;
	crouch_recovery_frames = 1;
	
	//parry animation frames
	dodge_startup_frames = 1;
	dodge_active_frames = 1;
	dodge_recovery_frames = 3;
	
	//tech animation frames
	tech_active_frames = 3;
	tech_recovery_frames = 1;
	
	//tech roll animation frames
	techroll_startup_frames = 2
	techroll_active_frames = 2;
	techroll_recovery_frames = 2;
	techroll_speed = 10;
	
	//airdodge animation frames
	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 2;
	air_dodge_recovery_frames = 3;
	air_dodge_speed = 12.5;
	
	//roll animation frames
	roll_forward_startup_frames = 2;
	roll_forward_active_frames = 4;
	roll_forward_recovery_frames = 5;
	roll_back_startup_frames = 2;
	roll_back_active_frames = 4;
	roll_back_recovery_frames = 2;
	roll_forward_max = 12; //roll speed
	roll_backward_max = 9;
}

var boneplat = bone;

if (bone != noone)
{

    bone.time++;

    if (bone.time == 5)
    {
    	bone.sprite_index = sprite_get("boneplat");
    	bone.image_index = 0;
		bone.image_speed = 0.2 - 0.2*boneNA;
	}

    if (bone.time > 140)
    {
        if (bone.time % 4 <= 1)
            bone.image_alpha = 0;
        else
            bone.image_alpha = 1;
    }
    if (bone.time > 180)
    {
    	if (free == false && place_meeting(x, y+1, bone)){
        	set_state(PS_PRATFALL);
        }
        with (asset_get("oPlayer")){
        		if (free == false && place_meeting(x, y+1, boneplat)){
        	set_state(PS_PRATFALL);
        		}
        }
		sound_play(sound_get("sfx_ping"));
        instance_destroy(bone);
        bone = noone;
    }
}

if (can_blue == false){
	move_cooldown[AT_FSPECIAL] = 2;
}

if (blue_time == 0){
	can_blue = true;
}

if get_btt_data { //Get data for Break The Targets
    course_name = "Slightly Bonetrousled";
    //Set the spawn properties
    with obj_stage_article if num == 3 max_timer = 4000
    respawn_point = [[30,50],[0,0],1];
    //Set the collision of the solid sprites to precise
    sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
    room_add(1,[
        [ //Each Cell
            [0,0], //Cell Coordinates
            [
                //Targets
                [10, 30, 42, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //1
                [10, 47, 26, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //2
                [10, 48, 48, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //3
                [10, 62, 47, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //4
                [10, 61, 26.5, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //5
                [10, 52, 12, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //6
                [10, 78, 24, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //7
                [10, 44, 68, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //8
                [10, 76, 67, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //9
                [10, 72, 38, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //10
                [10, 100, 73, 0, -5, [2, 0, 4, [[100,73],[100,80]], 0, 0, 0], [0]], //11
                [10, 100, 62, 0, -5, [2, 0, 4, [[100,62],[100,52]], 0, 0, 0], [0]], //12
                [10, 135, 59.5, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //13
                [10, 69, 2, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //14
                [10, 21, 48, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //number 15: burger king foot lettuce
                //Solid Ground
                [1, 2, 2, 2, 1, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 2, 2, 0, 0, [sprite_get("btt_stage"), 0, 0, 0, 0, 0, 0, 0], [0]],
                
                [1, 50, 50, 0, 10, [sprite_get("btt_backdrop"), 0, 0, 1, 0, 0, 0, 0], [0]],
                //Plats
                [1, 46, 60,  1, 0, [sprite_get("btt_bone"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 65, 57,  1, 0, [sprite_get("btt_bone"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 60, 18,  1, 0, [sprite_get("btt_bone"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 65, 11,  1, 0, [sprite_get("btt_bone"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 94, 70,  1, 0, [sprite_get("btt_bone"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 46, 48.5,  0, 0, [sprite_get("bridge"), 0, 0, 0, 0, 0, 0, 0], [0]],
                [1, 46, 50, 1, 1, [sprite_get("bridgeplat"), 0, 0, 0, 0, 0, 0, 0], [0]]
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
        btt = true;
    if (btt_music_playing == false) {
        sound_play(sound_get("targets"), true, 0);
        btt_music_playing = true;
    }
}

if (btt) {
    suppress_stage_music(0, 1);
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