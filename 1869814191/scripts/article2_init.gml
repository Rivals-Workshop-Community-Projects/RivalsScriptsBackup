//article2_init

init = 0;

troll = player_id.trolled;

spr_dir = player_id.spr_dir;

spr_gaster_idle = [sprite_get("gaster_blaster"), sprite_get("t_gaster_blaster")];
spr_gaster_ready = [sprite_get("gaster_blaster_ready"), sprite_get("t_gaster_blaster_ready")];
spr_gaster_firing = [sprite_get("gaster_blaster_firing"), sprite_get("t_gaster_blaster_firing")];
spr_beam_start = [sprite_get("blaster_beam_start"), sprite_get("t_blaster_beam_start")];
spr_beam_strip = [sprite_get("blaster_beam"), sprite_get("t_blaster_beam")];
spr_beam_end = [sprite_get("blaster_beam_end"), sprite_get("t_blaster_beam_end")];

snd_blaster_fire = [sound_get("sfx_blaster_fire"), sound_get("sfx_lazar_fire")];

sprite_index = spr_gaster_idle[troll];
mask_index = spr_gaster_idle[0];
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
grounds = 1;
walls = 1;
dir = 0;
is_hittable = true;
can_be_hit[player] = 2;
//hbox = noone;

accel = .02;
ground_friction = .02;
anim_timer = 0;

sansBeamLen = 999;
with player_id {
    other.sansBeamLen = get_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH);   
} //so its not a pain in the ass to adjust the gaster blaster later

state_len = [18, 12, 8, 5, 20];
frames = [4, 20, 4, 5, 10];

//state_len = [50, 8, 60, 20];
//frames = [4, 4, 10, 10];
scale_timer = 0;
blast_timer = 0;
second = 60;

charge = 0;

charge_mid = 30;
charge_max = 60;

knock_growth_min = 0.35;
knock_growth_mid = 0.5;
knock_growth_max = 0.8;

knock_angle_min = 75;
knock_angle_mid = 60;
knock_angle_max = 45;