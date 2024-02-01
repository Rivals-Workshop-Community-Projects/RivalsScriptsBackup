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
 
num_alts = 20;
alt_cur = 0
alt_old = alt_cur
// print("asds")

preview_x = 0;
preview_y = 0;

changer = {
  x:8,
  y:40,
  sprite: sprite_get("switch"),
  width: 24,
  height: 24,
  scale:2
}

flags_open = false
flags_spr = sprite_get("flags")
flag_button_spr = sprite_get("flag_button")

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Bhadra"
alt_name[1]  = "Red"
alt_name[2]  = "Green"
alt_name[3]  = "Grey"
alt_name[4]  = "Blue"
alt_name[5]  = "Genesis"
alt_name[6]  = "Purple"
alt_name[7]  = "Abyss"
alt_name[8]  = "EA"
alt_name[9]  = "Burgundy"
alt_name[10] = " J."
alt_name[11] = "of The Seven Seas"
alt_name[12] = "Dunkalot"
alt_name[13] = "Borealis"
alt_name[14] = "One-Eyed Lotus"
alt_name[15] = "of Falling Flowers"
alt_name[16] = "Ephemeral Blade"
alt_name[17] = "Innocent Slash"
alt_name[18] = "Hazy Moon"
alt_name[19] = "Domo"
alt_name[20] = "Indigo"
alt_name[21] = "NBG"
alt_name[22] = "Soulguide"
alt_name[23] = "Stygian Dealer"
alt_name[24] = "Cursed Blade"
alt_name[25] = "Reverse Katana"
alt_name[26] = "of the Force"
alt_name[27] = "Swordsman, I am"

alt_with_mods = []
alt_mods_amounts = 0