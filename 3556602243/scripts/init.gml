main_obj = instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article", 1);
background_obj = instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article", 21);
//


rivals_rogue = true;
ror_language = "English";
//Title Screen
ror_title_option = 0;
ror_title_prev_option = 0;
ror_title_depth = 0;
ror_title_menu = [
	//["Skip", 				"This is purely a Dev/Debug Feature. If you see this ignore it and use the other options."],
	["Play Rogue", 			"Start playing Rivals Rogue with Default Settings"],
	["Gamemode Selection", 	"Play a Premade Gamemode using the Advanced Settings"],
	["Advanced Settings", 	"Modify your Rivals Rogue Game with Multiple Options"],
	//["Change Music", 		"Change the Stage Music to another Themed Pack"],
	["How to Play",			"Learn about the gameplay of Rivals Rogue"],
	["Patch Notes",			"View the Notes from the latest Patch"],
	["Credits", 			"Look at who helped make Rivals Rogue along with Playtesters and Developers who supported Development of Rivals Rogue."],
	["Quit Rogue", 			"Thanks for Playing. This ends the game early incase you accidentally selected Rivals Rogue."]
]

ror_gamemodes = [
	["5x No Limit", "Item Selection gives you 5x the normal amount of items with no max item limit. Bans certain Items that give too many additional items. Many items will not work properly"],
	["Boss", "[REQUIRES TEAMS ENABLED]" + chr(10) + chr(10) + "The Player who selects this Gamemode becomes a Boss. Bonus Items: 2x Mega Mushrooms and 3x Tough Guy. The Boss can still acquire bonus items through normal means."],
	["Tis The Season", "Replaces the Item Pool with all Jolly Festivities. 'Gain 3 random items and give random 1 item to every other player'."],
	["Creative Mode", "Replaces All Items with Creative Modes that give Items of the same Rarity."],
	//["Rogue Asylum", "Instead of choosing items each round you are given a new set of items"],
	//["Blackout Draft", "Items taken from Item Selection are removed from eveyone's pool. Removes Printers from Brook Bazaar"],
	//["Quick Draft", "Choose 1 Item from Twenty Sets. Disables Item Selection afterwards. Sets Points needed to 5."]
	["Exit", "Go back to the Title Screen. Pressing Shield/Special also works."]
]

//print(["Music", get_local_setting(SET_MUSIC_VOL)]);

#region //Patch Notes
ror_patch_note_scroll = 0;
ror_patch_note_show = false;
ror_patch_note_show_array = -4;

#region //Patch Day
ror_date_month = 9;
ror_date_day = 9;
ror_date_year = 2025;

ror_date_month_days = [
	31, //Jan
	28 + ((ror_date_year % 4 == 0) ? 1 : 0), //Feb
	31, //Mar
	30, //Apr
	31, //May
	30, //Jun
	31, //Jul
	31, //Aug
	30, //Sep
	31, //Oct
	30, //Nov
	31, //Dec
]

ror_date_patch_day = 0;
ror_date_curr_day = 0;
//Patch Day
for (var i = 0; i < (ror_date_month - 1); i++) {
	ror_date_patch_day += ror_date_month_days[i];
}
ror_date_patch_day += ror_date_day;
ror_date_patch_day += floor(365.25 * (ror_date_year - 1));
//Current Day
for (var i = 0; i < (current_month - 1); i++) {
	ror_date_curr_day += ror_date_month_days[i];
}
ror_date_curr_day += current_day;
ror_date_curr_day += floor(365.25 * (current_year - 1));

ror_days_since_patch = ror_date_curr_day - ror_date_patch_day;

//print(["Patch days", ror_date_patch_day, ror_date_curr_day, ror_days_since_patch])

ror_patch_latest = string(ror_date_month) + "/" + string(ror_date_day) + "/" + string(ror_date_year);
#endregion


//[Color, Size, Text]
ror_patch_notes = [
	[
		[c_white, 	3,	"Patch Notes"]
	],	
	[
		[c_yellow, 	2, 	"General"], //Title
			[c_white, 	1, 	"Suicopath Axe resprited to look more like an Axe"],
			[c_white, 	1, 	"SSL Mode toggle"],
			[c_white, 	1, 	"Ability to Quit Rogue mid game if you don't change the gamerules"],
			[c_white, 	1, 	"Players may hold a direction to move faster in some menus"],
			[c_white, 	1, 	"Default Choose Timer is now 60 Seconds instead of 30"],
			[c_white, 	1, 	"Added 'Rogue Install' to the How to Play page"],
			[c_white, 	1, 	"Fixed a few item descriptions"],
			[c_white, 	1, 	"Bazaar Printers now display items in front of players"],
			[c_white, 	1, 	"Menu options are now grey if they are turned off"],
			[c_white, 	1, 	"Menu option for Starting Reroll Count (0, 1, 5 (Default), 10, 20)"],
			[c_white, 	1, 	"Menu options for the amount of items you can choose for Start/Loss/Win."],
			[c_white, 	1, 	"Replaced 'Winner Chooses' with choosing the amount a winner can choose"],
			[c_white, 	1, 	"Offline Menu option for 'CPU Boss' that auto select a CPU to be the boss"],
			[c_white, 	1, 	"Final Graph updated to have a Player Stats tab"],
			[c_white, 	1, 	"Added 'bad items' item set because of 'Free Download'"],
			//[c_white, 	1, 	"Released Rogue"],
	],		
	[
		[c_yellow, 	2, 	"Item Additions"], //Title
			[c_white, 	1, 	"Decay - Legendary - Max 1 - '10% of Damage Dealt cannot be Healed'"],
			[c_white, 	1, 	"Nice Throw! - Common - Max 1 - 'Dying at 0% respawns you at 999%'"],
			[c_white, 	1, 	"Shock Dart - Legendary - Max 1 - 'Projectiles shock when they expire'"],
			[c_white, 	1, 	"Dogfight - Epic - Max 3 - 'Hitting the Opponent Restores Resources'"],
			[c_white, 	1, 	"Newton's Law - Epic - Max 1 - 'Tapping Fastfall lets you use Grounded Attacks in the Air.'"],
			[c_white, 	1, 	"Free Download - Rare - Max 999 - '1 in 4 Chance at Legendary. 3 in 4 Chance at a 'Bad' Item'"],
	],		
	[
		[c_lime, 	2, 	"Buffs"],
			[c_white, 	1, 	"'Defensive Missile' Rarity [E -> R]"],
			[c_white, 	1, 	"'Rerolling Stones' gives +1 Reroll and +1 Max Reroll"],
			[c_white, 	1, 	"'Parasite' now spreads faster every 10 Parasites"],
			[c_white, 	1, 	"'Based Cast' assists now can be inputed left or right during attacks"],
	],
	[
		[c_red, 	2, 	"Nerfs"],
			[c_white, 	1, 	""],
	],
	[
		[c_white, 	2, 	"Bugs"],
			[c_white, 	1, 	"Air Dodge Plus now only appears once in the item set"],
			[c_white, 	1, 	"Get over Here now removes effect properly when removed"],
			[c_white, 	1, 	"Mini Black Hole + Bullet Hell Buddy now works properly facing left"],
			[c_white, 	1, 	"Fixed weird bug with getting 'Reconstruct' from a bazaar"],
			[c_white, 	1, 	"'Neutral' now works with tap jump"],
			[c_white, 	1, 	"'Lottery Loser' now works correctly in Winner Chooses"],
			[c_white, 	1, 	"'Based Cast' Zetterburn now works properly with Bullet Hell Buddy"],
			[c_white, 	1, 	"'Based Cast' Zetterburn fixed a crash while using Zetterburn"],
			[c_white, 	1, 	"Projectiles spawned through Rogue items now reset lifetime on Parry"],
			[c_white, 	1, 	"Install no longer activates while dead in a 3+ Player game"],
			[c_white, 	1, 	"Kaboom no longer gets stuck in the Brook Bazaar"],
			[c_white, 	1, 	"Fixed a Main Menu / Sub Menu inputs bug"], 
			[c_white, 	1, 	"Blizzard with Bullet Hell Buddy now can be parried correctly"],
			[c_white, 	1, 	"Choosing 'Boss' after setting a specific boss keeps the selected boss"],
			[c_white, 	1, 	"Segerak can now use the Bazaar properly"],
	]
]

//
#endregion

#region //Credits
ror_credits_page = [
	[
		[c_yellow, 	3,	"Rivals Rogue Developers"],
			[c_white, 	2, 	"Main Developer - DinoBros"],
			[c_white, 	2, 	"Developer - CircleGuy / tdude"],
			[c_white, 	2, 	"Artist - Hyuponia"]
	],
	[
		[c_yellow, 	2, 	"Various Extra Help and Credits for Code/Art Usage"], //Title
			[c_white, 	1, 	"DeltaParallax - JH - Jm1llions - Krankees - Muno - ricE_ECD - Rioku - SuperSonicNK"]
	],		
	[
		[c_yellow, 	2, 	"Playtesters"], //Title
			[c_white, 	1, "Astra - Dakota - Danielone - DeltaParallax - DiChiDu - Flasher - Garfiejus - InnerOtaku - JH"],
			[c_white, 	1, "Jm1llions - KirbSoup - Kocakup - Krankees - Landkon2 - McDucky - Nori - NuzzlyLeaf - OpenGunner"],
			[c_white, 	1, "reiga - ricE_ECD - RoboShyGuy - SB-2749 - Seggo - Sly5 - St. Dan - Staurlite - SuperSonicNK"],
			[c_white, 	1, "the burger - Xompop - Zhryl"],			
			[c_white, 	1, 	"Various Members of Private Servers - 40+ Other Playtesters - Other Friends of Playtesters"]
	],		
	[
		[c_yellow, 	1, 	"Special Thanks to these developers for allowing the use of their characters in Rivals Rogue"], //Title
			[c_white, 	1, "Ambi - Archytas - ArtistofSeer - Astra - BagelBoy - Bar-Kun - BernardO - Blaner - Chmmr - Caradog"],
			[c_white, 	1, "Danielone - DeltaParallax - DinoBros - dreem - Eldom -EquinoxDoodles - GareBear - Giik - Harbige12"],
			[c_white, 	1, "Hyuponia - Inf1n1te - InnerOtaku - J4C - JH - JPEG Warrior - Jm1llions - Kasu Hearts - Kocakup"],
			[c_white, 	1, "Krankees - LilMissMasq - mallow - McDucky - Nuzzlyleaf - NyazureDreams - OpenGunner - reiga - Renlira"],
			[c_white, 	1, "ricE_ECD - Rioku - RoboShyGuy - RuberCuber - SB-2749 - Sakamoto3 - SAKK - Shaunt - ShrUG - Spider Boi"],
			[c_white, 	1, "SuperSonicNK - tdude - VVizard"]
	]
]
#endregion

