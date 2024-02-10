///Fancy CSS template by Muno
//Put in css_draw.gml
 
temp_x = x + 8;
temp_y = y + 8;
alt_update_index = 0

// print(load_test)
// alt_cur = get_player_color(player);
// if(alt_cur != 0){
//   modifier = get_synced_var(player)
// }else{
  
// }
modifier = get_synced_var(player)
inside_switcher = false
inside_css = false
show_switcher = false
// set_synced_var(player, 0)

// patch_ver = "1.0";
// patch_day = "04";
// patch_month = "MAR";
 
num_alts = 32;
alt_cur = 0
alt_old = alt_cur
// print("asds")

changer = {
  x:temp_x + 8,
  y:temp_y + 40,
  sprite: sprite_get("switch"),
  width: 24,
  height: 24,
  scale:2
}

flags_open = false
flags_spr = sprite_get("flags")
flag_button_spr = sprite_get("flag_button")

hue_speed = 1;
hue_offset = 0;
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Wally"
alt_name[1]  = "Red"
alt_name[2]  = "Green"
alt_name[3]  = "Grey"
alt_name[4]  = "Blue"
alt_name[5]  = ["Genesis", "TAS", "RCS", "Riptide", "Big House"]
alt_name[6]  = "Killer Whale"
alt_name[7]  = "Green Meany"
alt_name[8]  = "Abyss"
alt_name[9]  = "EA"
alt_name[10] = ["Hugs & Kisses", "Snowman"]
alt_name[11] = "Hazardous Waste"
alt_name[12] = "Lake Dunkalot"
alt_name[13] = "Borealis"
alt_name[14] = "Brasil"
alt_name[15] = ["TGP", "VAE"]
alt_name[16] = "Beluga"
alt_name[17] = "Toma_"
alt_name[18] = "Gold"
alt_name[19] = ["Trans", "Nonbinary", "Bi", "Pan", "Lesbian", "Gay", "Ace"]
alt_name[20] = ["Crimson Gear", "Crimson Gear"]
alt_name[21] = "King of Magnets"
alt_name[22] = "Chrome Dome"
alt_name[23] = "Victor"
alt_name[24] = "Peat"
alt_name[25] = "Car Ant"
alt_name[26] = "Canine Idol"
alt_name[27] = ["Cola", "Diet"]
alt_name[28] = "Neo"
alt_name[29] = "BLM"
alt_name[30] = ["Casual Observer", "One Bloody Rain"]

alt_with_mods = [5, 10, 15, 19, 20, 27, 30]
alt_mods_amounts = 0