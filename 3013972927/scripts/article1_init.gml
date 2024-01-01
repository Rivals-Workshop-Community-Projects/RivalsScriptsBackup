//article1_init.gml
// Peppermint Article
// Assist article

//this script runs on the first frame an article exists, and similarly to init.gml, we put all our variables here first
//for more information on articles go to this link https://rivalswsmanual.miraheze.org/wiki/Articles

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
is_hittable = true;                         // - if true, it allows the article to be hittable

depth = 3;                                  // - sets the layer it draws the article on, positive numbers go further back

sprite_index = sprite_get("assist_pmnt_summon");    // - sets the sprite of the article, can also be changed dynamically in article#_update.gml
mask_index = sprite_get("artc_dspec_mask"); // - sets the mask of the article, it decides the article's detection space
image_index = 0;                            // - sets the current frame of the article
spr_dir = player_id.spr_dir;
init_spr_dir = spr_dir;

//custom article variables for your comfort
article_width = 128;                         // - the width of the article in pixels
article_height = 144;                        // - the height of the article in pixels - used for the arrow indicator

state = 0;                                  // - state check in case the article has multiple states
state_timer = 0;                            // - state timer to check how long an article has been in a state
window = 1;
window_timer = 0                            // window timer
window_length = 8;                          // window length
anim_frame_start = 0;                       // start frame of animation
anim_frames = 1;                            // frame of current anim
last_window = 3;                            // previous window        
states_max = 3;                             // How many states to go through
current_state = 0;
is_beathit = false;

assist_index = 0;                           // Check which assist to call (0: Peppermint, 1: Macaron, 2: Korsica)
name_assist = "";

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)

offscreen_arrow_enabled = false;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)
image_yscale = 2;
image_xscale = 2;
assist_dir = 1;

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

artc_hp_max = 3;                            // - max article health, checks to see how many hits it can take
artc_hp = artc_hp_max;                      // - current article health
damage_inc = 32;                            // - simulated % for hitpause

//effects
fx_dspec_spawn = hit_fx_create(sprite_get("fx_dspec_spawn"), 20);
fx_dspec_hit = hit_fx_create(sprite_get("fx_dspec_hit"), 24);
fx_dspec_despawn = hit_fx_create(sprite_get("fx_dspec_despawn"), 32);

assist_pep_start_sfx = [
    sound_get("chai_partner_pep_atk1"),
    sound_get("chai_partner_pep_atk2"),
    ];
    
pep_atk_sfx_1 = [
    sound_get("chai_partner_pep_shot1"),
    sound_get("chai_partner_pep_shot2"),
    ];
    
mac_atk_sfx_1 = [
    sound_get("chai_partner_mac_atk_start1"),
    sound_get("chai_partner_mac_atk1"),
    ];
    
mac_atk_sfx_2 = [
    sound_get("chai_partner_mac_atk_start2"),
    sound_get("chai_partner_mac_atk2"),
    ];
    
kor_atk_sfx_1 = [
    sound_get("chai_partner_kor_atk_start1"),
    sound_get("chai_partner_kor_atk1"),
    ];
    
kor_atk_sfx_2 = [
    sound_get("chai_partner_kor_atk_start2"),
    sound_get("chai_partner_kor_atk2"),
    ];

pep_vo_sfx = [
    sound_get("chai_partner_pep_1"),
    sound_get("chai_partner_pep_2"),
    sound_get("chai_partner_pep_3")
    ];
mac_vo_sfx = [
    sound_get("chai_partner_mac_1"),
    sound_get("chai_partner_mac_2"),
    sound_get("chai_partner_mac_3")
    ];
kor_vo_sfx = [
    sound_get("chai_partner_kor_1"),
    sound_get("chai_partner_kor_2"),
    sound_get("chai_partner_kor_3")
    ];
///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////
//because init scripts run on the first frame the object exists only
//we can use this part of the code too to spawn things or set certain things on the player


sprite_strip[0] = sprite_get("assist_pmnt_summon");
sprite_strip[1] = sprite_get("assist_pmnt_attack");
sprite_strip[2] = sprite_get("assist_pmnt_end");

sprite1_strip[0] = sprite_get("assist_mac_summon");
sprite1_strip[1] = sprite_get("assist_mac_attack");
sprite1_strip[2] = sprite_get("assist_mac_end");

sprite2_strip[0] = sprite_get("assist_kor_summon");
sprite2_strip[1] = sprite_get("assist_kor_attack");
sprite2_strip[2] = sprite_get("assist_kor_end");


spriteFX_strip[0] = sprite_get("chai_fx_note1");

anim_type[0] = 0;
anim_type[1] = 1;

sprite_to_draw = 0;
sprite_index = sprite_strip[sprite_to_draw];

//spawns the hit fx that appears alongside the article
//spawn_hit_fx(x, y-32, fx_dspec_spawn);
sound_play(sound_get("chai_partner_select_01"));
assist_index = player_id.assist_index;
is_beathit = player_id.hit_onBeat;
fxindex = random_func( 1, 2, true );
vo_index = random_func( 1, 3, true );

switch(assist_index)
{
    case 0: 
    if(is_beathit)
    {
        sound_play(assist_pep_start_sfx[fxindex],0,0,.3);
    }
        if(player_id.vo != 0 && (random_func( 1, 4, true ) < 2))
        {
        sound_play(pep_vo_sfx[vo_index]);
        }
        name_assist = "Peppermint";
    break;
    
    case 1:
        if(player_id.vo != 0  && (random_func( 1, 4, true ) < 2))
        {
        sound_play(mac_vo_sfx[vo_index]);
        }
        name_assist = "Macaron";
    break;
    
    case 2:
        if(player_id.vo != 0  && (random_func( 1, 4, true ) < 2))
        {
        sound_play(kor_vo_sfx[vo_index]);
        }
        name_assist = "Korsica";
    break;
}