#region //Tutorial
ror_tutorial_page = [
	[
		[c_yellow, 	3,	"Gameplay Mechanics"],
			[c_white, 	2, 	"Items"],
				[c_white, 	1, 	"Items are the Main Gimmick of Rogue. Each one gives you a Unique Strength or sometimes Weakness."],
				[c_white, 	1, 	"Each one has a different Rarity and Max Amount you can have."],
				[c_white, 	1, 	"Common - White and Circle. Rare - Blue and Triangle. Epic - Purple and Square. Legendary - Yellow and Star."],
				[c_white, 	1, 	"If you somehow would have more of an Item than its Max you will given a 'Crazy Luck' of the same rarity."],
			[c_white, 	2, 	"Item Selection"],
				[c_white, 	1, 	"At the beginning of each Rogue game and after each round, players choose X Items from a set of 5 Items."],
				[c_white, 	1, 	"Items can manipulate the Item Selection in many ways like choice amounts, duplication, and fixed item sets."],
			[c_white, 	2, 	"Gacha Luck"],
				[c_white, 	1, 	"Items can give Gacha Luck which will make items of a higher rarity appear more frequently."],
				[c_white, 	1, 	"Gacha Luck can only effect Items that give Items and does not effect % Chance Items."],
			[c_white, 	2, 	"Rerolls"],
				[c_white, 	1, 	"Players are given a chance to change their Item Selection using saved Rerolls. Press Jump to reroll."],
				[c_white, 	1, 	"Certain Items give Rerolls, increased the Reroll Limit, or changes how you Reroll."],
			[c_white, 	2, 	"Rogue Install"],
				[c_white, 	1, 	"Rogue Install is a meter mechanic that requires 100 meter in order to gain benefits"],
				[c_white, 	1, 	"By default you need to deal 100% Damage to opponents."],
				[c_white, 	1, 	"There are items that make the cost reduced or give you more meter."],
				[c_white, 	1, 	"Once you reach 100 Meter you go into 'Rogue Install' for 8 seconds."],
				[c_white, 	1, 	"By default Rogue Install gives +1 Damage to all of your attacks."],
				[c_white, 	1, 	"There are items that increase speed/weight/damage and various other effects."],
	],	
	[
		[c_yellow, 	3, 	"Brook Bazaar"],
			[c_white, 	2, 	"Information"],
				[c_white, 	1, 	"Brook Bazaar is a break round that appears every 10 Rounds (unless changed in settings)"],
				[c_white, 	1, 	"During this break players can use Printers and Occasionally Scrappers to change their Items."],
				[c_white, 	1, 	"Hold Crouch next to an Object or Brook to interact."],
			[c_white, 	2, 	"Brook"],
				[c_white, 	1, 	"Interacting with Brook confirms you are ready to end the break. All players must confirm to continue."],
			[c_white, 	2, 	"Printers"],
				[c_white, 	1, 	"Printers will take a random Item of the specified Rarity to give you the displayed Item."],
				[c_white, 	1, 	"Printers follow the same Rarity RNG as having 0 Luck and will only have an Item appear once per Bazaar"],
				[c_white, 	1, 	"Having a 'Crazy Luck' Item of an Rarity will have the Printer use that Item instead of a random one"],
			[c_white, 	2, 	"Scrappers"],
				[c_white, 	1, 	"Scrappers have a 10% Chance to replace a printer (Effectively a 47% Chance in Total)."],
				[c_white, 	1, 	"They can be used to Convert any Scrappable Item into a 'Crazy Luck' of the Same Rarity."],
				[c_white, 	1, 	"Pressing Shield or Up allows player to Exit the Scrapper Menu once a player is done."],
	],
	[
		[c_yellow, 	3, 	"Synergies"],
			[c_white, 	2, 	"What is Synergy?"],
				[c_white, 	1, 	"Synergy is the term for when 2 different Items effect eachother for a positive outcome."],
				[c_white, 	1, 	"This is not a full list of Synergies and is only used to give some ideas."],
			[c_white, 	2, 	"FLM Missle + Bullet Hell Buddy"],
				[c_white, 	1, 	"Bullet Hell Buddy will spawn more FLM Missiles"],
			[c_white, 	2, 	"Aerial Evasion + Air Dash"],
				[c_white, 	1, 	"Having more Airdodge Speed will also increase the speed of Air Dash."],
			[c_white, 	2, 	"Tough Guy + 'Any Healing Item'"],
				[c_white, 	1, 	"The Soft Armor from Tough Guy goes away at higher %s, so healing makes it work longer."],
			[c_white, 	2, 	"Extra Selection + Clone Buddy Delivery"],
				[c_white, 	1, 	"Cancelling out the Negative Effects of CBD with ES gives 2 sets of 2 Items."],	
			[c_white, 	2, 	"Trash Collector + Lottery Loser"],
				[c_white, 	1, 	"Giving yourself Negative Luck will make Common Items appear more frequently"],
	]
]
#endregion





//Sprites and Sounds
spr_tiny_card = sprite_get("tiny_card");
ror_sprite = sprite_get("icons")

sfx_counter = sound_get("COUNTER");
vfx_fire = hit_fx_create(sprite_get("vfx_floorislava"), 20);
vfx_shock = hit_fx_create(sprite_get("vfx_shock_explosion"), 6);
vfx_red = 	hit_fx_create(sprite_get("ror_hex_red"), 30);
vfx_green = hit_fx_create(sprite_get("ror_hex_green"), 30);
vfx_blue = 	hit_fx_create(sprite_get("ror_hex_blue"), 30);



//Practice Mode
practice_mode = get_match_setting(SET_PRACTICE);
prac_common = [0, 0, 0, 0, 0];
prac_rare = [0, 0, 0, 0, 0];
prac_epic = [0, 0, 0, 0, 0];
prac_legend = [0, 0, 0, 0, 0];

#region //Player Detection (Player Count and Teams)
team_1 = 0;
team_2 = 0;
main_players = [];
boss_team_pos = [-4, -4, -4, -4, -4];

ror_ssl_player_count = 0;

with oPlayer {
	if (is_player_on(player) && !clone && !custom_clone) {
		array_insert(other.main_players, 0, self);
		//
		if (get_player_team(player) == 1) {
			other.team_1++;
		} else if (get_player_team(player) == 2) {
			other.team_2++;
		}
		ror_team_orig = get_player_team(player);
	}
}

//Major Bug that appears when 
ror_css_bug = false;
for (var i = 0; i < array_length(main_players); i++) {
	if main_players[i].player > array_length(main_players) { ror_css_bug = true; }
}

#endregion

#region //Points to Win
teams_mode = get_match_setting(SET_TEAMS); 

if get_match_setting( SET_STOCKS ) == 3 {
	//Defaults
	if (teams_mode) {
		points_to_win = 20;
	} else {
		switch(array_length(main_players)) {
			case 3:
				points_to_win = 15;
			break;
			case 4:
				points_to_win = 10;
			break;
			default:
				points_to_win = 20;
			break;
		}
	}
} else {
	points_to_win = practice_mode ? 999 : get_match_setting( SET_STOCKS )
}
#endregion

#region//Final Graphs
//Arrays
final_graph_points = [
	["Points", sprite_get("icons"), 2],
	[0],
	[0],
	[0],
	[0],
]
final_graph_luck = [
	["Luck", sprite_get("icons"), 38],
	[0],
	[0],
	[0],
	[0],
]
final_graph_items = [
	["Items", sprite_get("icons"), 59],
	[0],
	[0],
	[0],
	[0],
]
final_graph_time = [
	["Time", sprite_get("icons"), 111],
	[0],
	[0],
	[0],
	[0],
]
final_graph = [
	final_graph_points,
	final_graph_luck,
	final_graph_items//,
	//final_graph_time
]
selected_final_graph = 0;
for (var i = 0; i < array_length(main_players); i++) {
	array_insert(
		final_graph, array_length(final_graph), [["Player", sprite_get("icons"), 321, i]]
		//final_graph, 0, [["Player 1 Items", get_char_info(main_players[i].player, INFO_ICON), 0]]
	)
}
//
graph_width = 700; //800
graph_height = 300; //400 //300
ending_time = 0;
#endregion

#region //Normal Luck
ror_luck_c = 1;
ror_luck_r = 5;
ror_luck_e = 10;
ror_luck_l = 20;
//Other Luck
ror_luck_funky_tea = 10;
//I think this code would could rival Yandere Simulator
luck_point_scaling = 0;
switch(points_to_win) {
	case 1:
	case 2:
	case 3:
		luck_point_scaling++;
	case 4:
	case 5:
		luck_point_scaling++;
	case 6:
	case 7:
		luck_point_scaling++;
	case 8:
	case 9:
		luck_point_scaling++;
	default:
		luck_point_scaling++;
	break;	
	
}
#endregion

#region //Item Pools
//item_pool_sets = ["default", "dino", "tdude", "custom"];
item_pool_sets = ["default", "dino", "tdude", "bad items", "empty"];
item_pool_selected = 0;
item_pool_set = item_pool_sets[item_pool_selected];

items_commons = [];
items_rares = [];
items_epics = [];
items_legends = [];

items_all = [];

//items_lang_all = [];

//Display Purposes
item_custom_pos = 0;
items_custom_commons = [];
items_custom_rares = [];
items_custom_epics = [];
items_custom_legends = [];

item_select = [];
for (var i = 0; i <= 4; i++) {
	array_push(item_select, [-4, -4, -4, -4, -4]);
}
#endregion	

//full_game_timer = 0;
real_world_time_start = current_time / 1000;
real_world_time_current = current_time / 1000;

#region //Stage Assets Information
stage_element = 0; // 0
stage_colors = [
	[make_colour_rgb(66, 50, 79), 	make_colour_rgb(139, 144, 198)], //Purple
	[make_colour_rgb(255, 106, 0),	make_colour_rgb(183, 168, 165)], //Red
	[make_colour_rgb(216, 52, 194), make_colour_rgb(107, 115, 175)], //Blue
	[make_colour_rgb(54, 56, 56), 	make_colour_rgb(77, 91, 91)], //Grey
	[make_colour_rgb(142, 66, 11), 	make_colour_rgb(128, 247, 247)],  //Green
	[make_colour_rgb(165, 86, 255), make_colour_rgb(77, 68, 181)]  //Final (Always the last option)
]
stage_sandstorm_color = make_colour_rgb(255, 189, 7);
//Stage Platforms
stage_plat_left 	= instance_create(room_width / 2, room_height * 4, "obj_stage_article_platform", 3);
	stage_plat_left.can_move = true;
