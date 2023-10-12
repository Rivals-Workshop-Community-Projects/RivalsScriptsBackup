//hitbox_init.gml

nspec_air_elec_bounced = 0

ustr_hand_timer = 0;

fspecHitboxTouchedRobot = false;

sfx_krtd_bomb_explode = sound_get("sfx_krtd_bomb_explode")
sfx_krtd_bomb_prep = sound_get("sfx_krtd_bomb_prep")

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);