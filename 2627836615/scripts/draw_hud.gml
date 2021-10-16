
var xx = 480;
var yy = 540 - 100;
var amt = 0;
var car = noone, ins = noone;

var instances = array_create(10, noone);

sep = 240;

xx += sep / 2;
for (var i = 1; i <= 4; i++) {

	if is_player_on(i) {
		ins = noone;
		car = noone;
		amt++;
		xx -= sep / 2;

		for (var k = obj_stage_main.total_karts-1; k >= 0; k--) {
			if obj_stage_main.kart_ins[k].play == i {
				car = obj_stage_main.kart_ins[k];
				ins = obj_stage_main.kart_ins[k].owner;
				break;
			}
		}
		if ins == noone with (oPlayer) {
			if player == i {
				ins = id;
				break;
			}
		}
		instances[i*2] = car;
		instances[(i*2)+1] = ins;
	}
}
var orig_x = xx;


//On to actual drawing
var j, img, wid, str, str_x;

for (i = 1; i <= 4; i++) { //MAIN HUD FRAMING.
	if instances[i*2] == noone continue;
	car = instances[i*2];
	ins = instances[(i*2)+1];
	//print("Drawing hud "+string(i)+" "+string(xx));
	draw_sprite_ext(hud_sprs[2]/*hud*/, 0,  xx, yy, 2, 2, 0, get_player_hud_color(i), 1)
	for (j = 0; j < car.coins; j++) {
		img = 0;
		if (car.coins - car.should_boost > j) img = 1;
		draw_sprite(hud_sprs[3]/*hud_bar*/, img, (xx - 54)+(j*14), yy+56);
	}
	if car.powerup {
		var c = car.powerup;
		if car.powerup_rolling c = random_func_2(0, 8, 1)+1;
		draw_sprite_ext(hud_sprs[4]/*item_box*/, c, xx+88, yy+48, 2, 2, 0, c_white, 1);
	}
	if car.finished_place {
		draw_sprite_ext(hud_sprs[6]/*result_place_spr_ES*/, car.finished_place-1, xx-32, yy, 2, 2, 0, c_white, 1);
	}
	if !get_match_setting(SET_PRACTICE) && (get_match_setting(SET_STOCKS) > 0 or car.battle_hp > noone) && !car.finished_place {
		wid = 44; //starting with the word "lap"
		if car.state_cat == SC_HITSTUN {
			wid += sin(car.state_timer)*5;
		}
		if car.battle_hp <= noone { //Laps
			draw_set_font(hud_font[0]/*roaMBLFont*/);
			draw_set_halign(fa_left);
			draw_set_valign(fa_bottom);	
			wid += string_width(string(car.lap));
			str_x = wid;
			draw_set_font(hud_font[1]/*fName*/);
			wid += string_width("/"+hud_txt[0]/*SET_STOCKS*/);
			draw_sprite(hud_sprs[0], 0, xx - wid/2, yy+50);
			draw_text_color(xx-wid/2 + str_x, yy+50, "/"+hud_txt[0]/*SET_STOCKS*/, c_white, c_white, c_white, c_white, 1);
			draw_set_font(hud_font[0]/*roaMBLFont*/);
			draw_text_color(xx - wid/2 + 44, yy+50, string(car.lap), c_white, c_white, c_white, c_white, 1);		
		} else { //HP
			draw_set_font(hud_font[0]/*roaMBLFont*/);
			draw_set_halign(fa_left);
			draw_set_valign(fa_bottom);	
			wid += string_width(string(car.battle_hp));
			if obj_stage_main.lap_count != 0 {
				draw_sprite(hud_sprs[0]/*hud_words*/, 1, xx - wid/2, yy+50);
			} else {
				draw_sprite(hud_sprs[0]/*hud_words*/, 2, xx - wid/2, yy+50);
			}
			draw_text_color(xx - wid/2 + 44, yy+50, string(car.battle_hp), c_white, c_white, c_white, c_white, 1);
		}
	}
	xx += sep;
}
xx = orig_x;
draw_set_halign(fa_middle);
draw_set_valign(fa_top);	
draw_set_font(hud_font[1]/*fName*/);
for (i = 1; i <= 4; i++) { //Relative.
	if instances[i*2] == noone continue;
	car = instances[i*2];
	ins = instances[(i*2)+1];
	
	if car.display_relative {

		var aa = min(car.display_relative*0.02, 1);
		var im = 0;
		if car.clean_lap & 2 im = 1;
		draw_sprite_ext(hud_sprs[1]/*hud_relative*/, im, xx, yy, 2, 2, 0, c_white, aa);
		
		var txt = 0;
		var col = $5555FA;
		if car.latest_time > lap_time[car.lap-2] { //Compare it to leader's lap time
			var tim = car.latest_time - lap_time[car.lap-2];
			txt = convert_time(abs(tim));
			
			if tim <= 0 {col = $D0FFB2; txt = "-"+txt}
			else {txt = "+"+txt}
			draw_text_color(xx, yy-6, txt, col, col, col, col, aa)	
		} else { //compare it to your lap times.
//			draw_text_transformed_color(xx, yy-18, convert_time(car.last_lap_time), 2, 2, 0, col, col, col, col, aa)	
			var tim = car.last_lap_time - car.last_last_lap_time
			txt = convert_time(abs(tim));
//			txt = string(car.last_lap_time)
			if tim <= 0 {col = $D0FFB2; txt = "-"+txt}
			else {txt = "+"+txt}
//			draw_text_transformed_color(xx-70, yy-18, convert_time(car.last_last_lap_time), 2, 2, 0, col, col, col, col, aa)
			draw_text_color(xx-70, yy-6, txt, col, col, col, col, aa)
			col = $5555FA;
		
			var tim = car.last_lap_time - car.last_best_lap_time
			txt = convert_time(abs(tim));
			
			if tim <= 0 {col = $75D4F9; txt = "-"+txt}
			else {txt = "+"+txt}
//			draw_text_transformed_color(xx+70, yy-18, convert_time(car.last_best_lap_time), 2, 2, 0, col, col, col, col, aa)
			draw_text_color(xx+70, yy-6, txt, col, col, col, col, aa)

		}
	}	
	xx += sep;

}
xx = orig_x;