stage_plat_right 	= instance_create(room_width / 2, room_height * 4, "obj_stage_article_platform", 3);
	stage_plat_right.can_move = true;
stage_plat_center 	= instance_create(room_width / 2, room_height * 4, "obj_stage_article_platform", 3);
	stage_plat_center.can_move = true;
//Brook Platforms
//var _brook_sides = get_stage_data( SD_WIDTH ) / 2 + 78;
var _brook_sides = get_stage_data( SD_WIDTH ) / 2 + 80;
brook_plat_height = get_marker_y(96);
brook_plat_left 	= instance_create((room_width / 2) - _brook_sides, room_height * 4, "obj_stage_article_solid", 3);
	brook_plat_left.depth = 30;
brook_plat_right 	= instance_create((room_width / 2) + _brook_sides, room_height * 4, "obj_stage_article_solid", 3);
	brook_plat_right.depth = 30;
//Stage Ground
stage_ground_main = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 4);
stage_ground_bg = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 4);
	stage_ground_bg.sprite_index = sprite_get("hyu_holo_ground_bg");
stage_ground_sides = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 4);
	stage_ground_sides.sprite_index = sprite_get("hyu_holo_color");
//Background
stage_bg = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 5); //Different From the rest
	stage_bg.sprite_index = sprite_get("holo_bg");
	stage_bg.image_xscale = 2;
	stage_bg.image_yscale = 2;
	stage_bg.orig_x = get_marker_x(96);
	stage_bg.orig_y = get_marker_y(96);
stage_table = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 4);
	stage_table.sprite_index = sprite_get("holo_table");
stage_fade = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 4);
	stage_fade.sprite_index = sprite_get("holo_fadebg");
	stage_fade.image_xscale = 2;
	stage_fade.image_yscale = 2;

stage_objects = [
	stage_bg,
	stage_plat_left,
	stage_plat_right,
	stage_plat_center,
	stage_ground_sides,
	stage_ground_main
]

for (var i = 0; i < array_length(stage_objects); i++) {
	stage_objects[i].stage_element = stage_element;
	stage_objects[i].image_index = stage_element;
}
stage_plat_left.depth = 30;
stage_plat_right.depth = 30;
stage_plat_center.depth = 30;
stage_ground_sides.depth = 29;
stage_ground_main.depth = 29;
stage_table.depth = 28
stage_ground_bg.depth = 35
stage_bg.depth = 50;
stage_ground_sides.image_blend = stage_colors[stage_element, 0];
stage_fade.image_blend = stage_colors[stage_element, 0];
stage_fade.depth = 49;
//stage_bg.image_blend = stage_colors[stage_element, 1];

/*
with oPlayer {
	print(["ssl_death_sound" in self]);
}
*/


//SSL MODE
ror_ssl_visuals = false;
if (ror_ssl_visuals) {
	stage_bg.sprite_index = sprite_get("ssl_holo_bg");
	stage_ground_bg.sprite_index = sprite_get("ssl_holo_ground_bg");
	stage_plat_left.sprite_index = sprite_get("ssl_holo_plat");
	stage_plat_right.sprite_index = sprite_get("ssl_holo_plat");
	stage_plat_center.sprite_index = sprite_get("ssl_holo_plat");
	stage_ground_sides.sprite_index = sprite_get("ssl_holo_color");
		stage_ground_sides.image_blend = c_white;
	stage_ground_main.sprite_index = sprite_get("ssl_holo_ground");
	stage_table.sprite_index = sprite_get("ssl_holo_table");
	stage_fade.sprite_index = sprite_get("empty");
	//stage_fade.sprite_index = sprite_get("ssl_holo_fadebg");
}

#endregion


#region //Gamemodes
egg_only = false;
always_scrapper = false;
item_multi = false;
	item_multi_value = 5;
no_limits = false;
artifact_of_command = false;//false;
disable_throws = true;
refresh_rerolls = false;
winner_chooses = false; //false
random_stages = false; //false
bazaar_only = false; //false
blackout_draft = false; //false
menu_dictionary = practice_mode; //
item_set_can_ban = false;
disable_item_picks = false;
frontload_items = false; //FALSE BY DEFAULT
	frontload_count = 19;
ror_layout_change = false;
ror_location_change = true;
ror_boss_mode = false;
	ror_boss_player = -4; //-4
ror_tis_the_season = false;
creative_mode_only = false;
rogue_insanity = false;
ror_better_bazaar = false; //Dragon Ball Gamemode
ror_luck_effects_opponent = true; //True by Default
//
disable_star = false; //SET THIS TO TRUE IF RNG BREAKS
end_rogue_count = 5;
//
choices_on_start = 3;
choices_on_loss = 2;
choices_on_win = 0;
//
#endregion

#region //Music Packages
music_bazaar_num = 6; //Change this if we ever add new stages
music_basecast_current = -4;
ssl_pack = 1;
music_packs = [
	//Omori
	[
		"Off",
		[
			"", //Mountain
			"", //Volcano
			"", //Seafloor
			"", //Cityscape
			"", //Forest
			"",	//Finale
			""	//Bazaar
		],
	],	
	//Retro
	[
		"SSL",
		[
			"music_ssl_mountain", //Mountain
			"music_ssl_volcano", //Volcano
			"music_ssl_water", //Seafloor
			"music_ssl_city", //Cityscape
			"music_ssl_forest", //Forest
			"music_ssl_finale", //Finale
			"music_ssl_bazaar" //Bazaar
		],
	],	
	//Base Cast
	[
		"Base Game",
		[
			resource_get("music_solo_map_loop_i"), //Mountain
			resource_get("music_wsfire_loop_i"), //Volcano
			resource_get("music_guest2_loop_i"), //Seafloor
			resource_get("music_wsair_loop_i"), //Cityscape
			resource_get("music_wswater_loop_i"), //Forest
			resource_get("music_tether_loop_i"), //Finale
			resource_get("music_holy_loop_i") //Bazaar
		],
	],		
	//Omori
	[
		"Omori",
		[
			"music_omori_mountain", //Mountain
			"music_omori_volcano", //Volcano
			"music_omori_water", //Seafloor
			"music_omori_city", //Cityscape
			"music_omori_forest", //Forest
			"music_omori_finale", //Finale
			"music_omori_bazaar" //Bazaar
		],
	],		
	//Omori
	[
		"Kirby",
		[
			"music_kirby_mountain", //Mountain
			"music_kirby_volcano", //Volcano
			"music_kirby_water", //Seafloor
			"music_kirby_city", //Cityscape
			"music_kirby_forest", //Forest
			"music_kirby_finale", //Finale
			"music_kirby_bazaar" //Bazaar
		],
	],
    //Paper Mario
    [
        "Paper Mario",
        [
            "music_pm_mountain", //Mountain
            "music_pm_volcano", //Volcano
            "music_pm_water", //Seafloor
            "music_pm_city", //Cityscape
            "music_pm_forest", //Forest
            "music_pm_finale", //Finale
			"music_pm_bazaar" //Bazaar
        ],
    ], 
    //Sonic the Hedgehog
    [
        "Sonic the Hedgehog",
        [
            "music_sonic_mountain", //Mountain
            "music_sonic_volcano", //Volcano
            "music_sonic_water", //Seafloor
            "music_sonic_city", //Cityscape
            "music_sonic_forest", //Forest
            "music_sonic_finale", //Finale
			"music_sonic_bazaar" //Bazaar
        ],
    ], 
	//Hololive
	[
		"Hololive",
		[
			"music_holo_mountain", //Mountain
			"music_holo_volcano", //Volcano
			"music_holo_water", //Seafloor
			"music_holo_city", //Cityscape
			"music_holo_forest", //Forest
			"music_holo_finale", //Finale
			"music_holo_bazaar" //Bazaar
		],
	]
]
current_music_pack = 0;
stage_music_volume = 0;
change_music = 30;
#endregion

#region//Main Menu
game_paused = false;
pause_player = -4;

menu_pos = 0;

