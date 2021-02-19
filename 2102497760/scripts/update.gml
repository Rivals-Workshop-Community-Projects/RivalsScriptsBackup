//update

// Aei&Ou Character Code
Ou = noone;
with asset_get("obj_article1") if player_id == other.id other.Ou = id;
is_ou = instance_exists(Ou);

if state == PS_SPAWN { //spawn codes
    if attack_down && shield_down code1 = 1;
    if attack_down && strong_down {
        code2 = 1;
        sound_play(asset_get("mfx_coin"));
    }
    if !is_ou {
        Ou = instance_create(x,y,"obj_article1");
        Ou.player_id = id;
        Ou.aei_id = id;
        Ou.spr_dir = spr_dir;
    }
}

if state == PS_RESPAWN {
	respawned = true;
	visible = true;
}

if respawned && state != PS_RESPAWN && get_player_stocks(player) > 0 {
    if !is_ou {
        Ou = instance_create(x,y,"obj_article1");
        Ou.player_id = id;
        ou.aei_id = id;
        Ou.spr_dir = spr_dir;
    }
    respawned = false;
}
if (special_down && attack_down) && state != 5 && state != 6 && state != PS_AIR_DODGE && state != PS_SPAWN {
	var next_spec = 0;
	if left_down || right_down next_spec = AT_FSPECIAL;
	if up_down && uspec_cooldown == 0 next_spec = AT_USPECIAL;
	if down_down && dspec_cooldown == 0 next_spec = AT_DSPECIAL;
	if next_spec != 0 {
		window = 1;
		window_timer = 0;
		//state_timer = 0;
		attack = next_spec;
		if free state = 6; else state = 5;
	}
}
if dspec_cooldown > 0 dspec_cooldown--;
if uspec_cooldown > 0 uspec_cooldown--;
move_cooldown[AT_DSPECIAL] = 9999;
move_cooldown[AT_FSPECIAL] = 9999;
move_cooldown[AT_USPECIAL] = 9999;
move_cooldown[AT_NSPECIAL] = 9999;
//JAB PARRY
if state == PS_PRATLAND {
	if attack == AT_JAB {
		if (was_parried){
	        canBeStunned = false;
	        can_be_parried = false;
	        was_parried = false;
	        jab_parried = 1;
	    }
	} else mounted = 0;
}
if state != 6 jab_parried = 0;
if jab_parried {
    if attack != AT_JAB {
	    canBeStunned = true;
	    can_be_parried = true;
	    was_parried = true;
	    jab_parried = 0;
    }
}

if shield_down || (state == PS_ATTACK_GROUND && (attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_TAUNT)) || (is_ou && state == PS_HITSTUN && Ou.percent > mount_break_limit) mounted = 0;

if !free || state == PS_WALL_JUMP uspec_cooldown = 0;


with Ou {
    if instance_exists(hitb) {
        hitb.x = x+hitb.x_pos*other.spr_dir*spr_dir;
        hitb.y = y+hitb.y_pos;
    }
}

if !mounted {
    mount_dmg = get_player_damage(player);
} else {
    Ou.percent -= mount_dmg-get_player_damage(player);
    if mount_dmg != get_player_damage(player) {
        //if get_player_damage(player)-mount_dmg > 10 mounted = 0;
        set_player_damage(player,mount_dmg);
        
    }
    
}

if playing_floot && (state != 5 && state != 6) {
    sound_stop(floot);
    playing_floot = false;
}

