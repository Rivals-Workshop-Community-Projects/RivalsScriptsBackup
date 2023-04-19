var temp_x = floor(x);
var temp_y = floor(y);

alt_name[0]  = "The Farmer";			//Default	
alt_name[1]  = "Stupid Dog";			//Courage
alt_name[2]  = "Dinner Maker";			//Muriel
alt_name[3]  = "Mama's Boy";			//Ma Bagge
alt_name[4]  = "Hunter X Hunted";		//Horst Bagge
alt_name[5]  = "Foo Fighter";			//Di Lung
alt_name[6]  = "Motel Manager";			//Katz
alt_name[7]  = "Foie Gras";			//Le Quack, Chicken from Outer Space
alt_name[8]  = "Freak in the Sheets";		//Mattress Demon
alt_name[9]  = "Naughty";			//Freaky Fred
alt_name[10] = "Climate Changer";		//Evil Snowman
alt_name[11] = "Shadow Spec";			//The Shadow
alt_name[12] = "Traumatic Experience";		//King Ramses
alt_name[13] = "Mister Nasty"; 			//Abyss, Character of Same Name
alt_name[14] = "Whippersnapper";		//The Whip
alt_name[15] = "Origami Killer";		//Paper Eustace
alt_name[16] = "Troll Toll";			//Troll Eustace
alt_name[17] = "Kangaroo Wife's Condolences";	//Kangaroo Eustace
alt_name[18] = "Ooga Booga Billions"; 		//Gold
alt_name[19] = "Wrong Pipe";			//Mario
alt_name[20] = "Engine Enthusiast";		//TF2 Blue Engineer
alt_name[21] = "Old Baldy";			//Saitama
alt_name[22] = "Sailor Salty";			//Popeye
alt_name[23] = "Toon Squad";			//LeBron James

draw_debug_text(temp_x + 14, temp_y + 136, alt_name[get_player_color(player)]);


//literally stealing this shit from Muno
//he must never know about this

if player == 0{ // player online
	var buttposX = 16
	var buttposY = 48
}else{
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		var buttposX = 58
		var buttposY = 178
	}else{ //if player offline
		var buttposX = 74
		var buttposY = 178
	}

}

var cursedBW = 30;
var cursedBH = 26;
var cursedXLim = x + buttposX;
var cursedYLim = y + buttposY;

//thanks muno ily

if (get_synced_var(player) > 2) {set_synced_var(player, 0);}

draw_sprite_ext(sprite_get("mutebuttons"), eust_vobuttcycle, x + buttposX, y + buttposY, 1, 1, 0, c_white, 1);

if(eust_voicebuttCD > 0){
	draw_sprite_ext(sprite_get("mutestatus"), get_synced_var(player), temp_x + 164, temp_y + 50 + floor(eust_voicebuttCD*1.5), 1, 1, 0, c_white, eust_voicebuttCD > 20 ? 1 : (1 - (20-eust_voicebuttCD)/20));
}



// Final piece of my heist to steal Supersonic's scripts
// Thank you again for figuring this all out!

cpu_hover_draw(); 
// you can put this anywhere above your #defines.
// i would recommend ending the shader first (shader_end();)

//as always, #defines go at the bottom of the script.
#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}