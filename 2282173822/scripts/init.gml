//Trummel & Alto specific

//Gimmick state
snail = false;
lightning = 0;
lightning_max = 360;
prev_lightning = 0;
snail_airdodge_saved = false;
can_board_cloud = true;
flash_timer = 0;
flash_timer_max = 10;

intro_height = 0;

//Colors
var mult = 1.5;

var color_slot = 4; // for lightning color
switch(get_player_color(player)){
    case 05: // black and blue
    case 11: // orange, black, white
        color_slot = 0; // shell
        break;
}

lightning_color = [
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), color_slot) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), color_slot) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), color_slot) * mult, 0, 255)
    ),
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), color_slot + 1) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), color_slot + 1) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), color_slot + 1) * mult, 0, 255)
    )
];

mult = 0.5;
lightning_cloud_color = [
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), 2) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), 2) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), 2) * mult, 0, 255)
    ),
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), 3) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), 3) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), 3) * mult, 0, 255)
    ),
];

mult = 1;
cloud_color = [
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), 2) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), 2) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), 2) * mult, 0, 255)
    ),
    make_color_rgb(
    	clamp(get_color_profile_slot_r(get_player_color(player), 3) * mult, 0, 255),
    	clamp(get_color_profile_slot_g(get_player_color(player), 3) * mult, 0, 255),
    	clamp(get_color_profile_slot_b(get_player_color(player), 3) * mult, 0, 255)
    )
];

cloud_color_middle = [
    make_color_rgb(
    	lerp(cgr(lightning_cloud_color[0]), cgr(lightning_color[0]), 0.5),
    	lerp(cgg(lightning_cloud_color[0]), cgg(lightning_color[0]), 0.5),
    	lerp(cgb(lightning_cloud_color[0]), cgb(lightning_color[0]), 0.5)
    ),
    make_color_rgb(
    	lerp(cgr(lightning_cloud_color[1]), cgr(lightning_color[1]), 0.5),
    	lerp(cgg(lightning_cloud_color[1]), cgg(lightning_color[1]), 0.5),
    	lerp(cgb(lightning_cloud_color[1]), cgb(lightning_color[1]), 0.5)
    )
];

cloud_col_target = cloud_color;
cloud_hud_target = cloud_color;
true_cloud_color = cloud_color;
true_hud_color = cloud_color;

//Clouds
max_clouds = 4; //including alto

//Misc
dattack_jump_airdodge_saved = false;
strong_cooldown = 0;
strong_cooldown_max = 90; // 60
load_codecs = false;



//Trummel's favorite food is cucumbers.



//Stats

stat_init_dash = [6, 7];
stat_dash = [6.5, 8];
stat_air = [5.5, 6.5];
stat_air_accel = [0.3, 0.4];

//Physical size
char_height = 60;
knockback_adj = 1.15;

//Animation speeds (who cares)
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

//Ground movement
walk_speed = 3.25;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = stat_init_dash[0];
dash_speed = stat_dash[0];
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35;
ground_friction = 0.5;
moonwalk_accel = 1;
    
//Air movement
leave_ground_max = 6.5;
max_jump_hsp = 6.5;
air_max_speed = stat_air[0];
jump_change = 3;
air_accel = stat_air_accel[0];
prat_fall_accel = 0.8;
air_friction = .03;
max_fall = 11;
fast_fall = 15;
gravity_speed = .5;
hitstun_grav = .5;

//Jumps
jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10; // 9
max_djumps = 1;
double_jump_time = 36;          //Can't be less than 31...?
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;

//Landing and wavelanding
land_time = 4;
prat_land_time = 8; // 16
wave_land_time = 8;
wave_land_adj = 1.3;
wave_friction = 0.1;



//Animation Frames

//Crouch
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;     //crouch last frame must be duplicated in sprite sheet. dan moment

//Parry
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//Tech
tech_active_frames = 2;
tech_recovery_frames = 1;

//Tech roll
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 7.5;
roll_backward_max = 7.5;



//Sprites

//Ground
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

spr_idle_air = sprite_get("idle_air");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

//Attack
spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_ftilt = sprite_get("ftilt");
spr_dtilt = sprite_get("dtilt");
spr_utilt = sprite_get("utilt");
spr_nair = sprite_get("nair");
spr_fair = sprite_get("fair");
spr_bair = sprite_get("bair");
spr_uair = sprite_get("uair");
spr_dair = sprite_get("dair");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_nspecial_2 = sprite_get("nspecial_2");
spr_fspecial = sprite_get("fspecial");
spr_fspecial_2 = sprite_get("fspecial_2");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_taunt = sprite_get("taunt");
spr_taunt_2 = sprite_get("taunt_2");