if mounted != mounted_old { //Change stats when mounted
    mounted_old = mounted;
    if mounted {
        sound_play(asset_get("sfx_may_arc_cointoss"));
        mount_dmg = get_player_damage(player);
        char_height = 45;
        //Animation Actions
        /*idle_anim_speed = .1;
        crouch_anim_speed = .1;
        walk_anim_speed = .25;
        dash_anim_speed = .25;
        pratfall_anim_speed = .25;*/ 
        idle_anim_speed = .07;
        crouch_anim_speed = .07;
        walk_anim_speed = .2;
        dash_anim_speed = .2;
        pratfall_anim_speed = .2;
        //Movement Variables
        walk_speed = 6;
        walk_accel = 1.5;
        walk_turn_time = 6;
        initial_dash_time = 10;
        initial_dash_speed = 6.5;
        dash_speed = 6;
        dash_turn_time = 10;
        dash_turn_accel = 2;
        dash_stop_time = 4;
        dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
        ground_friction = .5;
        moonwalk_accel = 1.4;
        
        jump_start_time = 5;
        jump_speed = 12;
        short_hop_speed = 8;
        djump_speed = 10;
        leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
        max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
        air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
        jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
        air_accel = .2;
        prat_fall_accel = 1; //multiplier of air_accel while in pratfall
        air_friction = .02;
        max_djumps = 1;
        double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
        
        max_fall = 10; //maximum fall speed without fastfalling
        fast_fall = 12; //fast fall speed
        gravity_speed = .5;
        hitstun_grav = .5;
        knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
        
        land_time = 6; //normal landing frames
        prat_land_time = 20;
        wave_land_time = 8;
        wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
        wave_friction = .04; //grounded deceleration when wavelanding
        
        land_sound = asset_get("sfx_land_heavy");
        landing_lag_sound = asset_get("sfx_land_heavy");
        waveland_sound = asset_get("sfx_waveland_syl");
        jump_sound = asset_get("sfx_jumpground");
        djump_sound = asset_get("sfx_jumpair");
        air_dodge_sound = asset_get("sfx_quick_dodge");
        //death_sound = asset_get("sfx_death2");
    } else {
        if (is_ou && state == PS_HITSTUN && Ou.percent > mount_break_limit) sound_play(asset_get("sfx_ice_shatter_big"));
        else sound_play(asset_get("mfx_unstar"));
        char_height = 30;
        idle_anim_speed = .15;
        crouch_anim_speed = .1;
        walk_anim_speed = .25;
        dash_anim_speed = .25;
        pratfall_anim_speed = .25;
        
        walk_speed = 4;
        walk_accel = 0.2;
        walk_turn_time = 6;
        initial_dash_time = 10;
        initial_dash_speed = 6.5;
        dash_speed = 5;
        dash_turn_time = 10;
        dash_turn_accel = 2;
        dash_stop_time = 4;
        dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
        ground_friction = .5;
        moonwalk_accel = 1.4;
        
        jump_start_time = 5;
        jump_speed = 11;
        short_hop_speed = 5;
        djump_speed = 8;
        leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
        max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
        air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
        jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
        air_accel = .3;
        prat_fall_accel = 1; //multiplier of air_accel while in pratfall
        air_friction = .03;
        max_djumps = 1;
        double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
        walljump_hsp = 7;
        walljump_vsp = 11;
        walljump_time = 32;
        wall_frames = 2; //anim frames before you leave the wall
        max_fall = 11; //maximum fall speed without fastfalling
        fast_fall = 13; //fast fall speed
        gravity_speed = .6;
        hitstun_grav = .5;
        knockback_adj = 1.3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
        
        land_time = 4; //normal landing frames
        prat_land_time = 20;
        wave_land_time = 8;
        wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
        wave_friction = .04; //grounded deceleration when wavelanding
        
        //crouch animation frames
        crouch_startup_frames = 3;
        crouch_active_frames = 8;
        crouch_recovery_frames = 3;
        
        //parry animation frames
        dodge_startup_frames = 1;
        dodge_active_frames = 1;
        dodge_recovery_frames = 4;
        
        //tech animation frames
        tech_active_frames = 3;
        tech_recovery_frames = 1;
        
        //tech roll animation frames
        techroll_startup_frames = 2;
        techroll_active_frames = 2;
        techroll_recovery_frames = 2;
        techroll_speed = 10;
        
        //airdodge animation frames
        air_dodge_startup_frames = 1;
        air_dodge_active_frames = 5;
        air_dodge_recovery_frames = 2;
        air_dodge_speed = 7.5;
        
        //roll animation frames
        roll_forward_startup_frames = 2;
        roll_forward_active_frames = 3;
        roll_forward_recovery_frames = 3;
        roll_back_startup_frames = 2;
        roll_back_active_frames = 3;
        roll_back_recovery_frames = 3;
        roll_forward_max = 9; //roll speed
        roll_backward_max = 9;
        
        land_sound = asset_get("sfx_land_heavy");
        landing_lag_sound = asset_get("sfx_land_heavy");
        waveland_sound = asset_get("sfx_waveland_syl");
        jump_sound = asset_get("sfx_jumpground");
        djump_sound = asset_get("sfx_jumpair");
        air_dodge_sound = asset_get("sfx_quick_dodge");
    }
}