menu_options = {
	//
	menu_next : ["Scroll Page", "", "Hold Left when selecting this option to Scroll Backwards. You can also hold Shield and Press Left or Right to Scroll."],
	menu_exit : ["Exit Menu", "", "You can also press Shield + Taunt to Exit."],
	menu_lang : ["Item Language: ", "English", "Change the Language to another available option (English/)"],
	//
	
	//Light Modes
	light_item_display : ["Light Weight Mode", "Off", "Disables *Most* causes of Lag (Item Icons, Item Icon Outline, Item Icon Numbers and Weather Effects)."],
	light_icons : ["Display all Icons", "On", "Disables the entire Hud for Item Display."],
	light_rares : ["Display all Rarities", "On", "Disables just the Outline of the Item Display."],
	light_numbers : ["Display Counts", "On", "Disables just the Item Count of the Item Display."],
	light_damage : ["Display Damage", "On", "Disables the Damage Numbers that appear when dealt Damage."],
	light_meter : ["Display Meter Gain", "On", "Disables the Meter Gain Numbers that appear when gaining Rogue Meter."],
	light_hitbox : ["Display Hitboxes", "On", "Disables showing Hitboxes when certain Items are in play."],
	light_weather : ["Display Weather", "On", "Disables showing Weather Effects (They still effect gameplay)."],
	light_particle : ["Display Item Particles", "On", "Disables showing the items chosen each rounds."],
	//Options
	online : ["Toggle Offline/Online Mode", "", "Switches Item Selection to either tiny cards (Offline) or big cards (Online)."],
	ssl_mode : ["Toggle SSL Visuals", "", "Allows switching the visuals between Normal and SSL modes"],
	local_player : ["Local Player Function", "", "This shouldn't be here. It just prints something for DinoBros"],
	//Stage Stuff
	stage_side : ["Side Platforms", "Off", "Changes the Positions of the Side Platforms (0 - 9)."],
	stage_center : ["Middle Platform", "Off", "Changes the Positions of the Center Platforms (0 - 9)."],
	stage_art : ["Stage Art", "Default", "Changes the Stage Art in this Order: (Mountain/Volcano/Seafloor/Cityscape/Forest/Finale)."],
	stage_random : ["Random Stage", "", "Changes the Stage Art and Platforms to Random Values each time the button is pressed."],
	stage_music : ["Music Pack", music_packs[current_music_pack, 0], "Changes the Stage Music. (Base Game/Omori/Kirby/Paper Mario/Sonic The Hedgehog/Hololive/SSL)"],
	//Gamemodes
	mode_eggs : ["Eggs Only", egg_only ? "On" : "Off", "Makes every Item in the Item Selection a Mystery Egg."],
	mode_scrapper : ["Always Scrapper", always_scrapper ? "On" : "Off", "When this is Enabled, the Brook Bazaar will always have a Scrapper."],
	mode_multi : ["5x Item Multiplier", item_multi ? "On" : "Off", "When this is Enabled, Players will get 5 copies of an Item when they get one."],
	mode_no_limit : ["No Limits (Experimental)", no_limits ? "On" : "Off", "When this is Enabled, There are no Max limits to an Item you can choose."],
	mode_command : ["Choose Items", artifact_of_command ? "On" : "Off", "When this is Enabled, Players will get to choose the Items they get in a Round. (Up to 2 Commons, a Rare, an Epic or a Legendary)."],
	mode_throws : ["Disable Throwing", disable_throws ? "On" : "Off", "If a player Self-Destructs at 0% they will not be given Items."],
	mode_rerolls : ["Refresh Rerolls", refresh_rerolls ? "On" : "Off", "When this is Enabled, Players will Refresh their Rerolls for Item Selection."],
	mode_winner : ["Winner Chooses Too", winner_chooses ? "On" : "Off", "When this is Enabled, the Winner of a Round can also choose Items."],
	mode_bazaar : ["Bazaar Frequency", "Normal (10)", "This Option allows player to choose how frequent a Brook Bazaar will Appear (0, 5, or 10 Rounds)."],
	mode_stages : ["Random Stages", random_stages ? "On" : "Off", "When this is Enabled, the Stage Layout will change Every Round."],
	mode_bazaar_only : ["Bazaar Only", bazaar_only ? "On" : "Off", "When this is Enabled, Crazy Luck is the only Availabe Item to Pick and a Brook Bazaar appears Every Round."],
	mode_blackout : ["Blackout Draft", blackout_draft ? "On" : "Off", "When this is Enabled, Items are removed from the Item Pool of all Players."],
	mode_dictionary : ["Item Dictionary", menu_dictionary ? "Cheats" : "Info", "[Info] is the Default and will show Item Descriptions." + chr(10) + "[Bans] allows banning an item from the item pool mid game. (Rerolls the item pool too)" + chr(10) + "[Cheats] can be turned on to allow Players to Gift items to themselves using the Item Dictionary."],
	mode_item_bans : ["Allow Midgame Bans", item_set_can_ban ? "On" : "Off", "When this is Enabled, Players can turn Off items using the Item Dictionary."],
	mode_item_disabled : ["Disable Item Picking", disable_item_picks ? "On" : "Off", "When this is Enabled, the Item Selection is Skipped for all Players."],
	mode_frontload : ["Quick Draft", frontload_items ? "On" : "Off", "When this is Enabled, Have 20 Rounds of 1 Pick Item Selection at the Beginning."],
	mode_season : ["Jolly Festivities Only", ror_tis_the_season ? "On" : "Off", "Replaces the Item Pool with all Jolly Festivities. 'Gain 3 random items and give random 1 item to every other player'."],
	mode_creative : ["Creative Mode Only", creative_mode_only ? "On" : "Off", "Replaces All Items with Creative Modes that give Items of the same Rarity."],
	mode_reroll_max : ["Starting Rerolls", "Default (5)", "[ONLY USABLE FIRST ROUND]" + chr(10) + "This options sets the amount of rerolls players start with."],
	mode_choices_start : ["Items on Start", choices_on_start, "Set the amount of items players can get at the start of a game." + chr(10) "Default: 3"],
	mode_choices_loss : ["Items on Loss", choices_on_loss, "Set the amount of items players can get after losing a round" + chr(10) "Default: 2"],
	mode_choices_win : ["Items on Win", choices_on_win, "Set the amount of items players can get after winning a round" + chr(10) "Default: 0"],
	//
	mode_luck : ["Star Effects Opponents", ror_luck_effects_opponent ? "On" : "Off", "Decide if 'Wish Upon a Star' effects the opponent."],
	//Individual Player Things
	mode_boss: ["Boss Player", ror_boss_mode ? 1 : "Off", "[REQUIRES TEAMS ENABLED]"  + chr(10) + chr(10) + "When this is Enabled, One Player becomes a Powerful Foe with multiple items vs all other players. Bonus Items: 2x Mega Mushrooms and 3x Tough Guy. The Boss can still acquire bonus items through normal means."],
	//
	mode_stage_layout : ["Bazaar Changes Platforms", ror_layout_change ? "On" : "Off", "Everytime a Bazaar appears the Platforms will Change."],
	mode_stage_location : ["Bazaar Changes Location", ror_location_change ? "On" : "Off", "Everytime a Bazaar appears the Art and Music will Change."],
	//Cheats
	import_data : ["Import Data", "", "Import Every Player's from an Exported text. There is a Character-Length Limit to how many items can be saved."],
	export_data : ["Export Data", "", "Export Every Player's build as text for later. There is a Character-Length Limit to how many items can be saved."],
	item_set : ["Item Set", string(item_pool_set), "Select a premade Ban List made by the Devs."],
	reroll : ["Reroll All Pools", "", "Reroll Everyone's Item Selection for free."],
	end_bazaar : ["Skip Bazaar", "", "Debug Tool to end the Brook Bazaar early."],
	five_more : ["5 More Rounds", "", "Make the game take longer to Win."],
	five_less : ["5 Less Rounds", "", "Make the game take less longer to Win. Will not go below the Highest Points Score plus One"],
	spawn_bazaar : ["Spawn Bazaar", "", "Next Round will contain a Brook Bazaar."],
	spawn_shenron : ["Spawn Shenron", "", "Spawns Shenron for Testing Purposes."],
	give_everything : ["Give Everything", "", "Gives you 1 copy of every item. Used for testing purposes"],
	end_rogue : ["End Rogue Session", end_rogue_count, "Click this button until it reaches 0 to end the Rogue game"],
	//Item Displays
	//item_display : ["", ""],
	item_dictionary : ["Change Display Rarity", "Commons", "Cycle through which Items are displayed. Showing ALL items would be take too much space."],
	item_display : ["", "", "Hover an Item to see Information"],
	//Dev Tools
	light_destroy : ["Destroy Everything", "", "Reduces Lag by destroying ALL Projectiles and Articles."],
	export_itemc : ["Export Commons", "", "Pops up a Text Box to Copy and Paste Info about Items."],
	export_itemr : ["Export Rares", "", "Pops up a Text Box to Copy and Paste Info about Items."],
	export_iteme : ["Export Epics", "", "Pops up a Text Box to Copy and Paste Info about Items."],
	export_iteml : ["Export Legends", "", "Pops up a Text Box to Copy and Paste Info about Items."],
	//Creator Tools
	export_cards : ["Export Cards", "", "Copy and Paste for Buddy Developers."],
	export_name : ["Export Names", "", "Copy and Paste for Buddy Developers."],
	export_desc : ["Export Descriptions", "", "Copy and Paste for Buddy Developers."],
	export_small_desc : ["Export Small Descriptions", "", "Copy and Paste for Buddy Developers."],
	export_flavor : ["Export Flavor Text", "", "Copy and Paste for Buddy Developers."],
	export_raw_name : ["Export Raw Names", "", "Copy and Paste for Buddy Developers."],
	export_raw_desc : ["Export Raw Descriptions", "", "Copy and Paste for Buddy Developers."],
	export_raw_small_desc : ["Export Raw Small Descriptions", "", "Copy and Paste for Buddy Developers."],
	export_raw_flavor : ["Export Raw Flavor", "", "Copy and Paste for Buddy Developers."],
}


show_icons = menu_options.light_icons[1] == "On";
show_rares = menu_options.light_rares[1] == "On";
show_numbers = menu_options.light_numbers[1] == "On";
show_damage = menu_options.light_damage[1] == "On";
show_meter_gain = menu_options.light_meter[1] == "On";
show_hitbox = menu_options.light_hitbox[1] == "On";
show_weather = menu_options.light_weather[1] == "On";
show_particles = menu_options.light_particle[1] == "On";

menu_page = 0;

//Optimized Menu for fun
menu_pages = [
	//Page 1
	[
		"Most Important Menu",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.stage_music,
			menu_options.light_item_display,
			//
			menu_options.item_set,
			menu_options.item_dictionary,
			menu_options.item_display
		]
	],	
	[
		"Lag Options",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.light_icons,
			menu_options.light_numbers,
			menu_options.light_rares,
			menu_options.light_damage,
			menu_options.light_meter,
			menu_options.light_hitbox,
			menu_options.light_weather,
			menu_options.light_particle,
			menu_options.light_destroy
		]
	],
	//Page 2
	[
		"Alternate Gamemodes (1)",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			//menu_options.mode_eggs,
			menu_options.mode_scrapper,
			//menu_options.mode_multi
			//menu_options.mode_no_limit,
			//menu_options.mode_command,
			//menu_options.mode_throws,
			menu_options.mode_reroll_max,
			menu_options.mode_rerolls,
			//menu_options.mode_winner,
			menu_options.mode_choices_start,
			menu_options.mode_choices_loss,
			menu_options.mode_choices_win,
			//
			menu_options.mode_bazaar,
			menu_options.mode_luck,
			//menu_options.mode_bazaar_only
			menu_options.mode_stages,
			//menu_options.mode_blackout,
			menu_options.mode_item_disabled,
			menu_options.mode_frontload,
			menu_options.mode_stage_layout,
			menu_options.mode_stage_location,
			//
			menu_options.mode_boss
		]
	],	
	//Page 6
	[
		"Dev Tools (Gameplay)",
		[	
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.stage_art,
			menu_options.online,
			menu_options.ssl_mode,
			menu_options.reroll,
			menu_options.five_more,
			menu_options.five_less,
			menu_options.spawn_bazaar,
			menu_options.end_rogue,
			//menu_options.spawn_shenron,
			//menu_options.mode_item_bans,
			menu_options.mode_dictionary
			//menu_options.import_data
		]
	]
]

if practice_mode || is_aether_stage() {
	array_push(menu_pages,
		//Page 4
		[
			"Stage Art Selection",
			[
				//Menu Options
				menu_options.menu_next,
				menu_options.menu_exit,
				//
				menu_options.stage_side,
				menu_options.stage_center,
				menu_options.stage_art,
				menu_options.stage_music,
				menu_options.stage_random
			]
		]
	)
	//Info Dev Tool
	array_push(menu_pages,
		//Information Page
		[
			"Dev Tools (Information)",
			[	
				//Menu Options
				menu_options.menu_next,
				menu_options.menu_exit,
				//
				//menu_options.light_destroy,	
				//menu_options.online,			
				//
				//menu_options.spawn_shenron,
				menu_options.give_everything,
				menu_options.export_itemc,
				menu_options.export_itemr,
				menu_options.export_iteme,
				menu_options.export_iteml,
				menu_options.local_player,
				menu_options.import_data
			]
		]
	)
}


