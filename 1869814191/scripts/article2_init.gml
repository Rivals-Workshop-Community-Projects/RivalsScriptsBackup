//article2_init

init = 0;

troll = player_id.trolled;

spr_gaster_idle = [sprite_get("gaster_blaster"), sprite_get("t_gaster_blaster")]
spr_gaster_ready = [sprite_get("gaster_blaster_ready"), sprite_get("t_gaster_blaster_ready")]
spr_gaster_firing = [sprite_get("gaster_blaster_firing"), sprite_get("t_gaster_blaster_firing")]
spr_beam_start = [sprite_get("blaster_beam_start"), sprite_get("t_blaster_beam_start")]
spr_beam_strip = [sprite_get("blaster_beam"), sprite_get("t_blaster_beam")]

snd_blaster_fire = [sound_get("sfx_blaster_fire"), sound_get("sfx_lazar_fire")];

sprite_index = spr_gaster_idle[troll]
mask_index = spr_gaster_idle[0]
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

accel = .02;
ground_friction = .02;
anim_timer = 0;

state_len = [50, 8, 60, 20];
frames = [4, 4, 10, 10];
scale_timer = 0;
blast_timer = 0;
second = 60;