//article1_init.gml



//custom article variables for your comfort
article_width = 64;                         // - the width of the article in pixels
article_height = 72;                        // - the height of the article in pixels - used for the arrow indicator

state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

//effects


///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////