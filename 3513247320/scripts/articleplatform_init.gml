sprite_index = sprite_get("a_rush_jet" + (orig_player_id.alt == 0? "":"_mapped"));
mask_index = sprite_get("a_rush_jet_mask");

//uses_shader = false;

article_state = "IDLE";
article_lifetime = has_rune("J")? 300:120;
article_collision_grace = 30;
article_timer = 0;

rush_pause = false;
pillar_ascent_speed = -15;

hsp = orig_player_id.uspec_steer * spr_dir;

is_plat = true;