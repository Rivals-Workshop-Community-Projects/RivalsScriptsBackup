//article2_init.gml

// 808 Article

//available article types:
//  - article1
//  - article2
//  - article3
//  - article_solid - a solid object the player can spawn
//  - article_platform - literally a platform, we pass through the bottom and land on the top
user_event(2);

can_be_grounded = false;                    // - allows articles to stick to platforms
ignores_walls = true;                       // - checks if article can go through walls, if true it can
uses_shader = false;                         // - if the article is recolored with the player
is_hittable = false;                    // - if true, it allows the article to be hittable
depth -= 5;                                  // - sets the layer it draws the article on, positive numbers go further back

sprite_index = sprite_get("c808");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("c808"); // - sets the mask of the article, it decides the article's detection space
image_index = 7;                            // - sets the current frame of the article
spr_dir = player_id.spr_dir;
uses_shader = true;

article_width = 128;                         // - the width of the article in pixels
article_height = 144;                        // - the height of the article in pixels - used for the arrow indicator
apply_friction_mult = true;
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;
frict = 0.8;
state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state
exist_timer = 0;                                    //How long the article has existed.   
beat_hit_time = 0;

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)
frame_rate = 0.2;
alpha = 1;
x_offset = 0;
y_offset = 10;
r_hsp = 10;
r_vsp = 10;
image_yscale = 1;
image_xscale = 1;

///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////
//because init scripts run on the first frame the object exists only
//we can use this part of the code too to spawn things or set certain things on the player

sprite_strip[0] = sprite_get("c808");
sprite_strip[1] = sprite_get("c808_idle");
sprite2_strip[0] = sprite_get("chai_fx_note1");

anim_type[0] = 0;
anim_type[1] = 1;

sprite_to_draw = 0;
sprite_index = sprite_strip[sprite_to_draw];