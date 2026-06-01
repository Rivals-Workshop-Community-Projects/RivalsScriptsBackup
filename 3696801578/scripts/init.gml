hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 40;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 5;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

vfx_speedline = hit_fx_create(sprite_get("vfx_speedline"), 12)
vfx_thing = hit_fx_create(sprite_get("vfx_sword_hit_large"), 18)

vfx_hand_spin = hit_fx_create(sprite_get("vfx_hand_spin"), 19)
vfx_hand_spin_small = hit_fx_create(sprite_get("vfx_hand_spin_small"), 13)
//Uspecial
uspecial_timer = 0;
uspecial_max_time = 200
uspecial_max_reached = false;

//Sprite Switch for Hurtboxes (Applies only to Jake normals which change when Finn is alone)
shades = get_synced_var(player);
had_shades = 0;
shades_to_equip = 1;

current_sprite_set = 0;
num_sprite_sets = 2;

checked_sprite_names = [
    "nair_hurt",
    "fstrong_hurt",
    "ustrong_hurt",
    "dstrong_hurt",
    ];


fspecial_ledgeforgiven = false;




jake_cooldown = 0;

//is jake attached to finn?
jake_obj = noone

jake_sprites = ds_map_create()

//jake sprites for nonattack states
jake_sprites[? PS_SPAWN] = sprite_get("jake_idle")
jake_sprites[? PS_RESPAWN] = sprite_get("jake_idle")
jake_sprites[? PS_IDLE] = sprite_get("jake_idle")
jake_sprites[? PS_CROUCH] = sprite_get("jake_crouch")
jake_sprites[? PS_WALK] = sprite_get("jake_walk")
jake_sprites[? PS_WALK_TURN] = sprite_get("jake_walkturn")
jake_sprites[? PS_DASH_START] = sprite_get("jake_dashstart")
jake_sprites[? PS_DASH] = sprite_get("jake_dash")
jake_sprites[? PS_DASH_STOP] = sprite_get("jake_dashstop")
jake_sprites[? PS_DASH_TURN] = sprite_get("jake_dashturn")
jake_sprites[? PS_WAVELAND] = sprite_get("jake_waveland")
jake_sprites[? PS_JUMPSQUAT] = sprite_get("jake_jumpstart")
jake_sprites[? PS_FIRST_JUMP] = sprite_get("jake_jump")
jake_sprites[? PS_IDLE_AIR] = sprite_get("jake_jump")
jake_sprites[? PS_DOUBLE_JUMP] = sprite_get("jake_doublejump")
jake_sprites[? PS_WALL_JUMP] = sprite_get("jake_walljump")
jake_sprites[? PS_LAND] = sprite_get("jake_land")
jake_sprites[? PS_PRATLAND] = sprite_get("jake_land")
jake_sprites[? PS_LANDING_LAG] = sprite_get("jake_landinglag")
jake_sprites[? PS_PRATFALL] = sprite_get("jake_pratfall")
jake_sprites[? PS_PARRY_START] = sprite_get("jake_idle")
jake_sprites[? PS_PARRY] = sprite_get("jake_parry")
jake_sprites[? PS_ROLL_FORWARD] = sprite_get("jake_roll_forward")
jake_sprites[? PS_ROLL_BACKWARD] = sprite_get("jake_roll_backward")
jake_sprites[? PS_TECH_FORWARD] = sprite_get("jake_roll_forward")
jake_sprites[? PS_TECH_BACKWARD] = sprite_get("jake_roll_backward")
jake_sprites[? PS_TECH_GROUND] = sprite_get("jake_tech")
jake_sprites[? PS_AIR_DODGE] = sprite_get("jake_airdodge")
jake_sprites[? PS_HITSTUN_LAND] = sprite_get("jake_hurtground")
jake_sprites[? PS_HITSTUN] = [sprite_get("jake_bighurt"), [sprite_get("jake_hurtground"), sprite_get("jake_hurt")], sprite_get("jake_downhurt"), sprite_get("jake_bouncehurt"), sprite_get("jake_uphurt"), sprite_get("jake_spinhurt")]
jake_sprites[? PS_TUMBLE] = sprite_get("jake_spinhurt")

jake_sprites[? PS_ATTACK_AIR] = ds_map_create()


fspecial_2_rect = {
	top_left: {
		x: 5,
		y: -50,
	},
	bottom_right: {
		x: 55,
		y: 0
	}
}

//used for all attacks while jake is detached to finn
detached_jake_data = ds_map_create()

//IDLE
detached_jake_data[? PS_IDLE] = {
    next: PS_IDLE,
    sprite: sprite_get("jake_article_idle"),
    hurtbox: sprite_get("jake_article_idle_hurt"),
    state_data: [
        {
            frame_start: 0,
            frames: 7,
            length: 40,
            loop: true
        }
    ]
}

