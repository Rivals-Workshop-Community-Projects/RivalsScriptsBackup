alt_cur = get_player_color(player);
alt_old = alt_cur;

timer = 0;
timer_max = 80;

spr_idle = sprite_get("idle");
subimg = 0;

sprite_change_offset("idle", 47, 72, true);

alt_name[0] = "Peppino";
alt_name[1] = "SAGE";
alt_name[2] = "Salami";
alt_name[3] = "Basil";
alt_name[4] = "Black Olive";
alt_name[5] = "Red Onion";
alt_name[6] = "Noise";
alt_name[7] = "Peddito";
alt_name[8] = "Anton";
alt_name[9] = "Gameboy";
alt_name[10] = "Grunch";
alt_name[11] = "Pillar";
alt_name[12] = "Snowman";
alt_name[13] = "Wario 2";
alt_name[14] = "Snick";
alt_name[15] = "Wario 4";

online_css = (player == 0);
