//article2_init.gml
//fs bg

sprite_index = sprite_get("fx_fs_bg");
uses_shader = false;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
depth = 30;

anim_timer = 0;
fire_speed = 0.3;
max_alpha = 0.75;
alpha_fade_speed = 0.05;
image_alpha = 0;

fs_sound = sound_play(sound_get("sfx_bluetornado_start"), false, 0, 0.4, 0.1);

loopvar = 0;