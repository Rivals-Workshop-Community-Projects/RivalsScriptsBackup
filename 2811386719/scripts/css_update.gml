
alt_cur = get_player_color(player);

// print(modifier)
if("modifier" in self) set_synced_var(player, modifier)



// var ls = ds_list_create()
// variable_instance_get_names(id,ls)
// var s = 9
// for (var i = 0; i < ds_list_size(ls); i += s){
//   	var strings = "";
//   	for(var j = 0; j < s; j++){
//   		if(ls[| i + j] == undefined or string_pos("pressed", ls[| i + j]) == 0) continue;
//   		strings += ls[| i + j] + " ";
//   	}
//   	if(strings != "")print(strings);
  
  
// } 
// ds_list_destroy(ls);

switcher()

alt_old = alt_cur

#define bet(val, low, high)

return val >= low and val <= high

#define switcher

show_switcher = array_find_index(alt_with_mods, alt_cur)
// print(show_switcher)
if(show_switcher == -1) {return 0}

if(!instance_exists(cursor_id)) return 0
var cur_x = get_instance_x(cursor_id)
var cur_y = get_instance_y(cursor_id)

inside_switcher = bet(cur_x, changer.x, changer.x + changer.width) * bet(cur_y, changer.y, changer.y + changer.height)
if(!inside_switcher) return 0

suppress_cursor = inside_switcher

if(menu_a_pressed or menu_rb_pressed or menu_lb_pressed){
  // menu_a_pressed = false
  modifier = (modifier + 1) % array_length(alt_name[alt_cur])
  sound_play(asset_get("mfx_forward"))
  
  update_colors()
}

#define update_colors

var len = array_length_1d(alt_with_mods)
for(var i = 0; i < len; i++){
  
  // var a = script_get_index(`color_${alt_with_mods[i]}_${modifier}`)
  // if(a == -1) script_get_index(`color_${alt_with_mods[i]}_${0}`)
  // script_execute(a)
  switch alt_with_mods[i]{
    case 19:
      color_19()
      break;
      
    case 27:
      color_27()
      break;
      
    case 30:
      // print("sssa")
      color_30()
  }
}

init_shader()

#define color_19

if(modifier == 0){
  // Crimson Gear
  set_color_profile_slot( 19, 0, 232, 215, 132 ); //Horn/static
  set_color_profile_slot( 19, 1, 204, 179, 167 ); //Shirt
  set_color_profile_slot( 19, 2, 94, 0, 0 ); //Coat
  set_color_profile_slot( 19, 3, 255, 135, 79 ); //water
  set_color_profile_slot( 19, 4, 138, 92, 73 ); //skin
  set_color_profile_slot( 19, 5, 75, 98, 117 ); //Pants
  set_color_profile_slot( 19, 6, 135, 26, 26 ); //gloves
  set_color_profile_slot( 19, 7, 110, 0, 34 ); //slippers/mouth/heart
}else{
  // Pot XRD
  set_color_profile_slot( 19, 0, 163, 162, 160 ); //Horn/static
  set_color_profile_slot( 19, 1, 79, 84, 79 ); //Shirt
  set_color_profile_slot( 19, 2, 63, 69, 42 ); //Coat
  set_color_profile_slot( 19, 3, 255, 130, 0 ); //water
  set_color_profile_slot( 19, 4, 83, 87, 66 ); //skin
  set_color_profile_slot( 19, 5, 69, 84, 66 ); //Pants
  set_color_profile_slot( 19, 6, 168, 34, 0 ); //gloves
  set_color_profile_slot( 19, 7, 120, 0, 0 ); //slippers/mouth/heart
}
#define color_27
if(modifier == 0){
  // Cola
  set_color_profile_slot( 27, 0, 245, 253, 255 ); //Horn/static
  set_color_profile_slot( 27, 1, 219, 235, 219 ); //Shirt
  set_color_profile_slot( 27, 2, 222, 36, 67 ); //Coat
  set_color_profile_slot( 27, 3, 117, 70, 44 ); //water
  set_color_profile_slot( 27, 4, 222, 36, 39 ); //skin
  set_color_profile_slot( 27, 5, 255, 39, 77 ); //Pants
  set_color_profile_slot( 27, 6, 227, 255, 227 ); //gloves
  set_color_profile_slot( 27, 7, 219, 235, 219 ); //slippers/mouth/heart
}else{
  // Diet
  set_color_profile_slot( 27, 0, 222, 36, 39 ); //Horn/static
  set_color_profile_slot( 27, 1, 222, 36, 39 ); //Shirt
  set_color_profile_slot( 27, 2, 245, 253, 255 ); //Coat
  set_color_profile_slot( 27, 3, 117, 70, 44 ); //water
  set_color_profile_slot( 27, 4, 245, 253, 255 ); //skin
  set_color_profile_slot( 27, 5, 243, 255, 255 ); //Pants
  set_color_profile_slot( 27, 6, 222, 36, 39 ); //gloves
  set_color_profile_slot( 27, 7, 199, 8, 84 ); //slippers/mouth/heart
}



#define color_30

if(modifier == 0){
  // Casual Observer
  set_color_profile_slot( 30, 0, 181, 0, 141 ); //Horn/static
  set_color_profile_slot( 30, 1, 232, 255, 248 ); //Shirt
  set_color_profile_slot( 30, 2, 120, 56, 74 ); //Coat
  set_color_profile_slot( 30, 3, 23, 183, 197 ); //water
  set_color_profile_slot( 30, 4, 156, 107, 65 ); //skin
  set_color_profile_slot( 30, 5, 110, 110, 196 ); //Pants
  set_color_profile_slot( 30, 6, 40, 41, 46 ); //gloves
  set_color_profile_slot( 30, 7, 166, 9, 90 ); //slippers/mouth/heart
}else{
  // One Bloody Rain
  set_color_profile_slot( 31, 0, 173, 10, 10 ); //Horn/static
  set_color_profile_slot( 31, 1, 64, 64, 64 ); //Shirt
  set_color_profile_slot( 31, 2, 32, 36, 41 ); //Coat
  set_color_profile_slot( 31, 3, 184, 0, 31 ); //water
  set_color_profile_slot( 31, 4, 119, 138, 115 ); //skin
  set_color_profile_slot( 31, 5, 87, 87, 87 ); //Pants
  set_color_profile_slot( 31, 6, 187, 48, 45 ); //gloves
  set_color_profile_slot( 31, 7, 46, 46, 46 ); //slippers/mouth/heart
}