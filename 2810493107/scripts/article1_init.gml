can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
depth = 0;
sprite_index = asset_get("empty_sprite");
image_index = 0;

charge_fraction = 0;

frame_timer = 0;
twinkle_frame_duration = 5;
explosion_frame_duration = 5;

fs_deployed = true;
fs_countdown = 0;
fs_twinkle_sprite_l = sprite_get("l-nsp-t");
fs_twinkle_sprite_m = sprite_get("m-nsp-t");
fs_twinkle_sprite_s = sprite_get("s-nsp-t");
fs_looping_twinkle_index = 0;
fs_looping_twinkle_index_max = 8; // replace if the number of frames changes
fs_exploding = false;
fs_explosion_sprite_l = sprite_get("l-nsp-a");
fs_explosion_sprite_m = sprite_get("m-nsp-a");
fs_explosion_sprite_s = sprite_get("s-nsp-a");
fs_explosion_index = 0;
fs_explosion_index_prev = -1;
fs_explosion_index_max = 9; // replace if the number of frames changes
fs_size_indicator_sprite_l = sprite_get("indicator-l");
fs_size_indicator_sprite_m = sprite_get("indicator-m");
fs_size_indicator_sprite_s = sprite_get("indicator-s");

chevron_sprite = sprite_get("chevron");
player_hud_color = c_orange;