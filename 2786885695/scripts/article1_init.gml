//article1_init - lightning stilleto

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

state = 0;
state_timer = 0;
despawn_time = 300;
active_time = 0;

play_anim = false;

image_xscale = 2;
image_yscale = 2;

p_col = get_player_hud_color(player);

stilleto_offscreen = false;
arrow_image = 0;
offscreen_x_pos = 0;
offscreen_y_pos = 0;