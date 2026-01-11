//article1_init.gml

state = 0;
state_timer = 0;
spr_dir = player_id.spr_dir;

sprite_index = sprite_get("giraffe");
image_index = 13;

hsp = 2.6 * spr_dir;
vsp = 0;

is_hittable = true;

depth = 3;

//custom article variables for your comfort
article_width = 100;                         // - the width of the article in pixels
article_height = 60;                        // - the height of the article in pixels - used for the arrow indicator

state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

blastzone_l = get_stage_data(SD_LEFT_BLASTZONE_X);
blastzone_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
blastzone_t = get_stage_data(SD_TOP_BLASTZONE_Y);
blastzone_b = get_stage_data(SD_BOTTOM_BLASTZONE_Y);

lifetime = 0;
giraffe_health = 25;
giraffe_owner = player;
my_hbox = noone;
///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////