//Trummel Support

if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 6;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "That's Aei and Ou";
    trummelcodecline[0,2] = "a duo fighter.";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";
    
    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 4;

    trummelcodecline[1,1] = "Hey, wait a second!";
    trummelcodecline[1,2] = "2-on-1 is so unfair!";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 2;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "tru i am the hard carry";
    trummelcodecline[2,2] = "";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";

    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "But I actually carry -";
    trummelcodecline[3,2] = "oh, I see your point.";
    trummelcodecline[3,3] = "But they can act";
    trummelcodecline[3,4] = "independently!";

    //Page 4
    trummelcodecspeaker[4] = 2;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "does hitting them work";
    trummelcodecline[4,2] = "";
    trummelcodecline[4,3] = "";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "Both can be KO'ed.";
    trummelcodecline[5,2] = "Each have their own";
    trummelcodecline[5,3] = "percent.";
    trummelcodecline[5,4] = "";

    //Page 6
    trummelcodecspeaker[6] = 2;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "then i think we r good";
    trummelcodecline[6,2] = "";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";
}

/*if tutorial_on && !is_ou {
    Ou = instance_create(x,y,"obj_article1");
    Ou.player_id = id;
    Ou.aei_id = id;
    Ou.spr_dir = spr_dir;
}*/

if taunt_down taunt_held++;
else taunt_held = 0;

/*if taunt_held > 60 {
    if cur_scene == 0 {
        tutorial_on = true;
        with oPlayer if get_training_cpu_action() != CPU_FIGHT other.practice = true;
    }
} */       //[bg_sprite, bg_sprite_speed, font, text_full, scroll_speed, scroll_sound]

if tutorial_on && practice {
// Experimental Tutorial Code
enum BT {
    ATTACK,
    SHIELD,
    ATTACK_SHIELD,
    TAUNT,
    START
}
#macro TG_NONE 0 //Do not run trigger code, have to manually get out of
#macro TG_COMPLETE 1 //Trigger upon 'completion' (defined per window type: Animation completion [> image_index], Full text display [vis_chars > full_text length])
#macro TG_BUTTON 2 //Triggers upon button press (any button, attack, shield, taunt, etc)
#macro TG_TIME 3 //Triggers after frame count

if  array_length_1d(array_scene_ID) == 0 reload_scenes(); //Scene initialization scripts

if taunt_held > 60 {
    if cur_scene == 0 {
        scene_switch(1);
    }
}          //[bg_sprite, bg_sprite_speed, font, text_full, scroll_speed, scroll_sound]


scene_custom_update();

//Process the above
update_windows();
update_scene();

}

#define scene_custom_update()



