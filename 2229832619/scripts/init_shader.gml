//a


if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}
if (get_player_color( player ) == 19) { //genesis
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}
if (get_player_color( player ) == 20) { //-save-
set_character_color_shading( 3, 0.3 );
}


/*
if (get_player_color( player ) == 9) {
	if ( (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&(attack==AT_TAUNT||attack==AT_DSPECIAL) ){
*/
if (get_player_color( player ) == 9) {
if (variable_instance_exists(id, "eyechecker")){
if (eyechecker == false){
	// shade, r, g, b, alpha
	set_character_color_slot(4, 255, 255, 255 ); //white_eye
	set_article_color_slot(4, 255, 255, 255 ); //white_eye
	set_character_color_slot(5, 255, 255, 255 ); //abyss_eye
	set_article_color_slot(5, 255, 255, 255 ); //abyss_eye
	set_character_color_shading( 5, 2 );
}else{
	set_character_color_slot(4, 0, 89, 84 ); //white_eye
	set_article_color_slot(4, 0, 89, 84 ); //white_eye
	set_character_color_slot(5, 255, 0, 0 ); //abyss_eye
	set_article_color_slot(5, 255, 0, 0 ); //abyss_eye
	set_character_color_shading( 5, 1 );
}
}
}





//behold. the messiest rainbow code.
//WITNESS.
if (get_player_color( player ) == 10) { //astralbirth
	if (!variable_instance_exists(id, "astralbirth")){
		astralbirth = true;
		tmp_col = [0, 0, 0, 0, 0, 0, 0, 0];
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			if (slot_num != 0 && slot_num != 4 && slot_num != 5){
				tmp_col[slot_num] = make_colour_rgb(
					get_color_profile_slot_r( 10, slot_num ),
					get_color_profile_slot_g( 10, slot_num ),
					get_color_profile_slot_b( 10, slot_num )
				);
			}
		}
	}
	if (variable_instance_exists(id, "astralbirth")){
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			if (slot_num != 0 && slot_num != 4 && slot_num != 5){
				var tmp_h = colour_get_hue(tmp_col[slot_num]);
				var tmp_s = colour_get_saturation(tmp_col[slot_num]);
				var tmp_v = colour_get_value(tmp_col[slot_num]);
				/*
				print_debug( "---" )
				print_debug( "h "+string(tmp_h) )
				print_debug( "s "+string(tmp_s) )
				print_debug( "v "+string(tmp_v) )
				print_debug( "---" )
				*/
				tmp_col[slot_num] = make_colour_hsv(
					(tmp_h+1==256)?0:tmp_h+1,
					tmp_s,
					tmp_v
				);
				set_character_color_slot( slot_num,
					colour_get_red(tmp_col[slot_num]),
					colour_get_green(tmp_col[slot_num]),
					colour_get_blue(tmp_col[slot_num])
				);
				set_article_color_slot( slot_num,
					colour_get_red(tmp_col[slot_num]),
					colour_get_green(tmp_col[slot_num]),
					colour_get_blue(tmp_col[slot_num])
				);
			}
		}
	}
	
	
	
	//astralbirth++;
}
//guess what boysengirls im doing it again
//WITNESS.
if (get_player_color( player ) == 20) { //-save-
	if (!variable_instance_exists(id, "ahyper")){
		ahyper = true;
		s_tmp_col_orig = [0, 0, 0, 0, 0, 0, 0, 0];
		s_tmp_col = [0, 0, 0, 0, 0, 0, 0, 0];
		s_tmp_add = 0;
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			if (slot_num > 3){
				s_tmp_col_orig[slot_num] = make_colour_rgb(
					get_color_profile_slot_r( 20, slot_num ),
					get_color_profile_slot_g( 20, slot_num ),
					get_color_profile_slot_b( 20, slot_num )
				);
			}
		}
	}
	if (variable_instance_exists(id, "ahyper")){
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			if (slot_num > 3){
				var tmp_h = colour_get_hue(s_tmp_col_orig[slot_num]);
				var tmp_s = colour_get_saturation(s_tmp_col_orig[slot_num]);
				var tmp_v = colour_get_value(s_tmp_col_orig[slot_num]);
				/*
				print_debug( "---" )
				print_debug( "h "+string(tmp_h) )
				print_debug( "s "+string(tmp_s) )
				print_debug( "v "+string(tmp_v) )
				print_debug( "---" )
				*/
				s_tmp_add+=0.2;
				if (s_tmp_add >= 255){s_tmp_add = 0}
				//print(string(s_tmp_add));
				//print("the thing is : "+string((tmp_h+s_tmp_add)%255));
				s_tmp_col[slot_num] = make_colour_hsv(
					(tmp_h+s_tmp_add)%255,
					tmp_s,
					tmp_v
				);
				set_character_color_slot( slot_num,
					colour_get_red(s_tmp_col[slot_num]),
					colour_get_green(s_tmp_col[slot_num]),
					colour_get_blue(s_tmp_col[slot_num])
				);
				set_article_color_slot( slot_num,
					colour_get_red(s_tmp_col[slot_num]),
					colour_get_green(s_tmp_col[slot_num]),
					colour_get_blue(s_tmp_col[slot_num])
				);
			}
		}
	}
	
	
	
	//astralbirth++;
}

