///Fancy CSS template by Muno
//Put in css_draw.gml
 
temp_x = x + 8;
temp_y = y + 8;

// print(load_test)
alt_cur = get_player_color(player);
if(alt_cur != 0){
  modifier = get_synced_var(player)
}else{
  modifier = 0
}
inside_switcher = false
show_switcher = false
set_synced_var(player, 0)

patch_ver = "1.0";
patch_day = "04";
patch_month = "MAR";
 
num_alts = 32;
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
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Wally"
alt_name[1]  = "Red"
alt_name[2]  = "Green"
alt_name[3]  = "Grey"
alt_name[4]  = "Blue"
alt_name[5]  = "Salmon"
alt_name[6]  = "Killer Whale"
alt_name[7]  = "Green Meany"
alt_name[8]  = "Abyss"
alt_name[9]  = "EA"
alt_name[10] = "Hugs & Kisses"
alt_name[11] = "Snowman"
alt_name[12] = "Hazardous Waste"
alt_name[13] = "Lake Dunkalot"
alt_name[14] = "Borealis"
alt_name[15] = "Brasil"
alt_name[16] = "TGP"
alt_name[17] = "Beluga"
alt_name[18] = "Gold"
alt_name[19] = ["Crimson Gear", "Crimson Gear"]
alt_name[20] = "King of Magnets"
alt_name[21] = "Collosus"
alt_name[22] = "Victor"
alt_name[23] = "K.Wally"
alt_name[24] = "Peat"
alt_name[25] = "Car Ant"
alt_name[26] = "Miss Z"
alt_name[27] = ["Cola", "Diet"]
alt_name[28] = "Neo"
alt_name[29] = "BLM"
alt_name[30] = ["Casual Observer", "One Bloody Rain"]

alt_with_mods = [19, 27, 30]

css_load()

#define color_19_0

// Crimson Gear
set_color_profile_slot( 19, 0, 232, 215, 132 ); //Horn/static
set_color_profile_slot( 19, 1, 204, 179, 167 ); //Shirt
set_color_profile_slot( 19, 2, 94, 0, 0 ); //Coat
set_color_profile_slot( 19, 3, 255, 135, 79 ); //water
set_color_profile_slot( 19, 4, 138, 92, 73 ); //skin
set_color_profile_slot( 19, 5, 75, 98, 117 ); //Pants
set_color_profile_slot( 19, 6, 135, 26, 26 ); //gloves
set_color_profile_slot( 19, 7, 110, 0, 34 ); //slippers/mouth/heart

#define color_19_1

// Pot XRD
set_color_profile_slot( 19, 0, 163, 162, 160 ); //Horn/static
set_color_profile_slot( 19, 1, 79, 84, 79 ); //Shirt
set_color_profile_slot( 19, 2, 63, 69, 42 ); //Coat
set_color_profile_slot( 19, 3, 255, 130, 0 ); //water
set_color_profile_slot( 19, 4, 83, 87, 66 ); //skin
set_color_profile_slot( 19, 5, 69, 84, 66 ); //Pants
set_color_profile_slot( 19, 6, 168, 34, 0 ); //gloves
set_color_profile_slot( 19, 7, 120, 0, 0 ); //slippers/mouth/heart

#define color_27_0

// Cola
set_color_profile_slot( 27, 0, 245, 253, 255 ); //Horn/static
set_color_profile_slot( 27, 1, 219, 235, 219 ); //Shirt
set_color_profile_slot( 27, 2, 222, 36, 67 ); //Coat
set_color_profile_slot( 27, 3, 117, 70, 44 ); //water
set_color_profile_slot( 27, 4, 222, 36, 39 ); //skin
set_color_profile_slot( 27, 5, 255, 39, 77 ); //Pants
set_color_profile_slot( 27, 6, 227, 255, 227 ); //gloves
set_color_profile_slot( 27, 7, 219, 235, 219 ); //slippers/mouth/heart

#define color_27_1

// Diet
set_color_profile_slot( 27, 0, 222, 36, 39 ); //Horn/static
set_color_profile_slot( 27, 1, 222, 36, 39 ); //Shirt
set_color_profile_slot( 27, 2, 245, 253, 255 ); //Coat
set_color_profile_slot( 27, 3, 117, 70, 44 ); //water
set_color_profile_slot( 27, 4, 245, 253, 255 ); //skin
set_color_profile_slot( 27, 5, 243, 255, 255 ); //Pants
set_color_profile_slot( 27, 6, 222, 36, 39 ); //gloves
set_color_profile_slot( 27, 7, 199, 8, 84 ); //slippers/mouth/heart

#define css_load()

// sprite_change_offset("switch", 6, 6)