switch cur_scene {
    case 1:
        /*
        if cur_scene_time == 100 list_window[| 0].path = [100, 100];
        if cur_scene_time == 250 list_window[| 1].bg_sprite_index = sprite_get("bordertext3");
        if cur_scene_time == 320 list_window[| 1].path = [list_window[| 1].path[0], list_window[| 1].path[1]-33];
        if cur_scene_time == 360 list_window[| 1].path = [list_window[| 1].path[0], list_window[| 1].path[1]-33];
        if cur_scene_time == 400 list_window[| 1].path = [list_window[| 1].path[0], list_window[| 1].path[1]-34];
        */
        if cur_scene_time == 2 list_window[| 0].path = [258-200,492-100];
        if cur_scene_time == 5 list_window[| 1].path = [258-80,492-100];
        if cur_scene_time < 30 list_window[| 1].vis_chars = 0;
        break;
    case 2:
        //if !instance_exists(tutorial_target) && cur_scene_time < 60 tutorial_target = instance_create(300, 300, "obj_article2");
        break;
    case 3:
        if cur_scene_time == 1 list_window[| 0].path = [50, 50];
        if cur_scene_time == 3 list_window[| 1].path = [258+20, 492-100];
        break;
    case 4:
        //if cur_scene_time == 1 list_window[| 1].path = [258-120, 492-100];
        break;
    case 9:
        if !instance_exists(tutorial_target) && cur_scene_time < 10 {
            tutorial_target = instance_create(600, 400, "obj_article2");
            tutorial_target.from_ou = true;
        }
        break;
    case 12:
        if !instance_exists(tutorial_target) && cur_scene_time < 10 {
            tutorial_target = instance_create(500, 400, "obj_article2");
            tutorial_target.from_ou = true;
            tutorial_target.charge_strong = true;
        }
        break;
    case 14:
        if !instance_exists(tutorial_target) && cur_scene_time < 10 {
            tutorial_target = instance_create(700, 150, "obj_article2");
            tutorial_target.from_ou = true;
            tutorial_target.charge_strong = true;
        }
        break;
}

#define scene_custom_trigger()

switch cur_scene {
    case 2:
        //if !instance_exists(tutorial_target) && cur_scene_time > 60 scene_switch(1);
        break;
    case 9:
        if !instance_exists(tutorial_target) && cur_scene_time > 10 scene_switch(10);
        break;
    case 12:
        if !instance_exists(tutorial_target) && cur_scene_time > 10 scene_switch(13);
        break;
    case 14:
        if !instance_exists(tutorial_target) && cur_scene_time > 10 scene_switch(15);
        break;
    case 16:
        if cpu_hit_full {
            scene_switch(17);
            cpu_hit_full = false;
        }
        break;
    case 33:
        tutorial_on = false;
        break;
        
    
}

#define reload_scenes()
open_scene_id = 1;
cur_scene = 0;
cur_scene_time = 0;
cur_scene_time_end = 0;
cur_scene_complete = false;
array_scene_data = array_create(0);
array_scene_ID = array_create(0);
array_scene_triggers = array_create(0);


scene_add(1,[ //Place windows and move onto screen
    [258-200,492+50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-80,492+50, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[0], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 2, tutorial_default_scroll]);

scene_add(2,[ //Place windows and move onto screen
    [258-200,492-100, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[1], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 3, tutorial_default_scroll]);

scene_add(3,[ //Place windows and move onto screen
    [258-200,492-100, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[2], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 4, tutorial_default_scroll]);
    
scene_add(4,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[3], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 5, tutorial_default_scroll]);
    
scene_add(5,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[4], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 6, tutorial_default_scroll]);

scene_add(6,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[5], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 7, tutorial_default_scroll]);

scene_add(7,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[6], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 8, tutorial_default_scroll]);

scene_add(8,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_estatic"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[7], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 9, tutorial_default_scroll]);

scene_add(9,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[8], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    [50, 50, 2, [asset_get("empty_sprite"), 6, 80, -16, sprite_get("arrow"), 6, "target", true]], //window 2, target arrow
    ],
    [TG_NONE, 10, 0]);

scene_add(10,[ //Place windows and move onto screen
    [50,50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[9], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 11, 60]);

scene_add(11,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[10], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 12, tutorial_default_scroll]);

scene_add(12,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[11], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    [50, 50, 2, [asset_get("empty_sprite"), 6, 80, -16, sprite_get("arrow"), 6, "target", true]], //window 2, target arrow
    ],
    [TG_NONE, 13, 0]);
    
scene_add(13,[ //Place windows and move onto screen
    [50,50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[12], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 14, 60]);

scene_add(14,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[13], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    [50, 50, 2, [asset_get("empty_sprite"), 6, 80, -16, sprite_get("arrow"), 6, "target", true]], //window 2, target arrow
    ],
    [TG_NONE, 15, 0]);
    
