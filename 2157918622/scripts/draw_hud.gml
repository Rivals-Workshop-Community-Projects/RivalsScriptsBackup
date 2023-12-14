var temp_color = c_white;

palette_name[0]  = "Default";
palette_name[1]  = "Absa";
palette_name[2]  = "Bayonetta";
palette_name[3]  = "Temmie";
palette_name[4]  = "Lucy";
palette_name[5]  = "Hikaru";
palette_name[6]  = "Mollo";
palette_name[7]  = "Olympia";
palette_name[8]  = "Gardevoir";
palette_name[9] = "Ashe";
palette_name[10] = "Exetior";
palette_name[11] = "R-00";
palette_name[12] = "Zetta";
palette_name[13] = "Clairen";
palette_name[14] = "Hooters";
palette_name[15] = "Trans Pride";
palette_name[16] = "Non-Binary Pride";
palette_name[17] = "Feri";
palette_name[18] = "Indeed";
palette_name[19] = "Iroh";
palette_name[20] = "Acid Rainbows";
palette_name[21] = "Gustav";
palette_name[22] = "Captain Falcon";
palette_name[23] = "Pomme";
palette_name[24] = "Blake";
palette_name[25] = "Zero Suit Samus";
palette_name[26] = "Zerra";
palette_name[27] = "Darma";
palette_name[28] = "Nial";

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1)
{
    draw_debug_text(temp_x, temp_y - 68, "Palette selector open");
    draw_debug_text(temp_x, temp_y - 52, "Press left or right to change");
    draw_debug_text(temp_x, temp_y - 36, "Palette: " + palette_name[skinOverride]);
    draw_debug_text(temp_x, temp_y - 20, "Taunt again to close");
}