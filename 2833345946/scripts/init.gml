/*
custom hilt attacks

JAB = AT_EXTRA_1

*/

default_sprites = [
    sprite_get("idle"),
    sprite_get("walk"),
    sprite_get("dash"),
    sprite_get("walljump"),
    sprite_get("walkturn"),
    sprite_get("crouch"),
    sprite_get("jumpstart"),
    sprite_get("jump"),
    sprite_get("doublejump"),
    sprite_get("land"),
    sprite_get("landinglag"),
    sprite_get("waveland"),
    sprite_get("pratfall"),
    sprite_get("hurt"),
    sprite_get("bighurt"),
    sprite_get("hurtground"),
    sprite_get("bouncehurt"),
    sprite_get("downhurt"),
    sprite_get("uphurt"),
    sprite_get("spinhurt"),
    sprite_get("airdodge"),
    sprite_get("waveland"),
    sprite_get("tech"),
    sprite_get("dashstart"),
    sprite_get("dashturn"),
    sprite_get("dashstop"),
    sprite_get("parry"),
    sprite_get("roll_forward"),
    sprite_get("roll_backward")
];

hilt_sprites = [
    sprite_get("idle_hilt"),
    sprite_get("walk_hilt"),
    sprite_get("dash_hilt"),
    sprite_get("walljump_hilt"),
    sprite_get("walkturn_hilt"),
    sprite_get("crouch_hilt"),
    sprite_get("jumpstart_hilt"),
    sprite_get("jump_hilt"),
    sprite_get("doublejump_hilt"),
    sprite_get("land_hilt"),
    sprite_get("landinglag_hilt"),
    sprite_get("waveland_hilt"),
    sprite_get("pratfall_hilt"),
    sprite_get("hurt_hilt"),
    sprite_get("bighurt_hilt"),
    sprite_get("hurtground_hilt"),
    sprite_get("bouncehurt_hilt"),
    sprite_get("downhurt_hilt"),
    sprite_get("uphurt_hilt"),
    sprite_get("spinhurt_hilt"),
    sprite_get("airdodge_hilt"),
    sprite_get("waveland_hilt"),
    sprite_get("tech_hilt"),
    sprite_get("dashstart_hilt"),
    sprite_get("dashturn_hilt"),
    sprite_get("dashstop_hilt"),
    sprite_get("parry_hilt"),
    sprite_get("roll_forward_hilt"),
    sprite_get("roll_backward_hilt")
];

//for sword acquire flash
draw_sprites = [
    sprite_get("idle_draw"),
    sprite_get("walk_draw"),
    sprite_get("dash_draw"),
    sprite_get("walljump_draw"),
    sprite_get("walkturn_draw"),
    sprite_get("crouch_draw"),
    sprite_get("jumpstart_draw"),
    sprite_get("jump_draw"),
    sprite_get("doublejump_draw"),
    sprite_get("land_draw"),
    sprite_get("landinglag_draw"),
    sprite_get("waveland_draw"),
    sprite_get("pratfall_draw"),
    undefined,//sprite_get("hurt_draw"),
    undefined,//sprite_get("bighurt_draw"),
    undefined,//sprite_get("hurtground_draw"),
    undefined,//sprite_get("bouncehurt_draw"),
    undefined,//sprite_get("downhurt_draw"),
    undefined,//sprite_get("uphurt_draw"),
    undefined,//sprite_get("spinhurt_draw"),
    sprite_get("airdodge_draw"),
    sprite_get("waveland_draw"),
    sprite_get("tech_draw"),
    sprite_get("dashstart_draw"),
    sprite_get("dashturn_draw"),
    sprite_get("dashstop_draw"),
    sprite_get("parry_draw"),
    sprite_get("roll_forward_draw"),
    sprite_get("roll_backward_draw")
];

attack_sprites = [
    sprite_get("jab"),
    sprite_get("ftilt"),
    sprite_get("utilt"),
    sprite_get("dtilt"),
    sprite_get("dattack"),
    sprite_get("nair"),
    sprite_get("fair"),
    sprite_get("uair"),
    sprite_get("bair"),
    sprite_get("dair"),
    sprite_get("fstrong"),
    sprite_get("ustrong"),
    sprite_get("dstrong"),
    sprite_get("uspecial"),
    sprite_get("dspecial"),
    sprite_get("fspecial"),
    sprite_get("nspecial_hilt"),
    sprite_get("wallattack")
]