/*
//Old Menu
menu_pages = [
	//Page 1
	[
		"Most Important Menu",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.stage_music,
			menu_options.light_item_display,
			//
			menu_options.item_set,
			menu_options.item_dictionary,
			menu_options.item_display
		]
	],	
	[
		"Lag Options",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.light_icons,
			menu_options.light_numbers,
			menu_options.light_rares,
			menu_options.light_damage,
			menu_options.light_meter,
			menu_options.light_hitbox,
			menu_options.light_weather
		]
	],
	//Page 2
	[
		"Alternate Gamemodes (1)",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.mode_eggs,
			menu_options.mode_scrapper,
			menu_options.mode_multi
			menu_options.mode_no_limit,
			menu_options.mode_command,
			menu_options.mode_throws,
			menu_options.mode_rerolls,
			menu_options.mode_winner,
			menu_options.mode_bazaar,
			menu_options.mode_bazaar_only
			menu_options.mode_stages,
			menu_options.mode_blackout,
			menu_options.mode_item_disabled,
			menu_options.mode_frontload,
		]
	],	
	//Page 3
	[
		"Alternate Gamemodes (2)",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.mode_stage_layout,
			menu_options.mode_stage_location,
			menu_options.mode_season,
			menu_options.mode_creative,
			menu_options.mode_boss
		]
	],
	//Page 4
	[
		"Stage Art Selection",
		[
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.stage_side,
			menu_options.stage_center,
			menu_options.stage_art,
			menu_options.stage_music,
			menu_options.stage_random
		]
	],
	//Page 5
	[
		"Dev Tools (Information)",
		[	
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			//menu_options.light_destroy,	
			//menu_options.online,			
			//
			menu_options.export_itemc,
			menu_options.export_itemr,
			menu_options.export_iteme,
			menu_options.export_iteml,
			menu_options.local_player,
		]
	],
	//Page 6
	[
		"Dev Tools (Gameplay)",
		[	
			//Menu Options
			menu_options.menu_next,
			menu_options.menu_exit,
			//
			menu_options.light_destroy,	
			menu_options.online,
			menu_options.reroll,
			menu_options.five_more,
			menu_options.five_less,
			menu_options.spawn_bazaar,
			menu_options.spawn_shenron,
			menu_options.mode_item_bans,
			menu_options.mode_dictionary,
			menu_options.import_data
		]
	]
]
*/

//print(menu_options.light_icons);

menu_text = [
	["Light Weight Mode: ", "Off"],
	["Import Data", ""],
	["Item Set", string(item_pool_set)],
	["FIX ONLINE DOUBLES / PLAY TOGGLE ONLINE/OFFLINE MODE ONLINE", ""],
	["Side Platforms", "Off"],
	["Middle Platform", "Off"],
	["Stage Art", "Default"],
	["Reroll All Pools", ""],
	//	["Import Data", ""],
	["", ""]
]

//Light Weight Modes
light_icons = ["Off", "Off (No Buddies)", "Light", "Ultra Light", "Show Nothing"];
light_weight_mode = array_length(main_players) >= 3 ? "Light" : "Off (No Buddies)";
menu_text[0, 1] = light_weight_mode;
should_make_buddies = false;

//Off
//Light
//Ultra Light


//
destroy_array = [
	pHitBox,
	obj_article1,
	obj_article2,
	obj_article3,
	obj_article_solid,
	obj_article_platform
]
//

_menu_data = 1;
_menu_item_set = 2;
_menu_sides_plat = 4;
_menu_center_plat = 5;
_menu_stage_art = 6;

_menu_item_pool = array_length(menu_text) - 1;
	pool_cursor = [0, 0] //Menu Pool Cursor

//Stage Names	
stage_art = [
	"Mountain", //Display Name
	"Volcano", //Display Name
	"Seafloor", //Display Name
	"Cityscape", //Display Name
	"Forest", //Display Name
	"Finale" //Display Name
]
#endregion
//print(["Checking Modulo", 1 % 4, 3 % 4, -3 % 4])
#region	//Taunt Menu
stats_page_num = [0, 0, 0, 0, 0];	
stat_pages = [
	"Luck",
	"Stats",
	"Item Inventory",
	//"Quick Info",
	"Attack Info",
	"Damage Buffs",
	"Start Up Buffs",
	"Whifflag Removal",
	"Rogue Install",
	"Movement Attacks",
	"Grab-Like Attacks",
	"Sweetspots"
]
#endregion
	
