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
image_alpha = 1;

// Movement Variables
walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 6;
gravity_speed = .52;
land_time = 4; //normal landing frames
land_sound = asset_get("sfx_land_light");
jump_speed = player_id.jump_speed;
short_hop_speed = player_id.short_hop_speed;
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
clone_can_tap_jump = false;

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

/* OLD
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
//dspecial_hurt_sprite = sprite_get("dspecial_hurt"); // Enable for hurtbox editing
dspecial_up_sprite = sprite_get("dspecial_up");
//dspecial_up_hurt_sprite = sprite_get("dspecial_up_hurt"); // Enable for hurtbox editing
dspecial_down_sprite = sprite_get("dspecial_down");
//dspecial_down_hurt_sprite = sprite_get("dspecial_down"); // Enable for hurtbox editing
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

*/
// Pulls sprite index from player to ensure correct skin is used
spawn_sprite = player_id.clone_spawn_sprite
idle_sprite = player_id.clone_idle_sprite
idle_flourish_sprite = player_id.clone_idle_flourish_sprite
walk_sprite = player_id.clone_walk_sprite
jumpstart_sprite = player_id.clone_jumpstart_sprite
jump_sprite = player_id.clone_jump_sprite
doublejump_sprite = player_id.clone_doublejump_sprite
doublejump_backward_sprite = player_id.clone_doublejump_backward_sprite
land_sprite = player_id.clone_land_sprite
taunt_sprite = player_id.clone_taunt_sprite
hurt_sprite = player_id.clone_hurt_sprite
landing_lag_sprite = player_id.clone_landing_lag_sprite
waveland_sprite = player_id.clone_waveland_sprite

dspecial_sprite = player_id.clone_dspecial_sprite
dspecial_hurt_sprite = sprite_get("dspecial_hurt"); // Enable for hurtbox editing
dspecial_up_sprite = player_id.clone_dspecial_up_sprite
dspecial_up_hurt_sprite = sprite_get("dspecial_up_hurt"); // Enable for hurtbox editing
dspecial_down_sprite = player_id.clone_dspecial_down_sprite
dspecial_down_hurt_sprite = sprite_get("dspecial_down"); // Enable for hurtbox editing
dthrow_partial_sprite = player_id.clone_dthrow_partial_sprite
dthrow_full_sprite = player_id.clone_dthrow_full_sprite
dthrow_team_sprite = player_id.clone_dthrow_team_sprite
fspecial_sprite = player_id.clone_fspecial_sprite
fspecial_2_sprite = player_id.clone_fspecial_2_sprite
fspecial_air_sprite = player_id.clone_fspecial_air_sprite
uspecial_sprite = player_id.clone_uspecial_sprite
uspecial_2_sprite = player_id.clone_uspecial_2_sprite
nspecial_sprite = player_id.clone_nspecial_sprite
utilt_sprite = player_id.clone_utilt_sprite // Used for clone assist attack

airdash_forward_sprite = player_id.clone_airdash_forward_sprite
airdash_backward_sprite = player_id.clone_airdash_backward_sprite
airdash_upward_sprite = player_id.clone_airdash_upward_sprite
airdash_downward_sprite = player_id.clone_airdash_downward_sprite

wisp_idle_sprite = player_id.clone_wisp_idle_sprite
wisp_travel_sprite = player_id.clone_wisp_travel_sprite

plat_clone_assist_sprite = player_id.clone_plat_clone_assist_sprite

// Attack Variables
current_hitbox = noone;
clone_dspecial_cooldown = 15;
clone_throw_cooldown = 0;
player_id.clone_dspecial_assist = false;
not_throwable_flag = false; // For got hti logic
clone_dspecial_hit = false;
Nspecial_explosion_flag = false;
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
clone_grab_start_x = 0;
clone_grab_start_y = 0;
player_grab_timer = 0;

// Effects variables
dust_timer = 0;
dash_vfx = noone;
fast_fall_fx_played_flag = false;

// Draw indicator
draw_indicator = true;
clone_hud_text = player_id.clone_text_list[random_func(0,player_id.num_clone_text_names,true)]; // Pull from the list once for this init.

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