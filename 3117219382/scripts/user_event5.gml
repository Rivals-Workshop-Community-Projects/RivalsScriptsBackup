var len = array_length(alt_with_mods)
for(var i = 0; i < len; i++){
	alt_update_index = alt_with_mods[i]
	script_execute(script_get_index(`color_${alt_update_index}`))
}

switch(alt_update_index){
  case 5:
    break
  case 10:
    break
  case 15:
    break
  case 19:
    break;
  case 27:
    break;
  case 30:
}

#define color_5
var i = alt_update_index
if("alt_mods_amounts" not in self) alt_mods_amounts = 999
switch(modifier%alt_mods_amounts){
	case 0:
	// Riptide
	set_color_profile_slot( alt_update_index, 0, 254, 207, 0 ); //Coin
	set_color_profile_slot( alt_update_index, 1, 227, 202, 177 ); //Fur secondary color
	set_color_profile_slot( alt_update_index, 2, 25, 41, 92 ); //Fur main color
	set_color_profile_slot( alt_update_index, 3, 0, 199, 218 ); //Vest
	set_color_profile_slot( alt_update_index, 4, 218, 93, 0 ); //Pants
	set_color_profile_slot( alt_update_index, 5, 218, 93, 0 ); //Bag and sheath
	set_color_profile_slot( alt_update_index, 6, 17, 36, 84 ); //Hilt
	set_color_profile_slot( alt_update_index, 7, 0, 199, 218 ); //Hat
	break;
  case 1:
  // Genesis
	set_color_profile_slot( alt_update_index, 0, 255, 69, 69 ); //Coin
	set_color_profile_slot( alt_update_index, 1, 66, 66, 66 ); //Fur secondary color
	set_color_profile_slot( alt_update_index, 2, 71, 66, 66 ); //Fur main color
	set_color_profile_slot( alt_update_index, 3, 243, 244, 245 ); //Vest
	set_color_profile_slot( alt_update_index, 4, 138, 31, 31 ); //Pants
	set_color_profile_slot( alt_update_index, 5, 97, 97, 97 ); //Bag and sheath
	set_color_profile_slot( alt_update_index, 6, 38, 38, 38 ); //Hilt
	set_color_profile_slot( alt_update_index, 7, 184, 0, 0 ); //Hat
  break;
}

#define color_26

var i = alt_update_index
if("alt_mods_amounts" not in self) alt_mods_amounts = 999
switch(modifier%alt_mods_amounts){
	case 0:
	// Jedi
	set_color_profile_slot( alt_update_index, 0, 99, 245, 47 ); //Coin
	set_color_profile_slot( alt_update_index, 1, 219, 181, 145 ); //Fur secondary color
	set_color_profile_slot( alt_update_index, 2, 189, 131, 93 ); //Fur main color
	set_color_profile_slot( alt_update_index, 3, 150, 101, 78 ); //Vest
	set_color_profile_slot( alt_update_index, 4, 240, 212, 182 ); //Pants
	set_color_profile_slot( alt_update_index, 5, 122, 61, 48 ); //Bag and sheath
	set_color_profile_slot( alt_update_index, 6, 232, 236, 245 ); //Hilt
	set_color_profile_slot( alt_update_index, 7, 161, 101, 50 ); //Hat
	break;
  case 1:
	// Yoda
	set_color_profile_slot( alt_update_index, 0, 55, 255, 0 ); //Coin
	set_color_profile_slot( alt_update_index, 1, 88, 105, 25 ); //Fur secondary color
	set_color_profile_slot( alt_update_index, 2, 150, 161, 78 ); //Fur main color
	set_color_profile_slot( alt_update_index, 3, 150, 101, 78 ); //Vest
	set_color_profile_slot( alt_update_index, 4, 240, 212, 182 ); //Pants
	set_color_profile_slot( alt_update_index, 5, 122, 61, 48 ); //Bag and sheath
	set_color_profile_slot( alt_update_index, 6, 232, 236, 245 ); //Hilt
	set_color_profile_slot( alt_update_index, 7, 161, 144, 129 ); //Hat
  break;
}