scene_add(15,[ //Place windows and move onto screen
    [50,50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[14], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 16, 60]);

scene_add(16,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120, 492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[15], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    [50, 50, 2, [asset_get("empty_sprite"), 6, 32, -80, sprite_get("arrow"), 6, "cpu", true]], //window 2, target arrow
    ],
    [TG_NONE, 17, 0]);

scene_add(17,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
    [258-80,492-100, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", tutorial_text_dump[16], 380, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 18, 60]);

scene_add(18,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[17], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 19, tutorial_default_scroll]);

scene_add(19,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[18], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 20, tutorial_default_scroll]);

scene_add(20,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[19], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 21, tutorial_default_scroll]);

scene_add(21,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[20], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 22, tutorial_default_scroll]);

scene_add(22,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[21], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 23, tutorial_default_scroll]);

scene_add(23,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[22], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 24, tutorial_default_scroll]);
    
scene_add(24,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[23], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 25, tutorial_default_scroll]);

scene_add(25,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[24], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 26, tutorial_default_scroll]);

scene_add(26,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[25], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 27, tutorial_default_scroll]);

scene_add(27,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[26], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 28, tutorial_default_scroll]);
    
scene_add(28,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[27], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 34, tutorial_default_scroll]);
    
scene_add(29,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[28], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 30, tutorial_default_scroll]);

scene_add(30,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[29], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 31, tutorial_default_scroll]);

scene_add(31,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[30], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 32, tutorial_default_scroll]);

scene_add(32,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[31], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 33, tutorial_default_scroll]);

scene_add(33,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_estatic"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[32], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 38, tutorial_default_scroll]);

scene_add(34,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[33], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 35, tutorial_default_scroll]);

scene_add(35,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[34], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 29, tutorial_default_scroll]);

/*scene_add(36,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[35], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 37, tutorial_default_scroll]);

scene_add(37,[ //Place windows and move onto screen
    [50, 50, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_estatic"), 6]], //window 0, animated sprite
    [258-120,492-100, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", tutorial_text_dump[36], 680, tutorial_default_text_speed, asset_get("mfx_hp")]], //window 1, textbox
    ],
    [TG_COMPLETE, 38, tutorial_default_scroll]);*/
/*
scene_add(1,[
    [258,492-200, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 6]],
    [258+200,492-200, 0, [sprite_get("bordertext2"), 6, 20, 16, "roaMBLFont", "According to all known laws of aviation, there is no way that a bee should be able to fly. 
    Its wings are too small to get its fat little body off the ground. ... Because bees don't care what humans think is impossible.", 350, tutorial_default_text_speed, asset_get("mfx_hp")]],
    ],
    [TG_COMPLETE, tutorial_default_text_speed, tutorial_default_scroll]);
scene_add(2,[
    [258,492-400, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_idle"), 5]],
    [258+200,492-300, 0, [sprite_get("bordertext1"), 6, 20, 16, "roundFont", "Top Text", 350, 6, asset_get("mfx_hp")]],
    ],
    [TG_NONE, 0, 0]);
*/