attack_draw_sprites = [
    sprite_get("jab_draw"),
    sprite_get("ftilt_draw"),
    sprite_get("utilt_draw"),
    sprite_get("dtilt_draw"),
    sprite_get("dattack_draw"),
    sprite_get("nair_draw"),
    sprite_get("fair_draw"),
    sprite_get("uair_draw"),
    sprite_get("bair_draw"),
    sprite_get("dair_draw"),
    sprite_get("fstrong_draw"),
    sprite_get("ustrong_draw"),
    sprite_get("dstrong_draw"),
    sprite_get("uspecial_draw"),
    sprite_get("dspecial_draw"),
    sprite_get("fspecial_draw"),
    sprite_get("nspecial_draw"),
    sprite_get("wallattack_draw")
]

//custom colour
custom_slot = 8
num_shades = 6
bit_length = floor(32/num_shades)
bit_cols = power(2, bit_length)
default_colours = [ //default colours for custom slot
    [245, 245, 247],
    [193, 161, 201],
    [205, 115, 12],
    [173, 57, 7],
    [194, 70, 251],
    [130, 24, 196]
]

is_reckless = true

isOnline = false

vfx_large_sword = hit_fx_create(sprite_get("vfx_large_sword"), 24)
vfx_medium_sword = hit_fx_create(sprite_get("vfx_medium_sword"), 24)
vfx_small_sword = hit_fx_create(sprite_get("vfx_small_sword"), 24)

pickup_alpha = 0 //for drawing pickup flash

//practice mode detector
playtest = (object_index == oTestPlayer);
practice_mode = false;

timer = 0
height_timer = 0

stance = false //true if hilt stance
switched = false //true if switched stance in the attack

nspec_multishot = false

AG_STANCE_SPRITE = 100 //sprite for hilt stance

sfx_metal_grind = sound_get("metal_grind")

vfx_smoke = hit_fx_create(sprite_get("smoke_particle"), 24)
vfx_dspec = hit_fx_create(sprite_get("dspecial_vfx"), 20)

sword_proj = undefined //mantis lord proj


//online detector
if timer <= 1 {
    var hudCol = get_player_hud_color(player);
    var hudR = color_get_red(hudCol)
    var hudG = color_get_green(hudCol)
    var hudB = color_get_blue(hudCol)
    
    var hudOnline = [[66,229,100],[132,106,233],[238,28,143],[220,140,0]]
    
    var onlineCol = undefined;
    for (var i = 0; i < array_length_1d(hudOnline); i++) {
    	if hudR == hudOnline[i][0] && hudG == hudOnline[i][1] && hudB == hudOnline[i][2] {
    		isOnline = true;
    	}
    }
}

//custom colour online coding stuff
var apply_alt = true
if isOnline {
    //check if custom alt has default colours
    for (var i = 0; i < array_length_1d(default_colours); i++) {
        if  get_color_profile_slot_r(custom_slot, i) != default_colours[i][0] ||
            get_color_profile_slot_g(custom_slot, i) != default_colours[i][1] || 
            get_color_profile_slot_b(custom_slot, i) != default_colours[i][2] {
            apply_alt = false
        }
    }
} else {
    apply_alt = false
}

print(apply_alt)

//custom colour is default, apply the custom alt
if apply_alt {
    var split_var = split_synced_var()
    print(split_var)
    
    //generate predetermined colours
    predetermined_cols = []
    for (var i = 0; i < num_shades; i++) {
        var base_col = make_color_rgb(get_color_profile_slot_r(0, i), get_color_profile_slot_g(0, i), get_color_profile_slot_b(0, i))
        var _arr = [] //generic white and black col
        for (var j = 0; j < bit_cols; j++) {
            array_push(_arr, make_color_hsv((color_get_hue(base_col) + j*256/(bit_cols)) mod 256,clamp(color_get_saturation(base_col), 64, 255),color_get_value(base_col)))
        }
        array_push(predetermined_cols, _arr)
    }
    
    //apply custom colour to current slot
    for (var i = 0; i < num_shades; i++) {
        var player_col = get_player_color(player)
        var _index = split_var[i]
        var setcol = predetermined_cols[i][_index]
        set_color_profile_slot(player_col, i, color_get_red(setcol),color_get_green(setcol),color_get_blue(setcol));
    }
}



hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

can_wall_cling = true;
walljump_timer = 0;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.45; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 18;
wall_frames = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.48;
hitstun_grav = 0.50;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

#define split_synced_var()
///args chunk_lengths...
var _len = floor(32/num_shades)
var num_chunks = num_shades;
var chunk_arr = array_create(num_shades);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_mask = (1 << _len)-1
    chunk_offset += _len;
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
}
//print(chunk_arr);
return chunk_arr;