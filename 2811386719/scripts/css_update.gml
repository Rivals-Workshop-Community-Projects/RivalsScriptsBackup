
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

if("alt_with_mods" in self) {
	if(alt_cur == 19) flags_switcher()
	else switcher()
}

//Rainbow
if(alt_cur == 5 and modifier == 1){
	//Run once
	hue_offset+=hue_speed;
	hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
	
	//Run for each color slot you're changing. If you're using different hues (EG Liz shading), make sure they're actually different - The colors still use the original colors saturation/value.
	color_rgb = make_color_rgb (220, 210, 131); //pickdark //input rgb values here, uses rgb to create a gamemaker colour variable
	hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
	color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	
	set_color_profile_slot( 5, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	//Repeat for each color slot.
	color_rgb = make_color_rgb (220, 210, 131); //pickmid //input rgb values here, uses rgb to create a gamemaker colour variable
	
	hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
	color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	set_color_profile_slot( 5, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
	
	init_shader();
}

alt_old = alt_cur

#define bet(val, low, high)

return val >= low and val <= high

#define switcher

show_switcher = array_find_index(alt_with_mods, alt_cur)
// print(show_switcher)
if(show_switcher == -1) {return 0}

alt_mods_amounts = array_length(alt_name[alt_cur])
modifier = modifier % alt_mods_amounts;
if(modifier < 0) modifier += alt_mods_amounts

if(!instance_exists(cursor_id)) return 0
var cur_x = get_instance_x(cursor_id)
var cur_y = get_instance_y(cursor_id)

update_colors();
inside_switcher = bet(cur_x, changer.x, changer.x + changer.width) * bet(cur_y, changer.y, changer.y + changer.height)
if(!inside_switcher) return 0

suppress_cursor = inside_switcher

if(menu_a_pressed or menu_rb_pressed or menu_lb_pressed){

	var menu_dir = menu_a_pressed ? 1 : (-menu_lb_pressed + menu_rb_pressed);
  modifier = (modifier + menu_dir) % alt_mods_amounts;
  if(modifier < 0) modifier += alt_mods_amounts
  
  sound_play(asset_get("mfx_forward"));

}

	  
#define flags_switcher()

show_switcher = array_find_index(alt_with_mods, alt_cur)
// print(show_switcher)
if(show_switcher == -1) {return 0}

alt_mods_amounts = array_length(alt_name[alt_cur])
modifier = modifier % alt_mods_amounts;
if(modifier < 0) modifier += alt_mods_amounts

if(!instance_exists(cursor_id)) return 0
var cur_x = get_instance_x(cursor_id)
var cur_y = get_instance_y(cursor_id)

update_colors();
if(!flags_open) inside_switcher = bet(cur_x, changer.x, changer.x + 28) * bet(cur_y, changer.y, changer.y + 20)
else{
	var flag_per_row = 5
	var n = alt_mods_amounts
	inside_switcher = bet(cur_x, temp_x, temp_x + (n%flag_per_row)*30) * bet(cur_y, temp_y + 38, temp_y + (flag_per_row)*18 + 46)
}
inside_css = bet(cur_x, temp_x - 8, temp_x + 210) * bet(cur_y, temp_y, temp_y + 210)

suppress_cursor = flags_open
print(inside_css)
if(!inside_switcher or !inside_css){
	if(flags_open and (menu_a_pressed or menu_rb_pressed or menu_lb_pressed or menu_y_pressed or !inside_css)){
		
		sound_play(asset_get("mfx_back"));
		flags_open = false
	} 
	return 0
}

suppress_cursor = inside_switcher

if(menu_a_pressed or menu_rb_pressed or menu_lb_pressed){
	if(flags_open){
		var i = 0
		var new_flag = -1
		repeat(n){
			var flag_left = temp_x + 26*floor(i/flag_per_row) + 5
			var flag_top = temp_y + 18*(i%flag_per_row) + 40
			if(bet(cur_x, flag_left, flag_left + 26) * bet(cur_y, flag_top, flag_top + 18)){
				new_flag = i
			} 
			i++
		}
		
		if(new_flag != -1){
			modifier = new_flag
			
			sound_play(asset_get("mfx_forward"));
		}
	}else{
		flags_open = true
		
		sound_play(asset_get("mfx_chat_received"));
	}
}
#define update_colors

user_event(4)
init_shader()