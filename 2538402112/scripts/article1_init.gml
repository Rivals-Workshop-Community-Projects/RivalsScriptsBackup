// Emera dust init

can_be_grounded = true;
uses_shader = false;
image_xscale = 2;
image_yscale = 2;
ignores_walls = false;
vsp = 0;

sprite_index = sprite_get("emera_dust");
mask_index = sprite_get("emera_dust_mask");
if get_player_color(player) == 13 image_index = 1;
if get_player_color(player) == 12 image_index = 2;

arrow_color = get_player_hud_color(player_id.player)
if get_match_setting(SET_TEAMS) == 1 arrow_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player),0),get_color_profile_slot_g(get_player_color(player),0),get_color_profile_slot_b(get_player_color(player),0))

life_timer = 420;

cooldown = true
with player_id{
    if has_rune("O") other.cooldown = false
}