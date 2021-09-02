//articleP_init

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

sprite_index = sprite_get("jailBars_plat");

my_speed = 4;
vsp = my_speed;
room_top_blast = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) + 260;
room_bot_blast = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) + 80;
bars_sprite = sprite_get("jailBars_bars");
player_offset = (y+15<get_stage_data(SD_Y_POS)) - player_id.free;

fall_time = 180;
destruction_count_down=-1;