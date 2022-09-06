//css update

//up up, down down, left right left right
//No idea how to get the weird error messages to go away when u click torga for the first time cuz
//even if you go off of torga it still doesnt give the error and it goes away immediately once its finished loading so
//i dont even know anymore bro, not my problem, adapt, it'll say who-tf-asked now and thats funny so its fine
//I'll just say its part of the plan (it is not part of the plan)
var temp_x = x + 8;
var temp_y = y + 9;

if("correct_inputs" not in self) exit;

if(correct_inputs == 0 || correct_inputs == 1){
	if(up_pressed){
		correct_inputs++
		exit;
	}else if(right_pressed || down_pressed || left_pressed){
		correct_inputs = 0
		exit;
	}
}

if(correct_inputs == 2 || correct_inputs == 3){
	if(down_pressed){
		correct_inputs++
		exit;
	}else if(right_pressed || up_pressed || left_pressed){
		correct_inputs = 0
		exit;
	}
}

if(correct_inputs == 4 || correct_inputs == 6){
	if(left_pressed){
		correct_inputs++
		exit;
	}else if(right_pressed || up_pressed || down_pressed){
		correct_inputs = 0
		exit;
	}
}

if(correct_inputs == 5 || correct_inputs == 7){
	if(right_pressed){
		correct_inputs++
		exit;
	}else if(down_pressed || up_pressed || left_pressed){
		correct_inputs = 0
		exit;
	}
}

//SS
if(correct_inputs == 8 && secret_skins == false){
	secret_skins = true
	css_vars[0] = 1
	sound_play(asset_get("mfx_coin"))
	correct_inputs = 0
}else if(correct_inputs == 8 && secret_skins == true){
	secret_skins = false
	css_vars[0] = 0
	sound_play(asset_get("mfx_coin"))
	correct_inputs = 0
}

//Tap Jump
if(can_tap_jump()){
	if(tap_jump_suppress){
		css_vars[1] = 1
	}else{
		css_vars[1] = 0
	}
}else{
	css_vars[1] = 0
}

if(abs(get_instance_x(cursor_id) - (temp_x + 189)) < 15 && abs(get_instance_y(cursor_id) - (temp_y + 120)) < 13){
	if(can_tap_jump()){
		suppress_cursor = true
	}
}

