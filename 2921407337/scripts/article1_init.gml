//Dspecial Lightning Cloud

//Article Visual Section
sprite_index = sprite_get("hfx_dspecial_thunder_cloud");//
mask_index = sprite_get("hfx_dspecial_thunder_cloud"); //
depth = -3;
image_blend = c_white;
image_alpha = .75;
image_index = 0;
image_xscale = 1;
image_yscale = 1;

// Movement Variables

// State Control
state = 0;
state_timer = 0;
window = 0;
window_timer = 0;
hitpause = false; //in hitpause or not
hitstop = 0; //The number of frames remaining until hitpause ends
hitstop_full = 0; //The number of frames this instance of hitpause lasts total
total_timer = 0;

// Other Variables
unbashable = 1;
//was_parried = false;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
// Article Specific variables
segment_hitbox_ID = noone;
thunder_hit_player_flag = false;

// Set Sprites to Variables
cloud_sprite = sprite_get("hfx_dspecial_thunder_cloud");
segment_sprite = sprite_get("hfx_dspecial_thunder_segment");
bottom_sprite = sprite_get("hfx_dspecial_thunder_bottom");