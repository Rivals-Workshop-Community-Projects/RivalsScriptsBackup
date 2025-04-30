//article1_init.gml



can_be_grounded = true;                    // - allows articles to stick to platforms
ignores_walls = false;                       // - checks if article can go through walls, if true it can
uses_shader = true;                         // - if the article is recolored with the player
is_hittable = false;                         // - if true, it allows the article to be hittable
depth = 3;                                  // - sets the layer it draws the article on, positive numbers go further back

//sprite_index = sprite_get("artc_spawn");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("artc_mask");        // - sets the mask of the article, it decides the article's detection space
//if you don't have a mask index, remove the code from line 68 in article1_post_draw.gml
image_index = 0;                            // - sets the current frame of the article


//custom article variables for your comfort
article_width = 64;                         // - the width of the article in pixels
article_height = 36;                        // - the height of the article in pixels - used for the arrow indicator

state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

offscreen_arrow_enabled = false;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

artc_hp_max = 3;                            // - max article health, checks to see how many hits it can take
artc_hp = artc_hp_max;                      // - current article health
damage_inc = 0;                            // - simulated % for hitpause


//effects



///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////

//Saya's Article Variables
should_galaxy = true;
artc_grab_id = noone; //Article's version of the command grab
artc_grab_time = 0; //timer for grabbing, works as a state_timer of sorts
previous_free = false;
detect_player = false;
mask_sprite_prev = -1; // stores last mask sprite
mask_sprite_prev = -1;
grounded_last_frame = true; // Assume starts grounded
safe_grounded = true;


slam_grab_id = noone;
slam_grab_time = 0;
slam_hitpause = 10; // Hitpause frames to wait to before going into slam
slam_sound_time = 30; //Frames before playing the sound of the initial geyser hit
sound_played = false; // If the sound for the slam attack is played, setting to true makes it not be played on loop