//NON ATTACK JUMP
detached_jake_data[? PS_DOUBLE_JUMP] = {
    sprite: sprite_get("jake_article_jump"),
    hurtbox: sprite_get("jake_article_idle_hurt"),
    next: PS_IDLE,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 4,
            loop: false
        },
        {
            frame_start: 1,
            frames: 6,
            length: 36,
            loop: false
        },
        {
            frame_start: 7,
            frames: 1,
            length: 4,
            loop: true
        },
        {
            frame_start: 8,
            frames: 1,
            length: 6,
            loop: false
        },
    ]
}

// ATTACK JUMP
detached_jake_data[? PS_FIRST_JUMP] = {
    sprite: sprite_get("jake_article_jump"),
    hurtbox: sprite_get("jake_article_idle_hurt"),
    next: PS_IDLE,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 4,
            loop: false
        },
        {
            frame_start: 1,
            frames: 6,
            length: 36,
            loop: false
        },
        {
            frame_start: 7,
            frames: 1,
            length: 4,
            loop: true
        },
        {
            frame_start: 8,
            frames: 1,
            length: 6,
            loop: false
        },
    ]
}

// NEUTRAL ATTACK
detached_jake_data[? PS_ATTACK_GROUND] = {
    sprite: sprite_get("jake_article_neutral_attack"),
    hurtbox: sprite_get("jake_article_neutral_attack_hurt"),
    next: PS_RESPAWN,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 1,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 2,
            frames: 4,
            length: 16,
            loop: false,
            end_attack: true
        }
    ]
}

// HORIZONTAL AIR PUNCH
detached_jake_data[? PS_ATTACK_AIR] = {
    sprite: sprite_get("jake_article_horizontal_attack"),
    hurtbox: sprite_get("jake_article_horizontal_attack_hurt"),
    next: PS_RESPAWN,
    state_data: [
        {
            frame_start: 0,
            frames: 3,
            length: 6,
            loop: false
        },
        {
            frame_start: 3,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 4,
            frames: 5,
            length: 20,
            loop: false,
            end_attack: true
        }
    ]
}


// BACKWARDS AIR THROW
detached_jake_data[? PS_WALL_TECH] = {
    sprite: sprite_get("jake_article_horizontal_throw_attack"),
    hurtbox: sprite_get("jake_article_horizontal_throw_attack_hurt"),
    next: PS_RESPAWN,
    state_data: [
        {
            frame_start: 0,
            frames: 3,
            length: 6,
            loop: false
        },
        {
            frame_start: 3,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 4,
            frames: 5,
            length: 15,
            loop: false,
            end_attack: true
        },
        {
            frame_start: 10,
            frames: 3,
            length: 15,
            loop: false
        },
        {
            frame_start: 13,
            frames: 3,
            length: 16,
            loop: false,
            end_attack: true
        },
    ]
}

detached_jake_data[? PS_DEAD] = {
	hurtbox: sprite_get("jake_article_idle_hurt") ,
} 

// VERTICAL AIR CLAP
detached_jake_data[? PS_DASH] = {
    sprite: sprite_get("jake_article_vertical_attack"),
    hurtbox: sprite_get("jake_article_vertical_attack_hurt"),
    next: PS_RESPAWN,
    state_data: [
        {
            frame_start: 0,
            frames: 3,
            length: 6,
            loop: false
        },
        {
            frame_start: 3,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 4,
            frames: 4,
            length: 20,
            loop: false,
            end_attack: true
        }
    ]
}

// FSPECIAL BALL ATTACK
detached_jake_data[? PS_PARRY] = {
    sprite: sprite_get("jake_article_fspecial"),
    hurtbox: sprite_get("jake_article_fspecial_hurt"),
    next: PS_IDLE,
    state_data: [
        {
            frame_start: 0,
            frames: 10,
            length: 20,
            loop: false
        },
        {
            frame_start: 10,
            frames: 2,
            length: 6,
            loop: false
        },
        {
            frame_start: 12,
            frames: 5,
            length: 20,
            loop: false,
            end_attack: true
        },
    ]
}

// STRETCH BACK TO FINN
detached_jake_data[? PS_RESPAWN] = {
    sprite: sprite_get("jake_article_stretch_start"),
    hurtbox: sprite_get("jake_article_stretch_start_hurt"),
    next: PS_LAND,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 4,
            loop: false
        },
        {
            frame_start: 1,
            frames: 1,
            length: 6,
            loop: false
        },
        {
            frame_start: 2,
            frames: 1,
            length: 14,
            loop: false,
        },
        {
            frame_start: 2,
            frames: 1,
            length: 6,
            loop: true
        }
    ]
}

// HURT STATE
detached_jake_data[? PS_HITSTUN] = {
    sprite: sprite_get("jake_article_hurt"),
    hurtbox: sprite_get("jake_article_idle_hurt"),
    next: PS_RESPAWN,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 6,
            loop: false
        },
        {
            frame_start: 1,
            frames: 1,
            length: 90,
            loop: false
        }
    ]
}

