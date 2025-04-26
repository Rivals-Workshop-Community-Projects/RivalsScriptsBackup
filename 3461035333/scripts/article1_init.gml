normal_image_alpha = 0.83;
orig_depth = depth;  

depth = -999;

image_speed = 0;
image_alpha = normal_image_alpha;
image_xscale = 1;
image_yscale = 1;

mask_index = sprite_get("clone_idle");

initial_dir = player_id.spr_dir
spr_dir = initial_dir;

no_dash = player_id.after_image1_no_dash;
dash_speed = 55; //55
dash_duration = 5 //5

if (no_dash == false)
{
    state = -1;   
}
else
{
    state = 1;
}
state_timer = 0;
living_timer = 0;
fes_timer = 0;
fes_time = 15;

stateMinus1_anim_rate = 10000;
state0_anim_rate = 3;
state1_anim_rate = 6;

activation_time = 25;//30

hitbox = noone;
hitbox_created = 0;
victim = noone;

die_trigger = 0;
max_lifetime = 999999;//60*15
lifetime = max_lifetime;

can_be_grounded = true;
ignores_walls = false;

dspec_launch_time = 60;//60
dspec_launch_timer = dspec_launch_time;
dspec_target_dir = 0;
dspec_target_spr_dir = 0;

idle_to_go_into = PS_IDLE;

sound_play(asset_get("sfx_bird_sidespecial_start"));

offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

article_height = 100;                        // - the height of the article in pixels - used for the arrow indicator
hud_col = get_player_hud_color(player); 

if (state == 1)
{
    sprite_index = sprite_get(player_id.sage_mode ? "sage_clone_idle" : "clone_idle");
}
else
{
    sprite_index = sprite_get(player_id.sage_mode 
    ? (free ? "sage_nspecial_air" : "sage_nspecial") 
    : (free ? "nspecial_air" : "nspecial"));
}
