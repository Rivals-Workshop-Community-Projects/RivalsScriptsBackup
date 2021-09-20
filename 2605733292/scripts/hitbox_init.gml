//hitbox_init.gml

burst_bubble_vspeed_trigger = 1
burst_bubble_was_hit_by_sideb = false
burst_bubble_hit_lock = 0
burst_bubble_spawned_with_rune_n_type = hbox_num
burst_bubble_has_ability_star = false;
burst_bubble_direction_hit_by_side_b = 1

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);