// NSPECIAL PUNCH
detached_jake_data[? PS_IDLE_AIR] = {
    sprite: sprite_get("jake_article_nspecial"),
    hurtbox: sprite_get("jake_article_nspecial_hurt"),
    next: PS_DOUBLE_JUMP,
    state_data: [
        {
            frame_start: 0,
            frames: 3,
            length: 18,
            loop: false
        },
        {
            frame_start: 3,
            frames: 1,
            length: 3,
            loop: false
        },
        {
            frame_start: 4,
            frames: 4,
            length: 16,
            loop: false,
            end_attack: true
        },
    ]
}

// TAUNT
detached_jake_data[? PS_PRATFALL] = {
    sprite: sprite_get("jake_article_taunt"),
    hurtbox: sprite_get("jake_article_taunt_hurt"),
    next: PS_IDLE,
    state_data: [
        {
            frame_start: 0,
            frames: 1,
            length: 5,
            loop: false
        },
        {	//LOOPS AS LONG AS FINN IS IN WINDOW 2 OR 3 OF SOLO TAUNT
            frame_start: 1,
            frames: 9,
            length: 36,
            loop: true
        },
        {
            frame_start: 10,
            frames: 2,
            length: 6,
            loop: false,
            end_attack: true
        },
    ]
}

set_victory_theme(sound_get("victory"))
loop_sound = noone

//put all attacks in here. disregard attack ground state
var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
// like this
attack_sprites[? AT_JAB] = {
    attack: sprite_get("jake_jab"),
    hurtbox: sprite_get("jab_hurt")
}
attack_sprites[? AT_DATTACK] = {
    attack: sprite_get("jake_dattack"),
    hurtbox: sprite_get("dattack_hurt")
}
attack_sprites[? AT_FTILT] = {
    attack: sprite_get("jake_ftilt"),
    hurtbox: sprite_get("ftilt_hurt")
}
attack_sprites[? AT_UTILT] = {
    attack: sprite_get("jake_utilt"),
    hurtbox: sprite_get("utilt_hurt")
}
attack_sprites[? AT_DTILT] = {
    attack: sprite_get("jake_dtilt"),
    hurtbox: sprite_get("dtilt_hurt")
}
attack_sprites[? AT_NAIR] = {
    attack: sprite_get("jake_nair"),
    hurtbox: sprite_get("jake_nair_hurt")
}
attack_sprites[? AT_FAIR] = {
    attack: sprite_get("jake_fair"),
    hurtbox: sprite_get("fair_hurt")
}
attack_sprites[? AT_BAIR] = {
    attack: sprite_get("jake_bair"),
    hurtbox: sprite_get("bair_hurt")
}
attack_sprites[? AT_UAIR] = {
    attack: sprite_get("jake_uair"),
    hurtbox: sprite_get("uair_hurt")
}
attack_sprites[? AT_DAIR] = {
    attack: sprite_get("jake_dair"),
    hurtbox: sprite_get("dair_hurt")
}
attack_sprites[? AT_FSTRONG] = {
    attack: sprite_get("jake_fstrong"),
    hurtbox: sprite_get("jake_fstrong_hurt")
}
attack_sprites[? AT_USTRONG] = {
    attack: sprite_get("jake_ustrong"),
    hurtbox: sprite_get("jake_ustrong_hurt")
}
attack_sprites[? AT_DSTRONG] = {
    attack: sprite_get("jake_dstrong"),
    hurtbox: sprite_get("jake_dstrong_hurt")
}
attack_sprites[? AT_NSPECIAL_2] = {
    attack: sprite_get("jake_nspecial2"),
    attack_air: sprite_get("jake_nspecial2_air"),
    hurtbox: sprite_get("nspecial2_hurt")
}

attack_sprites[? AT_FSPECIAL_2] = {
    attack: sprite_get("jake_fspecial2"),
    attack_air: sprite_get("jake_fspecial2_air"),
    hurtbox: sprite_get("fspecial2_hurt")
}
attack_sprites[? AT_USPECIAL] = {
    attack: sprite_get("jake_uspecial"),
    hurtbox: sprite_get("uspecial_hurt")
}

attack_sprites[? AT_DSPECIAL] = {
    attack: asset_get("empty_sprite"),
    hurtbox: sprite_get("dspecial_hurt")
}
attack_sprites[? AT_EXTRA_2] = {
    attack: sprite_get("jake_taunt2"),
    hurtbox: sprite_get("taunt2_hurt")
}

var keys = ds_map_keys(attack_sprites)
var values = ds_map_values(attack_sprites)
for (var i = 0; i < ds_map_size(attack_sprites); i++) {
	set_attack_value(keys[i], AG_HURTBOX_SPRITE, values[i].hurtbox)
}

var p = get_player_color(player)
var s = 7
jake_color = make_color_rgb( get_color_profile_slot_r(p, s), get_color_profile_slot_g(p, s), get_color_profile_slot_b(p, s) )

nspecial_spin_sound = noone
nspecial_sound_pitch = 0.9

fspecial_cache = false
nspecial_grabbed_opps = []