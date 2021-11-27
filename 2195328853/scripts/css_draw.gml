patch_ver = "1.67";

if (get_player_color( player ) == 7){
	draw_sprite_ext(sprite_get("charselect_ghostie"),1,x+8,y+8,2,2,0,-1,1);
}else if (get_player_color( player ) == 8){
	draw_sprite_ext(sprite_get("charselect_ghostking"),1,x+8,y+8,2,2,0,-1,1);
}else if (get_player_color( player ) == 16){
	draw_sprite_ext(sprite_get("charselect_lad"),1,x+8,y+8,2,2,0,-1,1);
}else if (get_player_color( player ) == 26){
	draw_sprite_ext(sprite_get("charselect_ball"),1,x+8,y+8,2,2,0,-1,1);
}

/*var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 16;
var alt_cur = get_player_color(player);

alt_name[0]  = "Default";
alt_name[1]  = "Red";
alt_name[2]  = "Purple";
alt_name[3]  = "B&W";
alt_name[4]  = "Matt";
alt_name[5]  = "Aria";
alt_name[6]  = "Cosmar";
alt_name[7]  = "Ghostie";
alt_name[8]  = "Ghost King";
alt_name[9]  = "Toadie";
alt_name[10]  = "BlobDev";
alt_name[11]  = "BGS";
alt_name[12]  = "BGW";
alt_name[13]  = "NES";
alt_name[14]  = "Star Warrior";
alt_name[15]  = "Prince of Pufftop";
alt_name[16]  = "Lad";
alt_name[17]  = "G Devil";
alt_name[18]  = "Ceele";
alt_name[19]  = "Green Goo";
alt_name[20]  = "Orange Slime";
alt_name[21]  = "Sky";
alt_name[22]  = "Prober";
alt_name[23]  = "Box God";
alt_name[24]  = "Cubed";*/

muno_event_type = 6;
	user_event(14);