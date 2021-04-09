//article2_init

init = 0;

depth = -5;

air_hurtbox_spr = sprite_get("fspecial_spin");
spin_spr = sprite_get("fspecial_spin");
off_spr = sprite_get("fspecial_spin_off");
expl_spr = sprite_get("fspecial_explode");
tele_spr = sprite_get("fspecial_tele");
open_spr = sprite_get("fspecial_spin_off");

inactive_sound = asset_get("sfx_rag_mark");

active_sound = 0;

disk_spr = open_spr;
sprite_index = open_spr;
mask_index = spin_spr;

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
player_code3 = 0;
player_code4 = 0;
player_color = 0;

lockout = 0;
lockout_max = 240;

build_time = 5;
dist = 0;
distBox = 0;
hBox = noone;
direc = 0;
accel = .007;//.005
accel_mod = 100;
if has_rune("B") accel_mod = 300;
fric = 1;
hit_op = 1;
last_hit_op = 0;
hit_sp = 0;
near_hit = 16;
far_hit = 64;
hit_cd = 0;
hit_cd_max = 60;
hit_accel = 0;
hit_jerk = 7/8;
if has_rune("A") {
    hit_jerk_b = 19/21;
    hit_jerk_m = 11/21;
} else {
    hit_jerk_b = 7/8;
    hit_jerk_m = 5/8;
}
hit_jerk_mod = 1;
hit_since = 0;
exploding = 0;
hit_cd2 = 0;
hit_cd2_max = 10;

hbox_frames = 0;

with player_id {
    other.upb_startup =  get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
    other.hBox_sfx = get_hitbox_value(AT_FSPECIAL,2,HG_HIT_SFX);
    other.hBox_vfx = get_hitbox_value(AT_FSPECIAL,2,HG_VISUAL_EFFECT);
}

player_hit = player;
hit_damage = 0;
last_hitbox = noone;

max_star = 1;

//Proj Vars
hitSpeed = 4;
hitAngle = 60;
hit_box = 0;
has_bhit = 0;

