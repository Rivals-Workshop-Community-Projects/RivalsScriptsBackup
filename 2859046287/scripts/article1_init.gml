//article1_init.gml
//this script runs on the first frame an article exists, and similarly to init.gml, we put all our variables here first
//for more information on articles go to this link https://rivalswsmanual.miraheze.org/wiki/Articles

//available article types:
//  - article1
//  - article2
//  - article3
//  - article_solid - a solid object the player can spawn
//  - article_platform - literally a platform, we pass through the bottom and land on the top

can_be_grounded = false;                    // - allows articles to stick to platforms
ignores_walls = true;                       // - checks if article can go through walls, if true it can
uses_shader = true;                         // - if the article is recolored with the player
is_hittable = true;                         // - if true, it allows the article to be hittable
depth = 3;                                  // - sets the layer it draws the article on, positive numbers go further back

sprite_index = sprite_get("artc_dspec");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("artc_dspec_mask"); // - sets the mask of the article, it decides the article's detection space
//if you don't have a mask index, remove the code from line 68 in article1_post_draw.gml

image_index = 0;                            // - sets the current frame of the article

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

artc_hp_max = 3;                            // - max article health, checks to see how many hits it can take
artc_hp = artc_hp_max;                      // - current article health
damage_inc = 32;                            // - simulated % for hitpause

//effects
fx_dspec_spawn = hit_fx_create(sprite_get("fx_dspec_spawn"), 20);
fx_dspec_hit = hit_fx_create(sprite_get("fx_dspec_hit"), 24);
fx_dspec_despawn = hit_fx_create(sprite_get("fx_dspec_despawn"), 32);


///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////
//because init scripts run on the first frame the object exists only
//we can use this part of the code too to spawn things or set certain things on the player

//spawns the hit fx that appears alongside the article
spawn_hit_fx(x, y-32, fx_dspec_spawn);

if (has_rune("H"))
{
    gravity_field_range = 150; //how far away does the gravity take effect
    gravity_field_lifetime = 5; //how many frames the gravity field stays on for

    gravity_field_time = 0; //count down how many frames left it has
    gravity_field_cd = 0; //count down when it can be used again
    gravity_field_cd_set = 120; //cooldown for gravity field

    fx_gravfield = hit_fx_create(sprite_get("fx_gravfield_runeH"), 16);
}