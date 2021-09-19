//article1_init - dust

init = 0;
sprite_index = asset_get("empty_sprite");
image_alpha = 1;

depth = -10;

state_timer = 0;
state_end = 30;

particle_type = 0; //0 dust, 1 sparkle
dust_type = 0;
sparkle_type = 0;
i_hsp = 0;
i_vsp = 0;
i_alpha = 0;
no_lerp = false;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;