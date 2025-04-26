//css update

//up up, down down, left right left right
//No idea how to get the weird error messages to go away when u click torga for the first time cuz
//even if you go off of torga it still doesnt give the error and it goes away immediately once its finished loading so
//i dont even know anymore bro, not my problem, adapt, it'll say who-tf-asked now and thats funny so its fine
//I'll just say its part of the plan (it is not part of the plan)
var temp_x = x + 8;
var temp_y = y + 9;

if(masked){
	compressed_vars = true
}else{
	compressed_vars = false
}

if(abs(get_instance_x(cursor_id) - (temp_x + 12)) < 14 && abs(get_instance_y(cursor_id) - (temp_y + 150)) < 13){
	var cursor_x = round(get_instance_x(cursor_id))
	var cursor_y = round(get_instance_y(cursor_id))
	
	name_fade = lerp(name_fade, 1, 0.5)
	if(menu_a_pressed){
		if(masked){
			masked = false
			sound_play(asset_get("mfx_forward"))
		}else{
			masked = true
			sound_play(asset_get("mfx_forward"))
		}
	}
}else{
	name_fade = lerp(name_fade, 0, 0.3)
}

init_shader();