if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//artistofseer "cosmic"
// shade, r, g, b, alpha
set_character_color_slot(0, 184, 32, 245 ); //main
set_character_color_slot(1, 128, 0, 255 ); //main.2
set_character_color_slot(2, 64, 0, 255 ); //main.3
set_character_color_slot(3, 0, 212, 255 ); //purple
set_character_color_slot(4, 0, 212, 255 ); //white_eye
set_character_color_slot(5, 183, 0, 255 ); //abyss_eye
set_character_color_slot(6, 255, 0, 251 ); //blade
set_character_color_slot(7, 161, 54, 255 ); //blade.2
set_article_color_slot(0, 184, 32, 245 ); //main
set_article_color_slot(1, 128, 0, 255 ); //main.2
set_article_color_slot(2, 64, 0, 255 ); //main.3
set_article_color_slot(3, 0, 212, 255 ); //purple
set_article_color_slot(4, 0, 212, 255 ); //white_eye
set_article_color_slot(5, 183, 0, 255 ); //abyss_eye
set_article_color_slot(6, 255, 0, 251 ); //blade
set_article_color_slot(7, 161, 54, 255 ); //blade.2
base_col = make_colour_rgb(0, 212, 255);
}
if (extra_col==2){//selrate "monarch"
// shade, r, g, b, alpha
set_character_color_slot(0, 39, 39, 69 ); //main
set_character_color_slot(1, 37, 29, 61 ); //main.2
set_character_color_slot(2, 33, 16, 48 ); //main.3
set_character_color_slot(3, 196, 57, 78 ); //purple
set_character_color_slot(4, 20, 206, 227 ); //white_eye
set_character_color_slot(5, 221, 213, 227 ); //abyss_eye
set_character_color_slot(6, 20, 206, 227 ); //blade
set_character_color_slot(7, 19, 121, 196 ); //blade.2
set_article_color_slot(0, 39, 39, 69 ); //main
set_article_color_slot(1, 37, 29, 61 ); //main.2
set_article_color_slot(2, 33, 16, 48 ); //main.3
set_article_color_slot(3, 196, 57, 78 ); //purple
set_article_color_slot(4, 20, 206, 227 ); //white_eye
set_article_color_slot(5, 221, 213, 227 ); //abyss_eye
set_article_color_slot(6, 20, 206, 227 ); //blade
set_article_color_slot(7, 19, 121, 196 ); //blade.2
base_col = make_colour_rgb(196, 57, 78 );
}
if (extra_col==3){//dragou "shadow"
// shade, r, g, b, alpha
set_character_color_slot(0, 45, 45, 45 ); //main
set_character_color_slot(1, 34, 33, 35 ); //main.2
set_character_color_slot(2, 24, 21, 28 ); //main.3
set_character_color_slot(3, 126, 33, 207 ); //purple
set_character_color_slot(4, 222, 232, 236 ); //white_eye
set_character_color_slot(5, 122, 36, 214 ); //abyss_eye
set_character_color_slot(6, 208, 208, 208 ); //blade
set_character_color_slot(7, 122, 111, 148 ); //blade.2
set_article_color_slot(0, 45, 45, 45 ); //main
set_article_color_slot(1, 34, 33, 35 ); //main.2
set_article_color_slot(2, 24, 21, 28 ); //main.3
set_article_color_slot(3, 126, 33, 207 ); //purple
set_article_color_slot(4, 222, 232, 236 ); //white_eye
set_article_color_slot(5, 122, 36, 214 ); //abyss_eye
set_article_color_slot(6, 208, 208, 208 ); //blade
set_article_color_slot(7, 122, 111, 148 ); //blade.2
base_col = make_colour_rgb(126, 33, 207 );
}
if (extra_col==4){//truethaumaturge "taint"
// shade, r, g, b, alpha
set_character_color_slot(0, 157, 51, 212 ); //main
set_character_color_slot(1, 114, 35, 166 ); //main.2
set_character_color_slot(2, 90, 21, 130 ); //main.3
set_character_color_slot(3, 255, 64, 246 ); //purple
set_character_color_slot(4, 228, 222, 236 ); //white_eye
set_character_color_slot(5, 255, 117, 243 ); //abyss_eye
set_character_color_slot(6, 60, 23, 120 ); //blade
set_character_color_slot(7, 42, 7, 69 ); //blade.2
set_article_color_slot(0, 157, 51, 212 ); //main
set_article_color_slot(1, 114, 35, 166 ); //main.2
set_article_color_slot(2, 90, 21, 130 ); //main.3
set_article_color_slot(3, 255, 64, 246 ); //purple
set_article_color_slot(4, 228, 222, 236 ); //white_eye
set_article_color_slot(5, 255, 117, 243 ); //abyss_eye
set_article_color_slot(6, 60, 23, 120 ); //blade
set_article_color_slot(7, 42, 7, 69 ); //blade.2
base_col = make_colour_rgb(255, 64, 246 );
}
if (extra_col==5){//spiderboi "tiny"
// shade, r, g, b, alpha
set_character_color_slot(0, 53, 44, 222 ); //main
set_character_color_slot(1, 43, 33, 176 ); //main.2
set_character_color_slot(2, 39, 20, 135 ); //main.3
set_character_color_slot(3, 53, 222, 181 ); //purple
set_character_color_slot(4, 53, 222, 181 ); //white_eye
set_character_color_slot(5, 224, 0, 0 ); //abyss_eye
set_character_color_slot(6, 115, 97, 232 ); //blade
set_character_color_slot(7, 87, 66, 156 ); //blade.2
set_article_color_slot(0, 53, 44, 222 ); //main
set_article_color_slot(1, 43, 33, 176 ); //main.2
set_article_color_slot(2, 39, 20, 135 ); //main.3
set_article_color_slot(3, 53, 222, 181 ); //purple
set_article_color_slot(4, 53, 222, 181 ); //white_eye
set_article_color_slot(5, 224, 0, 0 ); //abyss_eye
set_article_color_slot(6, 115, 97, 232 ); //blade
set_article_color_slot(7, 87, 66, 156 ); //blade.2
base_col = make_colour_rgb(53, 222, 181 );
}
if (extra_col==6){//j4c "sunset"
// shade, r, g, b, alpha
set_character_color_slot(0, 6, 73, 99 ); //main
set_character_color_slot(1, 2, 54, 69 ); //main.2
set_character_color_slot(2, 3, 32, 40 ); //main.3
set_character_color_slot(3, 254, 91, 148 ); //purple
set_character_color_slot(4, 3, 184, 234 ); //white_eye
set_character_color_slot(5, 251, 42, 170 ); //abyss_eye
set_character_color_slot(6, 255, 188, 101 ); //blade
set_character_color_slot(7, 253, 116, 136 ); //blade.2
set_article_color_slot(0, 6, 73, 99 ); //main
set_article_color_slot(1, 2, 54, 69 ); //main.2
set_article_color_slot(2, 3, 32, 40 ); //main.3
set_article_color_slot(3, 254, 91, 148 ); //purple
set_article_color_slot(4, 3, 184, 234 ); //white_eye
set_article_color_slot(5, 251, 42, 170 ); //abyss_eye
set_article_color_slot(6, 255, 188, 101 ); //blade
set_article_color_slot(7, 253, 116, 136 ); //blade.2
base_col = make_colour_rgb(254, 91, 148 );
}
if (extra_col==7){//landkon old "moon"
// shade, r, g, b, alpha
set_character_color_slot(0, 36, 37, 60 ); //main
set_character_color_slot(1, 30, 32, 50 ); //main.2
set_character_color_slot(2, 24, 25, 40 ); //main.3
set_character_color_slot(3, 255, 220, 100 ); //purple
set_character_color_slot(4, 253, 255, 166 ); //white_eye
set_character_color_slot(5, 255, 153, 153 ); //abyss_eye
set_character_color_slot(6, 169, 108, 66 ); //blade
set_character_color_slot(7, 107, 67, 39 ); //blade.2
set_article_color_slot(0, 36, 37, 60 ); //main
set_article_color_slot(1, 30, 32, 50 ); //main.2
set_article_color_slot(2, 24, 25, 40 ); //main.3
set_article_color_slot(3, 255, 220, 100 ); //purple
set_article_color_slot(4, 253, 255, 166 ); //white_eye
set_article_color_slot(5, 255, 153, 153 ); //abyss_eye
set_article_color_slot(6, 169, 108, 66 ); //blade
set_article_color_slot(7, 107, 67, 39 ); //blade.2
base_col = make_colour_rgb(255, 220, 100 );
}
if (extra_col==8){//redtilt "red"
// shade, r, g, b, alpha
set_character_color_slot(0, 181, 18, 18 ); //main
set_character_color_slot(1, 125, 27, 35 ); //main.2
set_character_color_slot(2, 82, 8, 8 ); //main.3
set_character_color_slot(3, 230, 239, 245 ); //purple
set_character_color_slot(4, 255, 255, 255 ); //white_eye
set_character_color_slot(5, 255, 153, 0 ); //abyss_eye
set_character_color_slot(6, 217, 45, 17 ); //blade
set_character_color_slot(7, 140, 9, 9 ); //blade.2
set_article_color_slot(0, 181, 18, 18 ); //main
set_article_color_slot(1, 125, 27, 35 ); //main.2
set_article_color_slot(2, 82, 8, 8 ); //main.3
set_article_color_slot(3, 230, 239, 245 ); //purple
set_article_color_slot(4, 255, 255, 255 ); //white_eye
set_article_color_slot(5, 255, 153, 0 ); //abyss_eye
set_article_color_slot(6, 217, 45, 17 ); //blade
set_article_color_slot(7, 140, 9, 9 ); //blade.2
base_col = make_colour_rgb(230, 239, 245 );
}
if (extra_col==9){//landkon new "pale"
// shade, r, g, b, alpha
set_character_color_slot(0, 55, 57, 79 ); //main
set_character_color_slot(1, 45, 46, 71 ); //main.2
set_character_color_slot(2, 29, 31, 56 ); //main.3
set_character_color_slot(3, 254, 170, 229 ); //purple
set_character_color_slot(4, 254, 239, 249 ); //white_eye
set_character_color_slot(5, 255, 247, 253 ); //abyss_eye
set_character_color_slot(6, 236, 238, 255 ); //blade
set_character_color_slot(7, 174, 177, 206 ); //blade.2
set_article_color_slot(0, 55, 57, 79 ); //main
set_article_color_slot(1, 45, 46, 71 ); //main.2
set_article_color_slot(2, 29, 31, 56 ); //main.3
set_article_color_slot(3, 254, 170, 229 ); //purple
set_article_color_slot(4, 254, 239, 249 ); //white_eye
set_article_color_slot(5, 255, 247, 253 ); //abyss_eye
set_article_color_slot(6, 236, 238, 255 ); //blade
set_article_color_slot(7, 174, 177, 206 ); //blade.2
base_col = make_colour_rgb(254, 170, 229 );
}