#define instance_window(__x,__y,_content_type,_container)
var _vari;
while array_length_1d(_container) < 11 {
    array_push(_container,0);
}
switch _content_type {
    case 0: //Textbox: container = [bg_sprite, bg_sprite_speed, font, text_full, scroll_speed, scroll_sound]
        var window_obj = {
            _x: __x,
            _y: __y,
            content_type: _content_type,
            bg_sprite_index: _container[0],
            bg_sprite_speed: _container[1],
            _in_x: _container[2],
            _in_y: _container[3],
            font: _container[4],
            text_full: _container[5],
            text_spacing: _container[6],
            scroll_speed: _container[7],
            scroll_sound: _container[8],
            bg_image_index: _container[9],
            vis_chars: _container[10],
            move_time: 30,
            move_timer: 0,
            move_type: 1,
            visibl: true,
            path: [__x,__y],
            init_pos: [__x,__y]
            
        };
        //_vari = [bg_image_index, vis_chars, visibl]
        break;
    case 1: //Animated Sprite: container = [bg_sprite, bg_sprite_speed, _sprite_index, sprite_speed]
        var window_obj = {
            _x: __x,
            _y: __y,
            content_type: _content_type,
            bg_sprite_index: _container[0],
            bg_sprite_speed: _container[1],
            _in_x: _container[2],
            _in_y: _container[3],
            _sprite_index: _container[4],
            sprite_speed: _container[5],
            bg_image_index: _container[6],
            _image_index: _container[7],
            move_time: 30,
            move_timer: 0,
            move_type: 1,
            visibl: true,
            path: [__x,__y],
            init_pos: [__x,__y]
            
        };//_vari = [bg_image_index, _image_index, visibl]
        break;
    case 2: //Draw Arrow, synced with an object
        var window_obj = {
            _x: __x,
            _y: __y,
            content_type: _content_type,
            bg_sprite_index: _container[0],
            bg_sprite_speed: _container[1],
            _in_x: _container[2],
            _in_y: _container[3],
            _sprite_index: _container[4],
            sprite_speed: _container[5],
            obj_name: _container[6],
            synced: _container[7],
            bg_image_index: _container[8],
            _image_index: _container[9],
            move_time: 30,
            move_timer: 0,
            move_type: 1,
            visibl: true,
            path: [__x,__y],
            init_pos: [__x,__y]
        }; //_vari = [bg_image_index, _image_index, visibl]
        break;
}

ds_list_add(list_window, window_obj);


#define update_windows()

if ds_list_size(list_window) > 0 {
    var i = 0;
    repeat ds_list_size(list_window) {
        if list_window[| i].visibl {
            list_window[| i].bg_image_index += 1/(list_window[| i].bg_sprite_speed); //Animate Background
            if list_window[| i].path[0] != list_window[| i]._x || list_window[| i].path[1] != list_window[| i]._y { //Movement
                switch list_window[| i].move_type {
                    case 0: //Linear
                        list_window[| i]._x = ease_linear(list_window[| i].init_pos[0],list_window[| i].path[0],list_window[| i].move_timer,list_window[| i].move_time);
                        list_window[| i]._y = ease_linear(list_window[| i].init_pos[1],list_window[| i].path[1],list_window[| i].move_timer,list_window[| i].move_time);
                        break;
                    case 1: //Schmoothfast
                        list_window[| i]._x = ease_expoInOut(list_window[| i].init_pos[0],list_window[| i].path[0],list_window[| i].move_timer,list_window[| i].move_time);
                        list_window[| i]._y = ease_expoInOut(list_window[| i].init_pos[1],list_window[| i].path[1],list_window[| i].move_timer,list_window[| i].move_time);
                        break;
                    case 2: //Schmoothslow
                        list_window[| i]._x = ease_quartInOut(list_window[| i].init_pos[0],list_window[| i].path[0],list_window[| i].move_timer,list_window[| i].move_time);
                        list_window[| i]._y = ease_quartInOut(list_window[| i].init_pos[1],list_window[| i].path[1],list_window[| i].move_timer,list_window[| i].move_time);
                        break;
                }
                if list_window[| i].move_time <= list_window[| i].move_timer {
                    list_window[| i]._x = list_window[| i].path[0];
                    list_window[| i]._y = list_window[| i].path[1];
                    list_window[| i].init_pos = list_window[| i].path;
                }
                list_window[| i].move_timer++;
            } else list_window[| i].move_timer = 0;
            switch list_window[| i].content_type { //Type-Specific updates
                case 0: //Textbox
                    if floor(list_window[| i].vis_chars) < string_length(list_window[| i].text_full) {
                        if floor(list_window[| i].vis_chars) % 2 == 0 && floor(list_window[| i].vis_chars) != floor(list_window[| i].vis_chars + 1/(list_window[| i].scroll_speed)) sound_play(list_window[| i].scroll_sound);
                        list_window[| i].vis_chars += 1/(list_window[| i].scroll_speed);
                        
                    }
                    break;
                case 1: //Animated Sprite 
                    list_window[| i]._image_index += 1/(list_window[| i].sprite_speed);
                    break;
                case 2: //Arrow on Object
                    if list_window[| i].synced {
                        switch list_window[| i].obj_name {
                            case "cpu":
                                with oPlayer if player != other.player {
                                       other.list_window[| i]._x = x;
                                       other.list_window[| i]._y = y;
                                    }
                                break;
                            case "ou":
                                if is_ou {
                                    list_window[| i]._x = Ou.x;
                                    list_window[| i]._y = Ou.y;
                                }
                                break;
                            case "target":
                                with obj_article2 if player_id == other.id {
                                    other.list_window[| i]._x = x;
                                    other.list_window[| i]._y = y;
                                }
                                break;
                        }
                    }
            }
            
        }
        i++;
    }
}

