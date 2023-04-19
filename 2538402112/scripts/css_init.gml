//css_init.gml

if (get_color_profile_slot_r(0, 0) == 92){
	sound_stop(sound_get("Shine"));
    sound_play(sound_get("Shine"),false,0,0.75);
	set_color_profile_slot( 0, 0, 91, 132, 56 );
}
fade_timer = 0;
current_alt = 0;
custom_alpha = 1;
test_online = false;
test_team = false;
if player == 0 test_online = true;
//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Default";
alt_name[1]  = "Celebi";
alt_name[2]  = "Dusknoir";
alt_name[3]  = "Wigglytuff";
alt_name[4]  = "Sableye";
alt_name[5]  = "Primal Dialga";
alt_name[6]  = "Manaphy";
alt_name[7]  = "Darkrai";
alt_name[8]  = "Gengar";
alt_name[9]  = "Ninetales";
alt_name[10] = "Absol";
alt_name[11] = "Gardevoir";
alt_name[12] = "Early Access";
alt_name[13] = "Abyss";
alt_name[14] = "Munna";
alt_name[15] = "Dunsparce";
alt_name[16] = "Virizion";
alt_name[17] = "Hydregion";
alt_name[18] = "Golden";
alt_name[19] = "Slowking";
alt_name[20] = "Nuzleaf";
alt_name[21] = "Espurr";
alt_name[22] = "Ampharos";
alt_name[23] = "Krookodile";
alt_name[24] = "Shiny";
// "Marshtomp"
// "Combusken"