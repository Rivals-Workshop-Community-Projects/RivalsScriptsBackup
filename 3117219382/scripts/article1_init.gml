//article1_init.gml
//this script runs on the first frame an article exists, and similarly to init.gml, we put all our variables here first
//for more information on articles go to this link https://rivalswsmanual.miraheze.org/wiki/Articles

//available article types:
//  - article1
//  - article2
//  - article3
//  - article_solid - a solid object the player can spawn
//  - article_platform - literally a platform, we pass through the bottom and land on the top

disable_collisions = true;
can_be_grounded = false;                    // - allows articles to stick to platforms
ignores_walls = true;                       // - checks if article can go through walls, if true it can
uses_shader = true;                         // - if the article is recolored with the player
is_hittable = true;                         // - if true, it allows the article to be hittable
hittable_hitpause_mult = 0;
depth = 3;                                  // - sets the layer it draws the article on, positive numbers go further back

if("entry_point" not in self) entry_point = [noone,0,0,0];
if("exit_point" not in self) exit_point = [noone,0,0,0];
spr_ground = sprite_get("slash_ground_gold_stuck");
point_img = 0;

image_index = 0;                            // - sets the current frame of the article

if("lvl" not in self){
	 lvl = 1;
}

spr_ind = lvl == 1 ? sprite_get("slash_frozen_small") : sprite_get("slash_frozen");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
img_ind = 0
sprite_index = asset_get("empty_sprite")
mask_index = sprite_get("grind_mask"); // - sets the mask of the article, it decides the article's detection space
//if you don't have a mask index, remove the code from line 68 in article1_post_draw.gml

break_spr = noone
gold_expand_bg_spr = sprite_get("gold_expand_bg");
gold_expand_fg_spr = sprite_get("gold_expand_fg");

state = AS_SPAWN;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

artc_hp_max = 3;                            // - max article health, checks to see how many hits it can take
artc_hp = artc_hp_max;                      // - current article health
damage_inc = 32;                            // - simulated % for hitpause

timer_for_destruction = 0
// print("SET")

mist_distance = player_id.mist_distance;

expand_time = 16;
expand_timer = expand_time;

//custom article variables for your comfort
if("article_width" not in self) article_width = mist_distance[lvl-1];   // - the width of the article in pixels
if("article_height" not in self) article_height = 28;  // - the height of the article in pixels
if("article_angle" not in self) article_angle = 0;

image_xscale = article_width/450;
image_yscale = 1;
image_angle = spr_dir*point_direction(0,0, dcos(article_angle), -dsin(article_angle))

_init = true

#macro AS_SPAWN 0
#macro AS_IDLE 1
#macro AS_BREAK 2