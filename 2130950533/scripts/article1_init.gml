//article1_init

init = 0;
state = 0;
state_timer = 0;
deploying = false;
deployed = false;
depth = 20;
sprite_index = sprite_get("dspecial_border");
laughter_audio_duration = 80;
laughter_audio_countdown = 0;
laughter_video_duration = 120;
laughter_burn_duration = has_rune("H") ? 300 : 90;
laughter_total_dot = has_rune("H") ? 10 : 4;
laughter_video_countdown = 0;
laughter_heal_cooldown = 120;
previous_laughs = ds_list_create();
num_dont_repeat = 3;
//can_be_grounded = true;
//ignores_walls = false;
//free = false;
//sprite_change_collision_mask("dspecial_splat", false, 2, 22, 12, 23, 13, 1);

// Background frame select
bg_offset = 0;
// close = Bloppi asked it to close
close_zone = false;
// collapse = the opponent was too funny, causing a collapse across the space-time fun-tinuum!
collapse_zone = false;

// Replace on init with player color
emoji_color = [0,0,255];

// Double-effectiveness rune
double_damage = false;

// Create a list of all players to iterate over and decrement the counters of
healing_counter_map = ds_map_create();
burning_counter_map = ds_map_create();
// Reset color back to normal on final cycle
final_outline_change_cycle_map = ds_map_create();
with (asset_get("oPlayer")) {
    ds_map_set(other.healing_counter_map, player, 0);
    ds_map_set(other.burning_counter_map, player, 0);
    ds_map_set(other.final_outline_change_cycle_map, player, false);
}

