//article2_init

sprite_index = sprite_get("nspecial_portal");
image_alpha = 0;
image_speed = 0;

vanda_in_nspecial = 0;

state = 0;
state_timer = 0;

is_exit = false;
following = noone;

lifetime = 60;

other_portal = noone;

can_be_grounded = true;
ignores_walls = false;

detect_x = [1,17,33];


array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_portal"); // icon to display
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 16; // approximate width/height of obj

//asset_get() caching
a_hud_life_spr = asset_get("hud_life_spr");