#region //Loading Text + Brook Dialogue
loading_text_num = 0;
quirky_dia = [
	"Setting Variables",
	"Loading Variables",
	"Making Gameplay Changes",
	"Waiting For Stability",
	"Lagging Game",
	"Saving Workshop",
	"Uploading Patch",
	"Rigging Next Item Pool",
	"Removing Herobrine", //Minecraft Reference
	"Suggesting New Items",
	"Calculating Frames Per Second",
	"Touching Grass", //Joke Reference
	"Oven Out Hot Eat The Food", //Joke Reference
	"Risking The Rain", //Risk of Rain Reference
	"Binding Isaac", //Binding of Isaac Reference
	"Slaying A Spire", //Slaying the Spire Reference
	"Wizarding A Legend", //Wizard of Legend Reference
	"Stepping to Eden", //One Step From Eden Reference
	"Befriending Jimbo", //Balatro Reference
	"How is it going?",
	"Like My Stage", //Go to my Workshop Page and give me a thumbs up and follow me
	"Comment Hatsune Miku!", //Hatsune Miku 
	"Turning Right At Next Exit", //GPS
	"Rerouting", //GPS
	"Loading As They Say", //Aigis Reference
	"Thinking Miku Miku OO-EE-OO", //Hatsune Miku
	"Nerfing Your Favorite Item",
	"Buffing Better Waveland/Fast Waveland/Fast Wavedash", //Better Waveland is a really bad item
	"Reworking Your Character",
	"Deleting Vods",
	"Parrying In 100 Ping",
	"Taking my Time",
	"Collecting my Pages", //Slenderman
	"Writing a lot of Quirky Dialogue to add Humor to Waiting",
	"Feeling Lucky?",
	"Fxiign Spleling Misstkaes",
	"Filing my Taxes",
	"Spinning the Slots",
	"Fueling my Gambling Addiction",
	"Buying Expensive Products",
	"I hate FUN",
	"Banning Circle Camping",
	"Wazzup! I am Chaos the end of ends", //Hakos Baelz
	"Trapping a Steel Rose in a Cage of Ice",  //Hakos Baelz
	"BIBBIDI BOBBIDI BOOWA", //Suisei
	"You gonna learn today", //Justin Wong
	"Let's go Justin!", //Evo Moment
	"Wombo Combo", //Smash Bros
	"Gonna take your for a ride", //Marvel
	"Rebalancing Luck Again",
	"Updating the Spreadsheet",
	"Man, I Love Fauna", //Ceres Fauna
	"Ruining your Build",
	"Giving you Bad Items",
	"Giving you Good Items",
	"Nerfing Extra Selection",
	"Please, No More Bugs",
	"Hi Honey", //Suisei
	"Deleting Requested Item",
	"Adding to my Item Backlog",
	"Raising the Max Item Limit",
	"Why Does She Floot", //Community Joke
	"Crashing the Game",
	"Writing Chapter 4: The War", //Community Joke
	"Causing a Desync",
	"Let's go Gambling! Aww Dangit", //Meme Reference
	"You are Now Manually Breathing",
	"Finding out what DSPECIAL does", //Community Joke
	"<(0_0<) <(0_0)> (>0_0)> kirby dance",
	"Sneaky Neaky Sneaking like I'm SNAKE", //Mori Calliope
	"Revelation", //Hololive
	"Researching other Roguelikes",
	"Please be Patient",
	"Not a Big Fan of the Government", //30 on 30
	"Remember to Reroll",
	"Try not to get galaxied at 0%",
	"Country Roads Take me Home", //Yeah
	"Press 9 for Wiggle", //Koseki Bijou
	"Clank Clank Clank", //The gears in my head turning
	"I get your money!", // Mococo
	"Welcome to the Curio Shop", //Webkinz
	"Grr, I'm Angry", //Koseki Bijou
	"Bun Bun Bun", //Todoroki Hajime
	"Bau Bau", //FuwaMoco
	"Creeper? Aww man", //Revenge
	"Why does my Nose Run, but my Feet smell?",
	"Coloring my Night", //Persona 3
	"It's Full Moon again", //Persona 3
	"Crazy how time flies", //Persona 3
	"Burning my Dread", //Persona 3
	"Reaching out to the Truth", //Persona 4
	"You'll never see it coming", //Persona 5
	"Truck, Duck, Pluck, Fun to Rhyme", //FUn 2 rhyME - HOward MOody
	"Not to backseat, but really? Those items?",
	"Hey Lois, I'm a Loading Message",
	"Jab, Jab, Powah Dunk",
	"May DinoBros have mercy on your build", //Self Indulgence
	//"Thank CircleGuy for his work on Rogue", //Thank you tdude
	//"Thank Hyuponia for her work on Rogue", //Thank you Hyu
	"Say, Thank You CircleGuy", //Thank you tdude
	"Say, Thank You Hyuponia", //Thank you Hyu
	"I hope you are enjoying Rogue",
	"Women love me. Fish fear me",
	"Crowbars are really useful", //Items
	"Try Air Dash + More Air Dodge", //Item Combo
	"Try Bullet Hell Buddy + FLM Missile", //Item Combo
	"Poison builds are pretty good", //Item Builds
	"I'm nerfing Luck Items again", //Items
	"My Brain is slowly turning to Mush",
	"Ain't nothing going to break my Stride",
	"My Sweetest Scarlet, My Sweetest Scarlet", //Nerissa Ravencroft
	"WHAT A WOMAN", //Gigi Murin
	"I alone am The Honored One", //Jujutsu Kaisen
	"Nah, I'd Win", //Jujutsu Kaisen
	"Mrs. Sandbert gave me Joycon Drift again", //Item Stuff
	"DO NOT DRINK THE FUNKY TEA", //Item Stuff
	"Please don't crash. Please don't crash. Please don't crash.",
	"Custom Items Coming Soon",
	"I apologize for any Issues. I'm not a Miracle Worker",
	"Try backing up your items during long sessions",
	"A", //Gawr Gura
	"Breaking Dimensions", //Hololive
	"Please link me Clips and Videos of Rogue Gameplay",
	"Rogue has a lot of weirdness, but it's a charming weird",
	"Do you enjoy these Messages?",
	"I'm slowly getting Brainrot",
	"My Pearl", //Hololive Enrico
	"Have you heard the tale of Gonathon G?", //Hololive Enrico
	"If you can't tell I like referencing things I like",
	"I keep seeing the same messages over and over",
	"Making new Commons is tough",
	"Guys, what happened",
	"Stop dying, I want items",
	"I don't know what a boomerang does",
	"Bro, What", //Kronii
	"WE'RE GONNA CRASH!!!",
	"Here In Rogue Civilization nobody chooses Lottery Loser",
	"[Redacted]", //There was so many hololive things I want to put that are too much for this
	"Bogos Binted?",
	"I'm not sleepy. I'm not grumpy", //Mococo Abyssgard in Dreamland
	"Recoding the Project", 
	"Always choose the Funky Tea",
	"Shoutouts to SimpleFlips",
	"Who up Rogueing they Aether",
	"Also try Rivals of Serve", //Rivals of Aether Workshop gamemode I made
	"Also try Rivals of Fighter", //Rivals of Aether Workshop gamemode I made
	"Also try Fog Island", //Rivals of Aether Workshop gamemode I like
	"Also try Rivals of Slam", //Rivals of Aether Workshop gamemode I like
	"Also try Super Smash Land (SSL)", //Originally a game made by Dan Forance that was homaged by the Rivals of Aether Workshop Community
	"Welcome to the Brook Bazaar (Just Kidding)", //Brook Bazaar
	"It's because I'm Psychic", //Danganronpa
	"I tried to water the seeds", //Hololive FuwaMoco
	"Peaches, Peaches, Peaches", //Mario Movie
	"Hold To Quit",
	"Super Springo Galaxy",
	"JDON MY SOUL", //Hakos Baelz
	"Watching Cocomelon", //Cocomelon
	"YOOO! Check out my Metapod Build",
	"Watch me deal 100% Damage in 1 attack",
	"Grover's My Favorite",
	"PLEASE GIVE ME A LEGENDARY",
	"Billions Must Reroll",
	"Just Adapt. Lol",
	"Baby Shark do do do",
	"Ultra Stoked ^.^",
	"This too must be the will of causality", //Gundham Tanaka
	"Interesting Theory",
	"Sparkling Justice", //Danganronpa 2
	"I'm Rogueing Out!", //Hulk
	"Best Starbucks Hack Ever", //Tiktok Meme
	"Huge Man", //Observation Duty
	"Preying on you tonight", //Animals
	"Fortnite Rhino", //Amelia Watson
	"ChikuTaku, Where'd the time go", //Amelia Watson
	"Armed and Dangerous",
	//"Try Egg Only Mode", //Old Gamemode
	"Try Always Scrapper Mode",
	//"Try 5x Item Multiplier Mode", //Old Gamemode
	//"Try No Max Item Limit Mode", //Old Gamemode
	"Try 5x No Limit Mode",
	//"Try Choose Your Items Mode", //Old Gamemode
	"Try Creative Mode",
	"Try Refreshed Rerolls Mode",
	"Try Winner Chooses Too Mode",
	//"Try Bazaar Only Mode", //Old Gamemode
	"Try Random Stages Mode",
	"Please Stay Hydrated",
	"Please Takes Breaks Reguarly",
	"Consider 99 Stocks",
	"You can Pause during Item Select",
	"My Main Goal is to Blow Up", //And act like I don't know nobody argh argh argh
	"You're Tonight's biggest Loser", //Impratical Jokers
	"I pull out my Gun and I... Hold It", //https://www.youtube.com/shorts/_JFSKtosXmM
	"Golden Girls",
	"Hey Pebble, Hey", //Koseki Bijou
	"Hiya Darlings", //Nerissa Ravencroft
	"Hey, Hey", //Danganronpa
	"Disturbing the Peace", //Persona 3
	"Hey Guys. Polyamorous! Not what I'm called", //Meme
	"Adding Auto Parry as an Item",
	"You're Done", //Xenoblade? Idr
	"Bogos Binted", //I was wondering if you got your photos printed?
	"Hey, I was wondering if you got your photos printed?",
	"Chika Waga", //Is this the first meme of 2024?
	"No. I do not want a banana.",
	"I'm thinking Miku Miku Oo-Ee-Oo",
	"You'll get your fun build one game",
	"Oh that's a Baseball",
	"We have too many ideas no need for suggestions",
	"R versus O versus O versus Me?", //Reference to a very cringe video I made
	"Boku wa Doctor. Tony Tony Chopper", //ONE PIECE
	"THE ONE PIECE. THE ONE PIECE IS REALLLL", //Can we get much Higher
	"Can we get much higher?",
	"I... am Steve", //Minecraft Movie
	"Flint and Steel",
	"Hot Dog, Taco, Hamburger",
	"For FREE???",
	"I'M NOT AGGRESSIVE. I'M NOT. AGGRESSIVE", //Gigi Murin
	"Chicken Jockey", //Minecraft Movie
	"Donate Plasma",
	"CAPPIE", //Miside
	"Hey, put me in the clip",
	"Truth Nuke",
	"I have two sides", //Simon Cowell
	"Super Mario, Rocking it Old School",
	"Hit the Subscribe Button",
	"Hit the Follow Button",
	//Fuuka Voicelines
	"Ahh, The Enemy!" 
	"If you get into trouble, run!",
	"That's not fair",
	"The kiss of life",
	"Everyone else is unconscious",
	"Hang on, Fear is only temporary",	
	//
	"Bona fide Monafied", //Futaba Sakura
	"LET'S GO JOVIAL MERRYMENT", //Horse Race Test
	"Fearsome Fate", //Horse Race Test
	"Place your bets in... 10", //Horse Race Test
	"ALWAYS BET ON A WINNING HORSE", //Horse Race Test
	"Hey, Wait. You forgot your bag!",
	"Whatever you want. Whatever you need", //Burning Desires
	"Anything that you desire. Set it on fire", //Burning Desires
	"He's right y'know",
	"Did u get a Whoppa?",
	"OMG Candy Jar hi!!!", //Pokerogue
	"Great Success", //Borat
	"It's on the mouse",
	"Goodnight. Why do we always fight.", //Mococo in dreamland
	"Gimmie Cookie", //Ironmouse
	"I'm Fauna. I should go first.",
	"What do you call this in English",
	"Oooohh, I'm a piece of Tomatooooooo", //Shiori Novella
	"Around the World Around the World Around the World", //Around the World
	"Light, That's not how the Book works", //Death Note
	"Life Protects Life", //Overwatch
	"Memories bring back, memories bring back you", //Maroon 5
	"Welcome to Orbit", //Overwatch
	"Coming in Hot!",
	"What is that melody?", //Overwatch
	"Who do you think you are. I am", //Pete Weber
	"Engines at Full-Throttle", //Tsubasa Kawano
	"It is done", //Tsubasa Kawano
	"You truly understand me", //Eito Aotsuki
	"Lost in Paradise",
	"Weezer Guitar Riff",
	"Great Vegetables",
	"Okay, You are literally Grandmaster",
	"You rotten-hearted pompous two-timing cotton-headed dimwitted mealy-mouthed doggone dastardly pretentious good for nothing licentious salacious bone-headed balogna for brains manure sniffer unfaithful hirsute panty thievin' simperin' simpleton wantingly womanizing rizzless beta failure of a man YOU LOATHSOME SCOUNDREL BONES MALONE", //Ceres Fauna
	"DISGUSTI-",
	"Rawr",
	"A Dubious Little Creature Getting Up To Mischief",
	"It's! T.V.! Time!", //Mr. (Ant) Tenna
	"Check Him PC",
	"Do you believe in Gravity?", //Jojo
	"The Tunnel Effect is a Phenomenon in which a Particle can penetrate a barrier greater than its own energy, even though the odds are infinitesimal",
	"Ready to Rogue? Ok Brook. Round 1 Metapod. No Brook",
	"In case I don't see ya: Good afternoon, good evening and good night", //Truman Show
	"Calc is short for Calculator btw", //Fortnite Clip
	"Hi Jo", //josniffy
	"MOO DENG! SHUT UP, I WANT MOO DENG. SHUT UP", //Chibidoki
	"Phew, Close One",
	"One Dutch, Two Dutch. Queens of the Double Dutch.", //Phineas and Ferb
	"My motto is: 'If the truth hurts, Excellent!'", //Power Rangers
	"All of your theories are wrong goodbye",
	"What room are you staying in",
	"Because my name is Teto Pear. I have a song to share.",
	"You mean the Chaos Emeralds?",
	"STOP MASHING",
	"STOP SPAMMING PARRY",
	"Maki!", //Danganronpa v3
	"Kaito!", //Danganronpa v3
	"This cannot be",
	"Who Won? Who's Next? You Decide",
	"Bread tastes better than Key",
	"Double the money",
	"I'm on a Boat",
	"Halfway to Forever", //Yu-Gi-Oh Zexal
	"Take a Chance", //Yu-Gi-Oh Zexal
	"Feeling the flow", //Yu-Gi-Oh Zexal
	"Hi-Five the Sky", //Yu-Gi-Oh Zexal
	"Burn it Down. Tear it Down", //Gawr Gura
	"No, That's wrong", //Danganronpa
	"I see now", //Danganronpa - Hajime Hinata
	"A Man's Dream will never die!", //One Piece
	"Ooh Eeh Ooh Ahh Ahh Ting tang Walla Walla Bing Bang", //Witch Doctor
	"Wow, There's a Gamer Girl in my lobby. Should I tell her how I feel about her?",
	"Reject. Freaking Standards. Become a VTuber Stan. Watch Chibidoki",
	"And now it's time... for the moment you've been wait for!", //Miku Miku Beam
	"Does he know about the D-O-R-E?", //Diary of a Wimpy Kid
	"MY HEART!!! I LOVED HER!!! AHHHHHHHHHHHH!!!",
	"Look at little goblin junior. Gonna cry?", //Spider-Man 3
	"Amazing: This dancer is considered an 'Essential Worker'",
	"I truly am a Curse",
	"People. Hurry. Get in the way.",
	"Leave Me Alone. Akira",
	"Burnice Burnice Burnice Burnice Burnice Burnice Burnice Go",
	"We are Japanese Goblin", //Touhou Suika
	"This cannot be",
	"$6 SRIMP SPECIAL",
	"Ever get the feeling of Deja Vu?", //Tracer
	"Rise and Shine Ursine", //Danganronpa V3
	"So Long, Bear Well", //Danganronpa V3
	"Here's Something to remember me by", //Hercule Satan
	"Ding-Dong, Ding-Dong", //Shadowverse
	"I am Dr. Mario and I am saving lives", //Brentafloss
	"Paypa Boat", //Saba
	"The Whole subway is mine for the Slammin'", //Persona 5 X
	"Minki", //Maid Mint Fantome
	"Weh", //Maid Mint Fantome
	"Are you Weh-dy", //Maid Mint Fantome
	"I Outrank you in this Scenario!", //Koopas
	"Stomping KOOPAS!!!",
	"SQUID GAMES!!!",
	"You Wa Shock",
	"Don't touch that Dial",
	"Squishing Mr. Ants",
	"Objection! He made funa me",
	"Throwing for content",
	"Beast Mode Activated",
	"Get in the Crystal Buddy", //Northern Lion
	"Throw em the old bread and butter", //Northern Lion
	"Would you rather have $1 or $2?",
	"Chicken. Banana. Chicken. Banana",
	"'Yeah the planet is dying. The government hates us. The animals are leaving. The aliens aren’t contacting us. We might be alone. It just might be you and me.' But that's okay. Because do you really need anyone else!?", //Marry Me Bury Me
	"Come Break me Down. Marry Me, Bury Me. I am finished with youuuuuuuu.", //Cod Montage
	"Yoohoo, Big Summer Blow-Out",
	"Rules for Thee, but not for Me",
	"Your Character has Everything and they cater to you. They change the rules for you to make your win more often. Oh, it's not good enough. Let's keep Stadium Transormations on. Oh, it's not good enough. Let's gut a Z Jump. Oh, it's not good enough let's give thme box controllers. Oh, it's not good enough. Let's give him everything he needs. And he is a cool character of course. Top tier. Priviledged Character and your mains complain. Somehow they complain about what? Puff?. God forbid. About what? Icices? Oh just separate them. That's all you need. You have a one frame option off of drill. You have lasers. You have 19 Recoveries. You don't have to do anything. EXCEPT, WIN!", //Legendary Hbox Crashout
	"They change the rules for you to make your win more often", //Hbox
	"You have a one frame option off of drill!", //Hbox
	"Oh, it's not good enough", //Hbox
	"Yoho", //Saba
	"I'm a Lonely Goomba",
	"The Name's Spider-Man... And don't forget the Hyphen!",
	"Turning on Motion Blur",
	"Hee-Ho", //SMT
	"I like Money", //Mr. Krabs
	"T.M. Opera O is my favorite horse",
	"Play with Fire. Say my Name.", //Nerissa Ravencroft
	"Confession",
	"Potion Seller. I am going into Battle.",
	"You See It. You Buy it. Don't Hesitate",
	"20 Dollars Shipping for a STICKER," //Dokibird
	"I am Quincy, Son of Quincy.", //Bloons TD 6
	"Fire At Will", //Bloons TD 6
	"I'm cringe and that's based", //Youtube
	"Whatcha Doin?", //Phines and Ferb
	"What's this thing? The Saturn Burger?",
	"Your princess is in another Castle", //Mario
	"Not cool squidward. Don't say that again.",
	"My goat is Washed",
	"Jerma has escaped Containment",
	"Buns Ketchup Pickle Cheese",
	"Colors Weave into a Spire of Flame" //Smash ultimate
	"Crazy? I was crazy once.",
	"They locked me in a Rubber Room... with Rats",
	"Watch Dokibird", //Dokibird
	"Pizza Time",
	"The Alpha and the Omega!",
	"Listen Up Big Mac", //Danganronpa
	"Today, I wanted to eat a Croissant. Quaso.", //Today, I wanted to eat a Croissant
	"HEY! May I have your attention",
	"Hello. Zuko Here",
	"Whis",
	"Mom, pick me up. I'm scared",
	"Watch this Surge",
	"It's not Delivery",
	"TOO MUCH MAGIC!!", //Zain
	//"I'm so clean like a money machine"
	"Haha, One",
	"I know it's ragebait, so why am I still angry?",
	"Let the voice of love take you higher",
	"Kachow", //Cars
	"Thunder always comes after Lightning", //Cars
	"Say that again",
	"Nothing ever happens",
	"Bakushin, Bakushin, Bakushin",
	"Best not too think about it",
	"Science is Elegant", //Dr. Stone
	"So can we wander for a spell" //Machine Love
	"I want it to be true to be like you", //Machine Love
	"My heart sings a chorus out of tune", //Machine Love
	"Can you teach me to be real?", //Machine Love
	"Rogue started on July 27th, 2024",
	"Ruminating",
	"Here, Take this Lampshade. Pretend to be Lamp", //Undertale
	"Absolute Lamp", //Undertale
	"You're Out of Touch", //I'm out of Time
	"You Complain? Yet Are Winning. Curious.",
	"THAt'S GOLD RUSH BABY. THAT'S GOLD RUSH", //Ludwig
	"I like to play and draw and read and write",
	"Don't Forget. I'm with you in the dark."
	"If you find a bug: Abuse it",
	"You!!",
	"Yes Sir!",
	"Ace Detective? More like Ace Defective", //Persona 3
	"It's now or never",
	"The horse's name was Friday",
	"Bro, Lock In",
	"This bird, expert in the absurd", //Bird brain
	"I keep on running like a chicken with its head cut off", //Bird brain
	"BIRDBRAIN",
	"Radar Alert... Radar Alert... Trainer Signal Detected.",
	"Give me the formula krabs.",
	"Brook's Power will Awaken Soon",
	"Great King of Evil, Ganondorf",
	"Now you're just somebody that I used to know",
	"That's just a Theory",
	"I'm a Gummy Bear",
	"Let Me Stay Here", //Fauna
	"Uh oh. I got that Double Fanta Madness",
	"What the heck Dayo", //Henya The Genius
	"I'm gonna have to say 'Maps' Steve",
	"Have you ever played Goo-Goo babies with your life on the line?",
	"I've replaced your shoelaces with Fruit by the Foot",
	"Epic Win",
	"My Name is Edwin. I made the Mimic",
	"Despite Everything, it's still you",
	"My Body is Ready", //Reggie
	"Parmigiano Reggiano", //Raora
	"EZILE? EQILE? EVILE? XEILE? ...... EXILE", //Wordle that took me 45+ minutes to get
	"Spongebob Album Cover",
	"Goldshi's gettin' boredshi",
	"Chase You", //Jojo
	"And I Ponder",
	"Wife, wait for me. USA Is not too far",
	"LLLLLLLLLLLLLLLLET'S PLAY",
	"Hey, I'm Grump. I'm Not So Grump",
	"It's not a Fire Hazard. This is normal", //Mococo
	"Matcha pilates in Bali before a labubu rave", //Twitter Joke
	"Watch, I scale here",
	"High-key simping for not just my squad, no cap fr fr", //Sigma
	"No, we're not done",
	"I ate the last donut",
	"They called it 'Meta'pod for a reason",
	"Witness my Kung Fu", //Shadowverse
	"Excuse Me? Are you British?", //Hatsune Miku
	"SUUUUUPERRRRR", //Franky
	"AND... That's That", //Monosuke
	"Show 'em who's boss!",
	"A beautiful rose has its thorns", //Persona 5
	"Hit the deck",
	"Don't care. Still don't Care",
	"You think I'm joking, but I'm not", //Ceres Fauna
	"The Lion does not concern himself with Scrapping",
	"Most people can only see 60 FPS",
	"I Will not let you destroy my world", //Dragon Ball
	"His Friends Call Him Spuder (Don't Call Him Spuder)", //Bug Fables
	"Oh Yeah, Mr. Krabs",
	"Gimr is on his way to the lab",
	"McQueen is Fading. McQueen is Fading",
	"Umamusume is Wit Game",
	"Marvelous",
	"I'm feeling Motivated",
	"I'm talking to you",
	"Driving in my car (truck)",
	"Make it count. Play it straight", //Big Time Rush
	"By the saints! What sorcery is this?",
	"Silence! Restrain thy tongue",
	"Wow! Incredible!",
	"Go do your homework. It's almost Midnight",
	"Hi, Hello, Howdy, Hey. What's up. How are you doing",
	"I'M A GOOFY GOOBER YEAH",
	"Hey, Stinky!", //Mario Party
	"I'll bet they won't have it",
	"Reese's Puffs, Reese's Puffs",
	"Mambo", //Umamusume
	"Aww man, I'm a meme", //Pac-Man
	"You're just boring!", //Power Rangers
	"Does this game have fall damage?",
	"I'm in a drive thru of burger king",
	"Borrowing screws from my aunt",
	"I thought Cheese Wheel was a dragon ball",
	"Chug Jug with you", //Fortnite
	"Twinkle Twinkle, Little Star", //Nursery Rhyme
	"The isty bitsy spider went up the water spout", //Nursery Rhyme
	"Hold to Quit",
	"I shan't Say",
	"Cowabunga, dude!",
	"Gem is great",
	"Everyday is great as your Junes",
	"This Cherry Pie is so (Good/Bad) I could die!!", //One Piece
	"Cheeseboiga",
	"Bring me more street tiers!!!",
	"I need some... Coff... ee", //Otonose Kanade
	"It's an all Night Party",
	"Yes! I'm winner!", //Taiki Shuttle
	"Soda at Night. Dog on the Counta", //https://x.com/shitposts_mp4/status/1950874090652463304
	"His eyes were like mine", //Billie Jean
	"Stepping on the beach", //Spongebob
	"Do you like how I walk?", //
	"Goal Incomplete", //Umamusume
	"I LOVE GALVAN. HE'S SO COOL",
	"Suddenly you call my name",
	"Don't stop Dancing",
	"1273 down the Rockefeller street", 
	"What is that? Huh, Diorite?", //Oliver
	"The Dragon Warrior! It's me!", //Kung Fu Panda
	"You made me watch dancing fruits on tv", //Mori Calliope
	"I like'd that", //Gigi 3d live
	"I'm off to the Artic for Three Weeks", //Tom Scott
	"I'm in the abandoned city", //Tom Scott
	"I'm not inside a fusion reactor", //Tom Scott
	"I'm at Disney World", //Tom Scott
	"I'm in an airplane bathroom", //Tom Scott
	"Happy, Happy, Happy",
	"Did... Hang on, did you just shift reality?!",
	"Esteban Julio Ricardo Montoya de la Rosa Ramírez",
	"Super Creek is Super Peak",
	"When there's rain there's thunder",
	"Mayonnaise on an escalator",
	"Hey you guys wanna go get some D-E-S-S-E-R-T",
	"Swing low sweet chariot",
	"It's pronounced Gif",
	"1 Frame per Carrier Pigeon",
	"Getting Real Risk of Rain 2 Vibes from this",
	"You're killing me, smalls",
	"Does your greed know no bounds",
	"Good old rock... Nothing beats that!", //Bart
	"STOP META-GAMING",
	"Check Please!",
	"Fortnite and Cola. Yippee!",
	"Gera Gera Po", //Yokai Watch
	"I'm an Empath",
	"Show me your true form", //Persona 5
	"If you're happy and you know it clap your hands",
	":)  ",
	"My Name is Skyler White, Yo", //Breaking Bad
	"Squidward on a chair",
	"Last Christmas I gave you my heart",
	"I'm Fine. I hate the floor",
	"Rogue released on August 26th, 2025",
	"That was the move that made LeBron cry",
	"And your drink?",
	"Well this stinks", //Sans
	"Coming at you Fridays", //Phineas and Ferb
	"Why do you bother Michael?",
	"Michael is a great man",
	"You just saved me. I'm free!", //Shark boy and Lava girl
	"Wubba dubba dubba is that true?", //Rhythm Heaven
	"Hello there! Too Bad. Please insert coins", //Reborn as a Vending Machine
	"Stop it! Stop it! Leave that man alone!",
	"Hit or miss. I guess they never miss huh?",
	"Adding a 1 in 10000 Foxy Jumpscare Message",
	"What a pheasant surprise",
	"Wonder of U",
	"Gedagedigedagedo",
	"Walk the Plank",
	"Oh, that's the sun",
	"My friend Malamar",
	"Never ask a Rogue Dev where Dogfight was on release",
	"Pros don't fake"
]
array_push(quirky_dia, "There are: (" + string(array_length(quirky_dia) + 1) + ") Loading Messages");
/*
stage_art = [
	"Mountain", //Display Name
	"Volcano", //Display Name
	"Seafloor", //Display Name
	"Cityscape", //Display Name
	"Forest", //Display Name
	"Finale" //Display Name
]
*/
brook_quote_num = 0;
//Mountain
brook_quote_mount = [
	"It's f-f-freezing up here.",
	"M-M-Make up your m-m-mind.",
	"S-S-Should've br-br-brought a heavier c-c-coat.",
	"Getting older...",
	"Brrrrrrrrrrr."
]
//Volcano
brook_quote_volcano = [
	"Sho hoth",
	"I'm melting. Can we hurry up?",
	"Someone turn up the A/C.",
	"Would appreciate some swiftness.",
	"It'll be over soon. I hope..."
]
//Seafloor
brook_quote_seafloor = [
	"*Abub bub blub*",
	"*Gurgle gurgle*",
	"I'm fine actually. It's just a projection.",
	"...",
	"*Swish Swosh*"
]
//Cityscape
brook_quote_city = [
	"BUY HIGH! SELL LOW!",
	"I GET YOUR MONEY",
	"BE A BIG SHOT!",
	"GIT OUTTA HERE!",
	"I WANNA GO 'OME SO LEAVE!"
]
//Forest
brook_quote_forest = [
	"This place is giving me the creeps.",
	"Make like a tree and... leaf.",
	"Wood ya hurry up?",
	"I'm sorry, but can you just finish please?",
	"Standing here. I realize."
]
//Finale
brook_quote_finale = [
	"Winner takes all.",
	"Don't throw now.",
	"Are you playing another one after this?",
	"Don't keep us waiting. End it already.",
	"Not often that I can cheer you guys on here.",
]
#endregion
//print(["Djump Test", power(2, -1)]);
#region //Online Detection
game_online = true;
device_player = -4;
device_player_obj = -4;
with oPlayer {
	/*
	if (get_player_hud_color(player) == 6612290) {
		obj_stage_main.device_player = player;
		obj_stage_main.device_player_obj = self
	}
	*/
	print(["Local Player: ", get_local_player()])
	/*
	if (get_local_player() == 0) {
		obj_stage_main.device_player = player;
		obj_stage_main.device_player_obj = self
	}
	*/
	if ((get_local_player() + 1) == player) {
		obj_stage_main.device_player = player;
		obj_stage_main.device_player_obj = self
	}
}
if (device_player == -4) {
	game_online = practice_mode ? true : false;
	device_player = 1;
	with oPlayer {
		if (player == other.device_player) && !clone {
			other.device_player_obj = self;
		}
	}
}
#endregion

