//trailer_mode = true;
//reveal_mode = false;

hurtbox_spr = sprite_get("1_idlehbox");
crouchbox_spr = sprite_get("2_crouchhbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .165;
dash_anim_speed = .165;
pratfall_anim_speed = .25;

//quick wait anim setup
//wait_time = sprite_get_number(sprite_get("idle"))*(4/*[Amount of Idle Loops]*/)/idle_anim_speed
//wait_length = sprite_get_number(sprite_get("uptaunt")) * 10;//replace last number with amount of in-game frame each anim-frame plays
//wait_sprite = sprite_get("uptaunt");//put the wait anim sprite here

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.0; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ori");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("bigpunch_sfx");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

nspecial_trail = hit_fx_create(sprite_get("nspecial_trail"), 15);
//normal_nspecial_color = make_color_rgb(random_func_2(other.player+2,255,true), random_func_2(other.player+3,255,true),random_func_2(other.player+4,255,true));

//vfx
ftilt_linger = hit_fx_create(sprite_get("ftilt_linger"), 12);
dtilt_linger = hit_fx_create(sprite_get("dtilt_linger"), 9);
nair_linger1 = hit_fx_create(sprite_get("nair_linger1"), 8);
nair_linger2 = hit_fx_create(sprite_get("nair_linger2"), 8);
bair_low = hit_fx_create(sprite_get("bair_linger_low"), 12);
bair_mid = hit_fx_create(sprite_get("bair_linger_mid"), 12);
bair_high = hit_fx_create(sprite_get("bair_linger_high"), 12);
jab1_linger = hit_fx_create(sprite_get("jab1_linger"), 12);
jab2_linger = hit_fx_create(sprite_get("jab2_linger"), 12);
jab3_linger = hit_fx_create(sprite_get("jab3_linger"), 16);
dair_linger = hit_fx_create(sprite_get("dair_linger"), 16);
fair_linger = hit_fx_create(sprite_get("fair_linger"), 12);
utilt_linger = hit_fx_create(sprite_get("utilt_linger"), 12);
parry_vfx = hit_fx_create(sprite_get("parry_vfx"), 12);
nspec_linger = hit_fx_create(sprite_get("nspecial_linger"), 15);
nspec_charge_linger = hit_fx_create(sprite_get("nspecial_charge_linger"), 15);
uair_linger = hit_fx_create(sprite_get("uair_linger"), 8);
fstrong_linger = hit_fx_create(sprite_get("fstrong_linger"), 16);
dattack_linger = hit_fx_create(sprite_get("dattack_linger"), 3);

hfx_small = hit_fx_create(sprite_get("hfx_small"), 24);
hfx_big = hit_fx_create(sprite_get("hfx_big"), 27);
hfx_tiny = hit_fx_create(sprite_get("hfx_tiny"), 21);


poof_disappear =  hit_fx_create(sprite_get("vfx_poof_disappear"), 18);
poof_reappear =  hit_fx_create(sprite_get("vfx_poof_reappear"), 18);
airdodge_pos_x = 0;
airdodge_pos_y = 0;
airdodge_player_col = get_player_hud_color(player);

bobomb_explosion = hit_fx_create(sprite_get("explosion"), 28);

particles = ds_list_create()


ustrong_multihits = 0;
ustrong_ring_timer = 0;

toadie_smoke = hit_fx_create(sprite_get("toadie_smoke"), 18);

ustrong_ring_offset = -114;
ustrong_ring_separation = 20;

ustrong_rings = []
ustrong_ring_state_format = [
    {
        frames: 2,
        frame_start: 0,
        length : 8
    },
    {
        frames: 1,
        frame_start: 2,
        length : 2,
        loop:true
    },
    {
        frames: 4,
        frame_start: 3,
        length : 12
    },
]

vfx_charge_stored = hit_fx_create(sprite_get("nspecial_charge_full_vfx"), 24);

is_attacking = false;

vfx_shockwave = hit_fx_create(sprite_get("shock"), 22);

part_shapes_name = "part_shapes"
part_shapes = []
for (var i = 1; i < 7; i++) {
    array_push(part_shapes, hit_fx_create(sprite_get(part_shapes_name + string(i)), 12))
}


taunt_sound = noone;


fspecial_timer = 0;
fspecial_max_time = 20;
fspecial_dir = 0;

fspec_poof_start = hit_fx_create(sprite_get("fspec_broom_appear"), 18);
fspec_poof_end = hit_fx_create(sprite_get("fspec_broom_disappear"), 18);

fspec2_proj_trail = hit_fx_create(sprite_get("fspecial2_proj"), 15);

magic_hue_offset = 0; //fspec2 colors
magic_hue_speed = 6; //change this to change the speed of the hueshift
magic_color_rgb = noone;
magic_hue = 0;
magic_color_hsv = 0;

shell_break_vfx = hit_fx_create(sprite_get("shell_break"), 24);

//Charge
nspecial_charge = 0;
nspecial_loops = 0;
nspec_loop_sfx = noone;
nspec_loop_timer = 0;
nspec_fully_charged = false;
nspecial_max_charge = 60

nspecial_spr = sprite_get("nspecial_normal_shapes");
nspec_small_cooldown = 0;
nspec_cooldown_max = 45;
nspec_is_casting = false;

nspec_lose_charge = hit_fx_create(sprite_get("vfx_lose_charge"), 15);

fspecial_ledgeforgiven = false;




nspecial_destroyfx=hit_fx_create(sprite_get("nspecial_destroyfx"), 24)
nspecial_colors = [$fff000, $37ff99, $2d49ff]
nspecial_color = 0;

jab_should_skip = false;

ustrong_sound = noone;
ustrong_smallhfx = [ hit_fx_create(sprite_get("ring1_smallhfx"), 24), hit_fx_create(sprite_get("ring2_smallhfx"), 24) ]
ustrong_bighfx = [ hit_fx_create(sprite_get("ring1_bighfx"), 27), hit_fx_create(sprite_get("ring2_bighfx"), 27), hfx_big ]

//uspec
uspec_vfx = hit_fx_create(sprite_get("uspec_vfx"), 18);
uspec_second_teleport = false;
uspec_start_pos_x = 0;
uspec_start_pos_y = 0;

//dstrong
dstrong_poof_start = hit_fx_create(sprite_get("dstrong_appear_vfx"), 15);
dstrong_poof_end = hit_fx_create(sprite_get("dstrong_disappear_vfx"), 18);

//Toadie
dspec_laugh = noone;

toadie_obj = noone;
hfx_toadie_grab = hit_fx_create(sprite_get("hfx_toadie_grab"), 18)

toadie_animations = ds_map_create()
toadie_animations[? PS_IDLE] = {
    sprite:sprite_get("toady_idle"),
    windows:[
        {
            frames:6,
            frame_start:0,
            length:32,
            loop:true
        }        
    ]
}

toadie_animations[? PS_ATTACK_AIR] = {
    sprite:sprite_get("toady_carry"),
    windows:[
        {
            frames:6,
            frame_start:0,
            length:24,
            loop:true
        }        
    ]
}
toadie_animations[? PS_SPAWN] = {
    sprite:sprite_get("toady_spawn"),
    windows:[
        {
            frames:5,
            frame_start:0,
            length:20,
            loop:false
        }        
    ]
}

toadie_animations[? PS_ATTACK_GROUND] = {
    sprite:sprite_get("toady_grab"),
    windows: [
        {
            frames:2,
            frame_start:0,
            length:4,
            loop:false
        },
        {
            frames:1,
            frame_start:2,
            length:4,
            loop:false
        },
        {
            frames:5,
            frame_start:3,
            length:24,
            loop:false
        }
    ]
}

toadie_animations[? PS_DEAD] = {
    sprite:sprite_get("toady_die"),
    windows:[
        {
            frames:1,
            frame_start:0,
            length:5,
            loop:true
        }        
    ]
}

//this is just here to fix the toady death animation.
kamek_particles_obj = instance_create(0, 0, "obj_article2");


//VICTORY MUSIC AND BG SET ---------------------------------------------------------------------------------
set_victory_bg( sprite_get( "kamek_victory" )); //Victory BackGround
set_victory_theme(sound_get("victory2")); //Victory BGMusic
//remove the slashes at the start of the lines to use the above 2

//hfx template ---------------------------------------------------------------------------------
//[hit fx name] = hit_fx_create( sprite_get( "[hit fx sprite name]" ), [lifetime/length]);

//hit particles ---------------------------------------------------------------------------------
//just put the sprites into the sprites folder, named as hit_particle[number], like hit_particle1, up to 1-6
//or use below to change mid-game
//set_hit_particle_sprite( [number, start with 1, up to 6], sprite_get("[hit particle sprite name]"));

//usual variables i use ---------------------------------------------------------------------------------
maioeseeanimframes = 0; //I usually use a variable to control image_index/anim frames for animation.gml
//if youre using this as a template, replace "maiosee" with your char's name. 
//unique variables = less mess with other variable owners

intro_laugh = noone;

//Image Mask
start_predraw = false;

playtest_active = false;
with (oTestPlayer) playtest_active = true;

//woodcock support
i = 80;

AG_MUNO_ATTACK_NAME = 70;
AG_MUNO_ATTACK_MISC = 71;		        // Enter a string for info

AG_MUNO_ATTACK_ENDLAG = 72;
AG_MUNO_WINDOW_EXCLUDE = 73;
AG_MUNO_ATTACK_FAF = 74;

HG_MUNO_HITBOX_EXCLUDE = i; i++;		// Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME = i; i++;			// Enter a string to override hitbox name

HG_MUNO_HITBOX_ACTIVE = i; i++;			// Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE = i; i++;			// Enter a string to override damage
HG_MUNO_HITBOX_BKB = i; i++;			// Enter a string to override base knockback
HG_MUNO_HITBOX_KBG = i; i++;			// Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE = i; i++;			// Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY = i; i++;		// Enter a string to override priority
HG_MUNO_HITBOX_GROUP = i; i++;			// Enter a string to override group
HG_MUNO_HITBOX_BHP = i; i++;			// Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG = i; i++;			// Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC = i; i++;			// Enter a string to override the auto-generated misc notes (which include misc properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD = i; i++;		// Enter a string to ADD TO the auto-generated misc notes, not override (line break will be auto-inserted)

kamek_hud_inited = true;