//article1_init.gml
//rainbow ring

sprite_index = sprite_get("artc_tr_spawn");
mask_index = sprite_get("artc_ring_mask");
uses_shader = false;

prior_check_detect = [];
prior_check_obj = [];
//priority list:
//  5 - parrying players
//  4 - rainbow ring owner
//  3 - owner's teammates
//  2 - NPC players
//  1 - enemies
//  0 - article enemies

spr_dir = -player_id.spr_dir;
state = 0;
state_timer = 0;
anim_length = 0;
cur_anim_frame = 0;
ring_spawn_anim_time = 25;
soft_armor_check = 10; //the rainbow ring will affect enemies with soft armor lower than this value

destruct_time = 300;
player_used_ring = false;
launching_player = noone; //player id
ring_launch_speed = 0;
ring_base_spd = 12;
ring_spd_limit = 40;
ring_air_fric = 0.6;
ring_is_useable = false;

ring_spawn_time = 30;
ring_stun_time = 60;
ring_stun_start_time = 0;
ring_collect_time = 60;
ring_despawn_time = 20;

trick_ring_player = player;
trick_ring_player_id = player_id;

hud_col_sel = [$ffffff, $241ced, $efb700, $b1a3ff, $1de6a8, $808080];
hud_owner_col = (trick_ring_player_id.temp_level == 0 || get_match_setting(SET_TEAMS)) ? get_player_hud_color(trick_ring_player) : hud_col_sel[trick_ring_player];

offscreen_col = get_player_hud_color(player);
offscreen_arrow_enabled = true;
article_offscreen = false;
offscreen_image = 0;
offscreen_x_pos = 0;
offscreen_y_pos = 0;
orig_depth = depth;

//effects
fx_sparkle = player_id.fx_sparkle;
fx_trickring_col = player_id.fx_trickring_col;
fx_trickring_dirspark = player_id.fx_trickring_dirspark;
fx_trickring_circspark = player_id.fx_trickring_circspark;


//venus rune reflects
venus_article_reflect = 1;

///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////

//angle setup
if (player_id.attack == AT_USPECIAL)
{
    ring_launch_angle = 90;
    ring_throw_power = -7;
    
    hsp = player_id.free ? player_id.uspec_air_throw_hsp * 1.5 : (9 + abs(player_id.new_hsp)*0.6) * player_id.spr_dir;
    vsp = player_id.free ? (7 + abs(player_id.new_vsp)*0.4) : 0;
}

image_angle = ring_launch_angle-90;
sound_play(sound_get("sfx_rainbowring_toss"));