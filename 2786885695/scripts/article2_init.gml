//article2_init - electro afterimage

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0;
state_timer = 0;
despawn_time = 300;

play_anim = false;

//image_xscale = 2;
//image_yscale = 2;
hitbox = noone;

p_col = get_player_hud_color(player);

afterimage_offscreen = false;
arrow_image = 0;
offscreen_x_pos = 0;
offscreen_y_pos = 0;