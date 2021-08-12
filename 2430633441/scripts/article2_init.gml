
time_total = 450;

state_cat = SC_HITSTUN;

if has_rune("B") time_total *= 2;

time = time_total;

can_be_grounded = 1;
ignores_walls = 0;

sprite_index = sprite_get("sun")
active_sprite = sprite_get("sun_dspecial")


if get_player_color(player) == 11 {
sprite_index = sprite_get("sunV")
}
/*
if get_player_color(player) == 12 {
sprite_index = sprite_get("sunR")
}
*/
if get_player_color(player) == 16 {
sprite_index = sprite_get("sun5")
}

inactive_sprite = sprite_index;
mask_index = sprite_get("sun_mask")
image_alpha = 0;

orbit_speed = 1.5

orig_player_id = player_id;

y_off = 20;

plasma = 0;

sound_play(asset_get("sfx_ell_arc_taunt_start"))