if(secret_skins == true){

css_vars[0] = 1

// White
set_color_profile_slot( 1, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 1, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 1, 2, 184, 180, 163 ); //Skin
set_color_profile_slot( 1, 3, 48, 46, 39 ); //Shell
set_color_profile_slot( 1, 4, 105, 98, 61 ); //Beads
set_color_profile_slot( 1, 5, 255, 210, 0 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 2, 1, 157, 255, 0 ); //Liquid
set_color_profile_slot( 2, 2, 184, 189, 178 ); //Skin
set_color_profile_slot( 2, 3, 34, 36, 31 ); //Shell
set_color_profile_slot( 2, 4, 89, 107, 63 ); //Beads
set_color_profile_slot( 2, 5, 157, 255, 0 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 3, 1, 0, 255, 119 ); //Liquid
set_color_profile_slot( 3, 2, 161, 191, 175 ); //Skin
set_color_profile_slot( 3, 3, 35, 41, 38 ); //Shell
set_color_profile_slot( 3, 4, 58, 92, 75 ); //Beads
set_color_profile_slot( 3, 5, 0, 255, 119 ); //Book

// Blue
set_color_profile_slot( 4, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 4, 1, 0, 234, 255 ); //Liquid
set_color_profile_slot( 4, 2, 151, 178, 181 ); //Skin
set_color_profile_slot( 4, 3, 45, 55, 56 ); //Shell
set_color_profile_slot( 4, 4, 65, 107, 107 ); //Beads
set_color_profile_slot( 4, 5, 0, 234, 255 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 5, 1, 0, 34, 255 ); //Liquid
set_color_profile_slot( 5, 2, 153, 158, 189 ); //Skin
set_color_profile_slot( 5, 3, 48, 49, 59 ); //Shell
set_color_profile_slot( 5, 4, 62, 67, 107 ); //Beads
set_color_profile_slot( 5, 5, 0, 34, 255 ); //Book

// Green
set_color_profile_slot( 6, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 6, 1, 200, 0, 255 ); //Liquid
set_color_profile_slot( 6, 2, 180, 158, 186 ); //Skin
set_color_profile_slot( 6, 3, 59, 48, 55 ); //Shell
set_color_profile_slot( 6, 4, 100, 66, 110 ); //Beads
set_color_profile_slot( 6, 5, 200, 0, 255 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 7, 1, 255, 0, 170 ); //Liquid
set_color_profile_slot( 7, 2, 181, 148, 170 ); //Skin
set_color_profile_slot( 7, 3, 59, 46, 54 ); //Shell
set_color_profile_slot( 7, 4, 97, 58, 86 ); //Beads
set_color_profile_slot( 7, 5, 255, 0, 170 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 8, 1, 255, 0, 0 ); //Liquid
set_color_profile_slot( 8, 2, 191, 167, 167 ); //Skin
set_color_profile_slot( 8, 3, 46, 38, 38 ); //Shell
set_color_profile_slot( 8, 4, 89, 62, 62 ); //Beads
set_color_profile_slot( 8, 5, 255, 0, 0 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 9, 1, 255, 136, 0 ); //Liquid
set_color_profile_slot( 9, 2, 135, 218, 229 ); //Skin
set_color_profile_slot( 9, 3, 28, 38, 69 ); //Shell
set_color_profile_slot( 9, 4, 122, 106, 89 ); //Beads
set_color_profile_slot( 9, 5, 255, 136, 0 ); //Book

// BLW
set_color_profile_slot( 10, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 10, 1, 255, 145, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 212, 181, 171 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 11, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 11, 2, 219, 171, 147 ); //Skin
set_color_profile_slot( 11, 3, 31, 69, 31 ); //Shell
set_color_profile_slot( 11, 4, 74, 64, 48 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 12, 1, 224, 40, 52 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 13, 1, 0, 225, 255 ); //Liquid
set_color_profile_slot( 13, 2, 159, 206, 209 ); //Skin
set_color_profile_slot( 13, 3, 71, 63, 46 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book

}else{
	
css_vars[0] = 0
	
	// White
set_color_profile_slot( 1, 0, 185, 191, 251 ); //Cloth
set_color_profile_slot( 1, 1, 221, 234, 255 ); //Liquid
set_color_profile_slot( 1, 2, 164, 150, 148 ); //Skin
set_color_profile_slot( 1, 3, 91, 85, 73 ); //Shell
set_color_profile_slot( 1, 4, 109, 117, 141 ); //Beads
set_color_profile_slot( 1, 5, 180, 32, 42 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 184, 111, 55 ); //Cloth
set_color_profile_slot( 2, 1, 65, 183, 222 ); //Liquid
set_color_profile_slot( 2, 2, 168, 131, 124 ); //Skin
set_color_profile_slot( 2, 3, 46, 48, 61 ); //Shell
set_color_profile_slot( 2, 4, 204, 173, 155 ); //Beads
set_color_profile_slot( 2, 5, 105, 37, 19 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 55, 55 ); //Cloth
set_color_profile_slot( 3, 1, 255, 94, 94 ); //Liquid
set_color_profile_slot( 3, 2, 148, 113, 113 ); //Skin
set_color_profile_slot( 3, 3, 48, 43, 43 ); //Shell
set_color_profile_slot( 3, 4, 163, 163, 163 ); //Beads
set_color_profile_slot( 3, 5, 112, 20, 26 ); //Book

// Blue
set_color_profile_slot( 4, 0, 182, 203, 209 ); //Cloth
set_color_profile_slot( 4, 1, 77, 225, 242 ); //Liquid
set_color_profile_slot( 4, 2, 166, 141, 151 ); //Skin
set_color_profile_slot( 4, 3, 145, 97, 114 ); //Shell
set_color_profile_slot( 4, 4, 176, 158, 158 ); //Beads
set_color_profile_slot( 4, 5, 255, 0, 217 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 144, 102, 242 ); //Cloth
set_color_profile_slot( 5, 1, 255, 190, 43 ); //Liquid
set_color_profile_slot( 5, 2, 166, 162, 156 ); //Skin
set_color_profile_slot( 5, 3, 54, 46, 46 ); //Shell
set_color_profile_slot( 5, 4, 157, 156, 171 ); //Beads
set_color_profile_slot( 5, 5, 217, 103, 103 ); //Book

// Green
set_color_profile_slot( 6, 0, 74, 153, 102 ); //Cloth
set_color_profile_slot( 6, 1, 231, 240, 235 ); //Liquid
set_color_profile_slot( 6, 2, 186, 173, 173 ); //Skin
set_color_profile_slot( 6, 3, 46, 35, 32 ); //Shell
set_color_profile_slot( 6, 4, 176, 122, 81 ); //Beads
set_color_profile_slot( 6, 5, 255, 123, 0 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 255, 0, 0 ); //Cloth
set_color_profile_slot( 7, 1, 135, 135, 135 ); //Liquid
set_color_profile_slot( 7, 2, 179, 172, 172 ); //Skin
set_color_profile_slot( 7, 3, 13, 13, 13 ); //Shell
set_color_profile_slot( 7, 4, 207, 188, 188 ); //Beads
set_color_profile_slot( 7, 5, 107, 107, 107 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 196, 122, 194 ); //Cloth
set_color_profile_slot( 8, 1, 0, 255, 156 ); //Liquid
set_color_profile_slot( 8, 2, 162, 156, 171 ); //Skin
set_color_profile_slot( 8, 3, 46, 61, 58 ); //Shell
set_color_profile_slot( 8, 4, 0, 0, 0 ); //Beads
set_color_profile_slot( 8, 5, 128, 0, 255 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 255, 124, 0 ); //Cloth
set_color_profile_slot( 9, 1, 192, 241, 69 ); //Liquid
set_color_profile_slot( 9, 2, 56, 210, 229 ); //Skin
set_color_profile_slot( 9, 3, 58, 73, 134 ); //Shell
set_color_profile_slot( 9, 4, 252, 255, 234 ); //Beads
set_color_profile_slot( 9, 5, 119, 81, 224 ); //Book

// BLW
set_color_profile_slot( 10, 0, 240, 240, 240 ); //Cloth
set_color_profile_slot( 10, 1, 255, 205, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 255, 218, 206 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 166, 126, 100 ); //Cloth
set_color_profile_slot( 11, 1, 204, 255, 0 ); //Liquid
set_color_profile_slot( 11, 2, 255, 203, 179 ); //Skin
set_color_profile_slot( 11, 3, 92, 168, 88 ); //Shell
set_color_profile_slot( 11, 4, 219, 149, 18 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 199, 30, 30 ); //Cloth
set_color_profile_slot( 12, 1, 255, 255, 255 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 166, 81, 81 ); //Cloth
set_color_profile_slot( 13, 1, 232, 255, 254 ); //Liquid
set_color_profile_slot( 13, 2, 123, 222, 227 ); //Skin
set_color_profile_slot( 13, 3, 224, 198, 152 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book
}

//Compress
if(css_vars[0] == 0){
	if(css_vars[1] == 0){
		compressed_vars = 0 //no skins, no suppress
	}else{
		compressed_vars = 1 //no skins, suppress
	}
}else if(css_vars[0] == 1){
	if(css_vars[1] == 0){
		compressed_vars = 2 //skins, no suppress
	}else{
		compressed_vars = 3 //skins, suppress
	}
}else{
	compressed_vars = 0 //no skins, no suppress
}



init_shader();