if (variable_instance_exists(id, "state")){
if ((state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND) && (attack==AT_DSPECIAL || attack==AT_DSPECIAL_AIR)){
	//wow
}else if (na_dsp_charge >= dspmax){
	//col timer stuff values are in update.gml
	var altnum = get_player_color( player )
	if (get_player_color( player ) == 10) {
		var base_col = tmp_col[3]
	}else if(extra_col!=0){
	}else{
		var base_col = make_colour_rgb(
			get_color_profile_slot_r( altnum, 3 ),
			get_color_profile_slot_g( altnum, 3 ),
			get_color_profile_slot_b( altnum, 3 )
		);
	}
	var tmp_h = colour_get_hue(base_col);
	var tmp_s1 = colour_get_saturation(base_col);
	var tmp_v1 = colour_get_value(base_col)-80;
	if (col_phase == 0){
		var tmp_s2 = ease_quadInOut( round(tmp_s1), 0, col_timer, col_timer_max )
		var tmp_v2 = ease_quadInOut( round(tmp_v1), 255, col_timer, col_timer_max )
		var tmp_sh = ease_quadInOut( 100, 0, col_timer, col_timer_max )/100
	}
	if (col_phase == 1){
		var tmp_s2 = ease_quadInOut( 0, round(tmp_s1), col_timer, col_timer_max )
		var tmp_v2 = ease_quadInOut( 255, round(tmp_v1), col_timer, col_timer_max )
		var tmp_sh = ease_quadInOut( 0, 100, col_timer, col_timer_max )/100
	}
	var tmp_col_c = make_colour_hsv(
		tmp_h,
		tmp_s2,
		tmp_v2
	);
	
				/*
				print_debug( "---" )
				print_debug( "h "+string(tmp_h) )
				print_debug( "s "+string(tmp_s2) )
				print_debug( "v "+string(tmp_v2) )
				print_debug( "---" )
				*/
				
	//set it
	set_character_color_slot( 3,
		colour_get_red(tmp_col_c),
		colour_get_green(tmp_col_c),
		colour_get_blue(tmp_col_c)
	);
	set_article_color_slot( 3,
		colour_get_red(tmp_col_c),
		colour_get_green(tmp_col_c),
		colour_get_blue(tmp_col_c)
	);
	
	if (get_player_color( player ) != 7) { //NOT early
		set_character_color_shading( 3, tmp_sh );
	}
	
}else{
if (variable_instance_exists(id, "extra_col")){
	var altnum = get_player_color( player )
	if (altnum != 10&&extra_col == 0){
		set_character_color_slot( 3,
			get_color_profile_slot_r( altnum, 3 ),
			get_color_profile_slot_g( altnum, 3 ),
			get_color_profile_slot_b( altnum, 3 )
		);
		set_article_color_slot( 3,
			get_color_profile_slot_r( altnum, 3 ),
			get_color_profile_slot_g( altnum, 3 ),
			get_color_profile_slot_b( altnum, 3 )
		)
	}
	if (get_player_color( player ) != 7 && get_player_color( player ) != 19 && get_player_color( player ) != 20) { //NOT early
		set_character_color_shading( 3, 1 );
	}
	}
	
}
}else{
	if (variable_instance_exists(id, "extra_col")){
	var altnum = get_player_color( player )
	if (altnum != 10&&extra_col == 0){
		set_character_color_slot( 3,
			get_color_profile_slot_r( altnum, 3 ),
			get_color_profile_slot_g( altnum, 3 ),
			get_color_profile_slot_b( altnum, 3 )
		);
		set_article_color_slot( 3,
			get_color_profile_slot_r( altnum, 3 ),
			get_color_profile_slot_g( altnum, 3 ),
			get_color_profile_slot_b( altnum, 3 )
		)
	}
	if (get_player_color( player ) != 7 && get_player_color( player ) != 19 && get_player_color( player ) != 20) { //NOT early
		set_character_color_shading( 3, 1 );
	}
	}
	
}

}




if  (get_player_color(player) == 19) {
    //set_character_color_slot( 6, 50, 50, 50, 0);
    set_article_color_slot( 6, 50, 50, 50, 0);
	//print("yeah")
}
if  (get_player_color(player) == 11) {
    //set_character_color_slot( 6, 50, 50, 50, 0);
    set_article_color_slot( 6, 50, 50, 50, 0);
	//print("yeah")
}
if  (get_player_color(player) == 20) {
    //set_character_color_slot( 6, 50, 50, 50, 0);
    set_article_color_slot( 6, 50, 50, 50, 0);
	//print("yeah")
}






