//HUD
spr_hud_cloud = sprite_get("hud_cloud");

//VFX
spr_vfx_woag = sprite_get("vfx_woag");
spr_vfx_rain_splash = sprite_get("vfx_rain_splash");
spr_vfx_rain_drop = sprite_get("vfx_rain_drop");

//Cloud
spr_cloud_mask = sprite_get("cloud_mask");
spr_cloud_idle = sprite_get("cloud_idle");
spr_cloud_spawn = sprite_get("cloud_spawn");
spr_cloud_die = sprite_get("cloud_die");
spr_cloud_explode = sprite_get("cloud_explode");
spr_cloud_uspecial = sprite_get("cloud_uspecial");
spr_cloud_fspecial = sprite_get("cloud_fspecial");
spr_cloud_nspecial = sprite_get("cloud_nspecial");
spr_cloud_trumpet = sprite_get("cloud_trumpet");

//Trummel, and Alto
spr_snail_idle = sprite_get("snail_idle");
spr_snail_land = sprite_get("snail_land");
spr_alto_spawn = sprite_get("alto_spawn");
spr_alto_idle = sprite_get("alto_idle");

//Projectiles
spr_fstrong_proj = sprite_get("fstrong_proj");
spr_ustrong_proj = sprite_get("ustrong_proj");
spr_dstrong_proj = sprite_get("dstrong_proj");
spr_dstrong_proj_mask = sprite_get("dstrong_proj_mask");
spr_dspecial_proj = sprite_get("dspecial_proj");
spr_dspecial_proj_final = sprite_get("dspecial_proj_final");
spr_bolt_main = sprite_get("bolt_main");
spr_bolt_bottom = sprite_get("bolt_bottom");

//Misc.
spr_empty = sprite_get("empty");
spr_intro = sprite_get("intro");
spr_plat_behind = sprite_get("plat_behind");
spr_lightning_fstrong = sprite_get("lightning_fstrong");
spr_lightning_ustrong = sprite_get("lightning_ustrong");
spr_lightning_dstrong = sprite_get("lightning_dstrong");
spr_lightning_dspecial = sprite_get("lightning_dspecial");

//Temp
spr_hud_strong_cooldown = sprite_get("hud_strong_cooldown");



//SFX
sfx_brass_1 = sound_get("brass_1");
sfx_brass_2 = sound_get("brass_2");
sfx_brass_hit = sound_get("brass_hit");
sfx_brass_melee = sound_get("brass_melee");
sfx_brass_stun = sound_get("brass_stun");
sfx_glass_break = sound_get("glass_break");

sfx_ssbu_bow_charge = sound_get("ssbu_bow_charge");
sfx_ssbu_screw_attack = sound_get("ssbu_screw_attack");
sfx_ssbu_shock = sound_get("ssbu_shock");
sfx_ssbu_shock_big = sound_get("ssbu_shock_big");
sfx_ssbu_exit = sound_get("ssbu_exit");
sfx_ssbu_water = sound_get("ssbu_water");
sfx_ssbu_squid1 = sound_get("ssbu_squid1");
sfx_ssbu_squid2 = sound_get("ssbu_squid2");



//Misc.

hud_handler = {
    sprite_index: spr_hud_cloud,
    image_index: 0,
    state: 0,
    state_timer: 0,
    dead: false,
    meter_width: 0,
    strong_flashing_except: false
};

//VFX init
vfx_woag = hit_fx_create(spr_vfx_woag, 54);
vfx_rain_splash = hit_fx_create(spr_vfx_rain_splash, 24);
vfx_rain_drop = hit_fx_create(spr_vfx_rain_drop, 24);
vfx_stasis_chains = hit_fx_create(sprite_get("vfx_stasis_chains"), 21);
vfx_ssj3_lightning = hit_fx_create(sprite_get("vfx_ssj3_lightning"), 24);

//Hurtbox sprites
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_trummel"));

//SFX
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


sfx_pho_close1 = sound_get("_pho_close1");
sfx_pho_close2 = sound_get("_pho_close2");
sfx_pho_move = sound_get("_pho_move");
sfx_pho_open1 = sound_get("_pho_open1");
sfx_pho_open2 = sound_get("_pho_open2");
sfx_pho_select1 = sound_get("_pho_select1");
sfx_pho_select2 = sound_get("_pho_select2");

muno_event_type = 0;
user_event(14);
user_event(1);

codec_video = 0;



#define cgr(col)

return color_get_red(col);

#define cgg(col)

return color_get_green(col);

#define cgb(col)

return color_get_blue(col);