#define update_scene()
var _scene_id_ind = array_find_index(array_scene_ID,cur_scene);
cur_scene_time++;


if cur_scene != 0 {
    switch array_scene_triggers[_scene_id_ind][0] { //Trigger types
        case TG_NONE: //do nothing, lol
            scene_custom_trigger(); //Define custom trigger behavior here
            break;
        case TG_COMPLETE: //Trigger on all scene windows completing, and the cooldown time has passed.
            cur_scene_complete = false;
            if ds_list_size(list_window) > 0 { //Check here for now, save on execution
                var i = 0;
                cur_scene_complete = true;
                repeat ds_list_size(list_window) {
                    if cur_scene_complete {
                        switch list_window[| i].content_type {
                            case 0: //Textbox
                                if floor(list_window[| i].vis_chars) < string_length(list_window[| i].text_full) cur_scene_complete = false;
                                break;
                            case 1: //Animated Sprite
                                if list_window[| i]._image_index < sprite_get_number(list_window[| i]._sprite_index) cur_scene_complete = false;
                                break;
                        }
                    }
                    i++;
                }
            }
            if cur_scene_complete == true {
                cur_scene_time_end++;
                if cur_scene_time_end > array_scene_triggers[_scene_id_ind][2] scene_switch(array_scene_triggers[_scene_id_ind][1]);
            }
                
            break;
        case TG_BUTTON:
            switch array_scene_triggers[_scene_id_ind][2] {
                case BT.ATTACK_SHIELD:
                    if attack_down && shield_down scene_switch(array_scene_triggers[_scene_id_ind][1]);
                    break;
                case BT.TAUNT:
                    if taunt_down scene_switch(array_scene_triggers[_scene_id_ind][1]);
                    break;
            }
            break;
        case TG_TIME:
            if cur_scene_time > array_scene_triggers[_scene_id_ind][2] 
                scene_switch(array_scene_triggers[_scene_id_ind][1]);
            break;
    }
}

#define scene_add(_scene_id, scene_data, scene_triggers) //Adds a new scene to the scenespace
var _scene_id_ind = array_find_index(array_scene_ID,_scene_id);
if _scene_id_ind == -1 {
    array_push(array_scene_data,scene_data);
    array_push(array_scene_ID, _scene_id);
    array_push(array_scene_triggers,scene_triggers);
    open_scene_id++;
} else {
    array_scene_data[_scene_id_ind] = scene_data;
    array_scene_ID[_scene_id_ind] = _scene_id;
    array_scene_triggers[_scene_id_ind] = scene_triggers;
}


#define scene_switch(_scene_id) //switches the active scene
if _scene_id != cur_scene {
    cur_scene_time = 0;
    cur_scene_time_end = 0;
    var _scene_id_ind = array_find_index(array_scene_ID,_scene_id);
    if _scene_id_ind != -1 {
        var scene_id = array_scene_ID[_scene_id_ind];
        var scene_data =  array_scene_data[_scene_id_ind];
        
        ds_list_clear(list_window); //Clear active windows, add new ones
        cur_scene = _scene_id;
        for (var i = 0; i < array_length_1d(scene_data); i++) { 
            instance_window(scene_data[i][0],scene_data[i][1],scene_data[i][2],scene_data[i][3]);
        }
    
    } else { //Default to no scene
        ds_list_clear(list_window);
        cur_scene = 0;
    }
}