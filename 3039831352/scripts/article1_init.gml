//article1_init.gml
//rainbow ring

sprite_index = sprite_get("artc_tr_spawn");
mask_index = sprite_get("artc_ring_mask");

uses_shader = false;

spr_dir = -player_id.spr_dir;
state = 0;
state_timer = 0;
anim_length = 0;
cur_anim_frame = 0;
ring_spawn_anim_time = 25;

destruct_time = 300;
player_used_ring = false;
launching_player = 0; //player port
ring_launch_speed = 0;
ring_base_spd = 12;
ring_air_fric = 0.6;
ring_is_useable = false;

ring_spawn_time = 30;
ring_stun_time = 60;
ring_stun_start_time = 0;
ring_collect_time = 60;
ring_despawn_time = 20;

trick_ring_player = player;
trick_ring_player_id = self;

hud_col_sel = [$ffffff, $241ced, $efb700, $b1a3ff, $1de6a8, $808080];
hud_owner_col = get_match_setting(SET_TEAMS) ? get_player_hud_color(trick_ring_player) : hud_col_sel[trick_ring_player];

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


///////////////////////////////////////////////////////// ON SPAWN CODE /////////////////////////////////////////////////////////

//angle setup
if (player_id.attack == AT_USPECIAL)
{
    ring_launch_angle = 90;
    ring_throw_power = -7;
    
    hsp = player_id.free ? 0 : (9 + abs(player_id.new_hsp)*0.6) * player_id.spr_dir;
    vsp = player_id.free ? (7 + abs(player_id.new_vsp)*0.4) : 0;
}

image_angle = ring_launch_angle-90;
sound_play(sound_get("sfx_rainbowring_toss"));