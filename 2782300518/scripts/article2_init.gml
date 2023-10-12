//Maiden with Eyes of Blue
can_be_grounded = true;                    // - allows articles to stick to platforms
ignores_walls = false;                       // - checks if article can go through walls, if true it can
uses_shader = true;                         // - if the article is recolored with the player
is_hittable = false;                         // - if true, it allows the article to be hittable
depth = 3;                                  // - sets the layer it draws the article on, positive numbers go further back
spr_dir = player_id.spr_dir
article_xscale = 1;
article_yscale = 1;
hsp = 0;
vsp = 0;
old_hsp = 0;
old_vsp = 0;

sprite_index = sprite_get("bike_charge");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("bike_mask");
image_index = 0;                            // - sets the current frame of the article

if (player_id.alt_cur == 14)
{
    for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
	var base = 4*8;
	static_colorO[base] = 0.137;
    static_colorO[base+1] = 0.262;
	static_colorO[base+2] = 0.192;
}

//custom article variables for your comfort
article_width = 80;                         // - the width of the article in pixels
article_height = 52;                        // - the height of the article in pixels - used for the arrow indicator

article_timer = 0;

state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

damage_inc = 0;                            // - simulated % for hitpause
