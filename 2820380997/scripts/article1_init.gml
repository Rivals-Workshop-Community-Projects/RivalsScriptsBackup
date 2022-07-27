/*
clone	Whether you’re Forsburn’s clone or not
clones_player_id	The owner of this clone

clone = true;
clones_player_id = player_id;
*/

current_article1_ID = self;

//Article Visual Section
sprite_index = sprite_get("clone_spawn");//
mask_index = player_id.hurtbox_spr; //
depth = -3;
image_blend = c_white;
image_index = 0;
image_xscale = 1;
image_yscale = 1;

// Movement Variables
walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 6;
gravity_speed = .52;
land_time = 4; //normal landing frames
land_sound = asset_get("sfx_land_light");
jump_speed = player_id.jump_speed;
djump_speed = player_id.djump_speed;

// State Control
state = 0;
state_timer = 0;
window = 0;
window_timer = 0;
hitpause = false; //in hitpause or not
hitstop = 0; //The number of frames remaining until hitpause ends
hitstop_full = 0; //The number of frames this instance of hitpause lasts total
article_total_timer = 0;
clone_state_cat = 0;
clone_has_djump = true;
clone_has_air_dash = true;
clone_air_dash_direction = 0;
on_platform = false;

// Other Variables
unbashable = 1;
was_parried = false;
was_hit = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
draw_debug_hud = false;

plat_exists = false;
plat_despawn_timer = 10;
plat_temp_x = 0;
plat_temp_y = 0;

// Set Sprites to Variables
spawn_sprite = sprite_get("clone_spawn");
idle_sprite = sprite_get("idle");
idle_flourish_sprite = sprite_get("idle_2");
walk_sprite = sprite_get("dash");
jumpstart_sprite = sprite_get("jumpstart");
jump_sprite = sprite_get("jump");
doublejump_sprite = sprite_get("doublejump");
doublejump_backward_sprite = sprite_get("doublejump_backward");
land_sprite = sprite_get("land");
taunt_sprite = sprite_get("taunt");
hurt_sprite = sprite_get("hurt");
landing_lag_sprite = sprite_get("landinglag");
waveland_sprite = sprite_get("waveland");

dspecial_sprite = sprite_get("dspecial");
dspecial_up_sprite = sprite_get("dspecial_up");
dspecial_down_sprite = sprite_get("dspecial_down");
dthrow_partial_sprite = sprite_get("dthrow");
dthrow_full_sprite = sprite_get("dthrow_behind");
dthrow_team_sprite = sprite_get("clone_extra_3");
fspecial_sprite = sprite_get("fspecial");
fspecial_2_sprite = sprite_get("fspecial_2");
fspecial_air_sprite = sprite_get("fspecial_air");
uspecial_sprite = sprite_get("uspecial");
uspecial_2_sprite = sprite_get("uspecial_2");
nspecial_sprite = sprite_get("nspecial");
utilt_sprite = sprite_get("utilt"); // Used for clone assist attack

airdash_forward_sprite = sprite_get("clone_airdash_forward");
airdash_backward_sprite = sprite_get("clone_airdash_backward");
airdash_upward_sprite = sprite_get("uspecial_2");
airdash_downward_sprite = sprite_get("downhurt");

wisp_idle_sprite = sprite_get("wisp_idle");
wisp_travel_sprite = sprite_get("wisp_travel");

plat_clone_assist_sprite = sprite_get("plat_clone_assist");

// Attack Variables
current_hitbox = noone;
clone_dspecial_cooldown = 15;
player_id.clone_dspecial_assist = false;
not_throwable_flag = false; // For got hti logic
clone_dspecial_hit = false;
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
Nspecial_explosion_flag = false;
player_grab_timer = 0;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;

// Effects variables
dust_timer = 0;
dash_vfx = noone;
fast_fall_fx_played_flag = false;

// Draw indicator
draw_indicator = true;
clone_hud_text = player_id.clone_text_list[random_func(0,9,true)]; // Pull from the list once for this init.

///SUPERSONIC Hit Detection
 
///      article[index]_init.gml
//You may put this code anywhere in your article init.
 
//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.