//article1_init.gml
//this script runs on the first frame an article exists, and similarly to init.gml, we put all our variables here first
//for more information on articles go to this link https://rivalswsmanual.miraheze.org/wiki/Articles

//available article types:
//  - article1
//  - article2
//  - article3
//  - article_solid - a solid object the player can spawn
//  - article_platform - literally a platform, we pass through the bottom and land on the top

can_be_grounded = true;                     // - allows articles to stick to platforms
ignores_walls = false;                      // - checks if article can go through walls, if true it can
uses_shader = true;                         // - if the article is recolored with the player
is_hittable = false;                        // - if true, it allows the article to be hittable
depth = player_id.depth - 1;                                  // - sets the layer it draws the article on, positive numbers go further back

sprite_index = sprite_get("tailspike");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("tailspike_mask"); // - sets the mask of the article, it decides the article's detection space
//if you don't have a mask index, remove the code from line 68 in article1_post_draw.gml

image_index = 3;                            // - sets the current frame of the article

//custom article variables for your comfort
state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

parent = noone;
child = noone;
num_children = 0;
max_space_between_parts = 40;
space_between_parts = max_space_between_parts;
num_placement_options = floor(max_space_between_parts / 10);
placement_option = num_placement_options;
spot_found = false;
begin_return = false;