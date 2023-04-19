//css_init.gml

if (get_color_profile_slot_r(0, 0) == 12){
	sound_stop(sound_get("futuresight_1"));
    sound_play(sound_get("futuresight_1"),false,0,0.9);
    set_color_profile_slot( 0, 0, 11, 107, 155 );
}
fade_timer = 0;
current_alt = 0;
custom_alpha = 1;
test_online = false;
test_team = false;
if player == 0 test_online = true;
//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Default";
alt_name[1]  = "Uxie";
alt_name[2]  = "Mesprit";
alt_name[3]  = "Dialga";
alt_name[4]  = "Palkia";
alt_name[5]  = "Giratina";
alt_name[6]  = "Arceus";
alt_name[7]  = "Shaymin";
alt_name[8]  = "Cresselia";
alt_name[9]  = "Darkrai";
alt_name[10] = "Heatran";
alt_name[11] = "Cyrus";
alt_name[12] = "Cynthia";
alt_name[13] = "Abyss";
alt_name[14] = "Early Access";
alt_name[15] = "Mew";
alt_name[16] = "Celebi";
alt_name[17] = "Jirachi";
alt_name[18] = "Gold Rank";
alt_name[19] = "Deoxys";
alt_name[20] = "Victini";
alt_name[21] = "Diancie";
alt_name[22] = "Marshadow";
alt_name[23] = "Shiny";