for (i = 1; i <= 4; i++) { //PLAYER HUD ICON. SHADERS START HERE.
	if instances[i*2] == noone continue;
	car = instances[i*2];
	ins = instances[(i*2)+1];

	with (ins) shader_start();
	if car.state_cat != SC_HITSTUN && car.state != SC_HITSTUN draw_sprite(get_char_info(i, INFO_HUD), ins.select-1, xx-104, yy+30); 
	else draw_sprite(get_char_info(i, INFO_HUDHURT), ins.select-1, xx-104, yy+30); 	
	xx += sep;
}
	shader_end();
	xx = orig_x;

	draw_set_font(hud_font[1]/*fName*/);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
for (i = 1; i <= 4; i++) {
	if instances[i*2] == noone continue;
	car = instances[i*2];
	ins = instances[(i*2)+1];

	draw_set_halign(fa_center);
	draw_text_color(xx, yy+70, car.lap_time_text[0], c_white, c_white, c_white, c_white, 1)
	draw_set_halign(fa_left);
	draw_text_color(xx-108, yy+80, car.lap_time_text[1], c_gray, c_gray, c_gray, c_gray, 1)
	draw_set_halign(fa_right);
	draw_text_color(xx+108, yy+80, car.lap_time_text[2], c_gray, c_gray, c_gray, c_gray, 1)
	xx += sep;

	//Drawing popup

}
if image_alpha > 0 {
	gpu_set_blendmode(bm_subtract);
	//draw_sprite_tiled_ext(hud_sprs[9],0,0,0,32,32,merge_color(c_white,c_black,ease_cubeIn(1,0,image_alpha,500)),ease_cubeOut(1,0,image_alpha,500));
	draw_sprite_tiled_ext(hud_sprs[9],0,0,0,32,32,merge_color(c_white,c_black,ease_quintIn(1,0,image_alpha,500)),1)
	draw_sprite_tiled_ext(hud_sprs[9],1,0,0,32,32,merge_color(c_white,c_black,ease_circIn(1,0,image_alpha,500)),1);
	gpu_set_blendmode(bm_normal);
}

#define convert_time(_time) {
	var mins = string_replace(string_format( floor(_time / 3600), 1, 0 ), " ", "0");
	var secs = string_replace(string_format( floor(abs(_time) /   60) mod 60, 2, 0 ), " ", "0");
	var mils = string_replace(string_format( floor(((abs(_time) /  60) mod 1)*1000), 3, 0 ), " ", "0");
	return mins+":"+secs+"."+mils;
	
}