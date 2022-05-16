// article_init is used when the article object is created.

frozen = false;

draw_circle = 0;
circle_x = x;
circle_y = y
should_draw = false;

sprite_index = sprite_get("bubble");
image_index = 0;
image_alpha = 1;

holy_bubble = true

vsp = -7;

hitpause = false;

time_alive = 0;
should_die = false;

//offscreen stuff
array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_example"); // icon to display
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 16; // approximate width/height of obj