ror_game_has_brook = false;
with oPlayer {
	//print(string_lower(get_char_info(player, INFO_STR_NAME)));
	//print(string_lower(get_char_info(player, INFO_STR_AUTHOR)));
	if 	(string_lower(get_char_info(player, INFO_STR_NAME)) == "brook") && 
		(string_lower(get_char_info(player, INFO_STR_AUTHOR)) == "dinobros")
	{
		other.ror_game_has_brook = true;
	}
}


//round_state = "alive"
round_state = "game_start";
//round_state = practice_mode ? "title_screen" : "game_start";
round_state_timer = 0;
round_reset_timer_max = 120;
round_reset_timer = round_reset_timer_max;
last_alive = -4;
//
end_of_game_time 	= 0;
end_of_game_max 	= 300;
//Shenron
ror_shenron_player = -4;
ror_shenron_obj = -4;
ror_wish_chosen = false;
ror_shenron_choice = 2;
ror_shenron_wishes = [
	["Endless Wealth", "15 of each Crazy Luck"], //10 of each Crazy Luck
	["Ultimate Power", "Grow twice as large with soft armor"], //2x Size and 3 Armor ()
	["Limitless Potential", "Items have no max limit. Choose any amount of items."], //Items have No Max Limit
	["Rewind Time", "Set everyone's score to 0 (all items will stay)"], //Increse the Points to Win by 10
	["Extra Life", "Respawn after dying Once per Round"], //When you would die respawn with invincibility
	["Better Bazaars", "Makes a bazaar appear every 3 rounds, have higher rarity printers and always have a scrapper. Have a Brook Bazaar this round."], //Bazaar is better
	["Hi Shenron!", "This wish does literally nothing."], //Seriously, don't pick it
	["Quick Finale", "Puts every player at 1 round away from winning"] //Seriously, don't pick it
]
//Creative
ror_creative_size = 7;
ror_creative_player = -4;
ror_creative_pos = 0;
ror_creative_array = [];
ror_creative_type = "";
ror_choose_count = 0;
//Reconstruct
ror_stage_chosen = false;
ror_reconstruct_player = -4;
ror_reconstruct_step = 0;
//



