//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

sprite_index = sprite_get("future_sight");
mask_index = sprite_get("future_sight_mask");
image_index = 6;
image_xscale = 2;
image_yscale = 2;

state = 5;
state_timer = 0;

grabbed_player = [];

throw_dir = 0;

arrow_color = get_player_hud_color(player_id.player)
if get_match_setting(SET_TEAMS) == 1 arrow_color = make_color_hsv(get_color_profile_slot_r(get_player_color(player),0),get_color_profile_slot_g(get_player_color(player),0),get_color_profile_slot_b(get_player_color(player),0))