//got_hit - called when you're hit by a hitbox

char_height = 40;
move_cooldown[AT_USPECIAL] = 0;
sound_stop(sound_get("steam_sfx1"));
sound_stop(sound_get("steam_sfx2"));
sound_stop(sound_get("limit_loop_sfx"));

arc_gametimer = 0;
arc_draw_sk = false;
arc_draw_line = false;
arc_line_spd = 1; //+ve = up, -ve = down, magnitude = speed
arc_draw_anchor = false;
arc_caught = false;
arc_loot_value = 0;
arc_state = 0; //0 = idle, 1 = casting, 2 = waiting, 3 = bitten, 4 = reeling, 5 = scoring
arc_state_timer = 0;