#region //random_func()
ror_random_buffs = 
[
	"gain_speed()",
	"gain_weight()",
	"gain_jump_height()" //Max Char Length
];
ror_random_nerfs = [
	"on_taunt_expode()" //Max Char Length
]

ror_random_chosen_buffs = [-4, -4, -4];
ror_random_chosen_nerfs = [-4];

for (var i = 0; i < array_length(ror_random_chosen_buffs); i++) {
	ror_random_chosen_buffs[i] = ror_random_buffs[random_func(i, array_length(ror_random_buffs), true)];
}
ror_random_chosen_nerfs[0] = ror_random_nerfs[random_func(10, array_length(ror_random_nerfs), true)];
#endregion

//
round_number = 0;
bazaar_count = practice_mode && is_aether_stage() ? 1 : 10; //10
bazaar_skip_timer = practice_mode ? 300 : 3600;
//can_bazaar = false;
can_bazaar = practice_mode && is_aether_stage();//practice_mode;
force_bazaar = bazaar_only; //Cheat Mode

bazaar_cam_x = get_marker_x(30);
bazaar_cam_y = get_marker_y(30) - 17;

cursor_pos = [2, 2, 2, 2, 2];
//Item Choice Array
ready_players = [1, 0, 0, 0, 0];
with oPlayer {
	other.ready_players[player] = !is_player_on(player);	
}
//choose_amount = 3;
choose_amount = array_create(5, choices_on_start);
choose_extra = array_create(5, 0); //Bar & Brook likes
//
item_choice = [];
for (var i = 0; i <= 4; i++) {
	array_push(item_choice, [0, 0, 0, 0, 0]);
}
//
choose_timer_seconds = 60;
choose_timer = choose_timer_seconds * 60; //1300; //Default 1300  ~21 seconds
//choose_timer = 200; //Default 900

draw_countdown = 3;

total_fps = 0;

ror_temp = -4;
ror_temp_item_name = -4;
ror_temp_item_rarity = -4;

items_bad_pool = [];
//User Event List
//Item Array Creation
//user_event(1) //Commons
//user_event(2) //Rares
//user_event(3) //Epics
//user_event(4) //Legendary
user_event(9)



//print(card_common_luck.raw)

//
//card_absa_djump	.desc = "";
//card_absa_djump.name = "";
//print(real("card_absa_djump"))
//print(variable_instance_get(self, "card_absa_djump"));
//

//test for multilanguage options

//print(items_lang_all);


//


//
ror_eggs = 0; //0
ror_printers = 0;
ror_scrappers = 0;
ror_dupe_pools = 0;

ror_show_brook_info = false;
//user_event(10) //Card Update


plat_center_pos = -4;
plat_sides_pos = -4;

ror_custom_seed = 592802458;

spr_shapes = [sprite_get("boxCircle"), sprite_get("boxSquare"), sprite_get("boxRound"), sprite_get("arrow")]
has_imported_data = false;

stage_element = -4;

//Sandstorm Off
sandstorm_active = false;
set_bg_data(8, BG_LAYER_REPEAT, 0);
set_bg_data(8, BG_LAYER_AUTOSCROLL_X, -8); //-8
set_bg_data(8, BG_LAYER_AUTOSCROLL_Y, .5); //.5
set_bg_data(8, BG_LAYER_Y, 1024); //.5
set_bg_data(8, BG_LAYER_ANIMSPD, 0); //.5

//Ocean
waves_active = false;
wave_height = get_marker_y(96) + 64;

//Initialize Dragoons
dragoon_parts = [];
dragoon_used = false;
for (var i = 0; i <= 2; i++) {
	var _dragoon = instance_create(room_width / 2, -room_height, "obj_stage_article", 20);
	_dragoon.dragoon_id = i;
	//_dragoon.hsp = (-1 + i) * 3;
	_dragoon.image_index = i;
	_dragoon.piece_active = false;
	array_insert(dragoon_parts, array_length(dragoon_parts), _dragoon);
}
//print(dragoon_parts);

dragoon_x = room_width / 2;
dragoon_y = room_height / 2;

dragoon_drop_minimum = 6;
//

//
ror_taunt_attack_display = [0, 0, 0, 0, 0];
//


ror_timeout_detected = 0;


//CPU Gamemode
if !game_online { 
	array_insert(ror_gamemodes, 2, ["CPU Boss", "[REQUIRES TEAMS ENABLED]" + chr(10) + chr(10) + "Choosing the last available CPU to be the Boss. Bonus Items: 2x Mega Mushrooms and 3x Tough Guy. The Boss can still acquire bonus items through normal means."]);
}

#define create_little_buddy(_player, _info, _prev_node) {
	//print("wittle baby boy")
	var buddy = instance_create(_player.x, _player.y, "obj_stage_article", 2);
	buddy.buddy_owner = _player;
	buddy.prev_buddy = _prev_node;
	x = _player.x
	y = _player.y;
}


