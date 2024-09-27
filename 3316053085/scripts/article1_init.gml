//article1_init.gml

is_venus_rune = true;
sprite_index = sprite_get("artc_rune");
image_xscale = 2;
image_yscale = 2;
disable_movement = true;
hittable_hitpause_mult = 0;

rune_angle = player_id.nspec_dir;
last_move_angle = 0;
output_angle = 0;
output_speed = 0;

state = "drain"; //valid names: "drain", "mirror"
state_timer = 0;

hit_flash = false;
hit_flash_time = 0;

glow_time_max = 30;
glow_time = glow_time_max/2;
glow_inc = false;
glow_pow_max = 0.75;

flash_fx_timer = 0;
flash_fx_time_max = 16;

hp = 0;
hp_max = 0;
drain_cd = 0;
reflect_mult = 0;
charge_lvl = 0; //used to indicate how strong a rune is

reflect_filter = 0; //cooldown for when venus can bounce off a rune with uspec
reflect_filter_set = 15;

article_width = 64;                         // - the width of the article in pixels
article_height = 72;                        // - the height of the article in pixels - used for the arrow indicator

hud_col_sel = [$ffffff, $241ced, $efb700, $b1a3ff, $1de6a8, $808080];
hud_col = (player_id.temp_level == 0 || get_match_setting(SET_TEAMS)) ? get_player_hud_color(player) : hud_col_sel[player];

pow_col = make_color_rgb(player_id.colorO[6*4+0]*255, player_id.colorO[6*4+1]*255, player_id.colorO[6*4+2]*255);

fx_lvl_sparkle = sprite_get(!player_id.s_alt && player_id.alt_cur == 27 ? "fx_ashe_trail" : "fx_light_follow");
lvl_indc_base_dist = 32;
lvl_indc_ex_dist = 22;

offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

touching_mollo_bomb = false;

//effects


///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////

sound_play(asset_get("sfx_boss_shine"));
sound_play(asset_get("sfx_clairen_arc_bounce"));