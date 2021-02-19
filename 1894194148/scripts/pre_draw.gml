// pre-draw
// AR

//idk if anyone has noticed yet but
//fspecial's sound effect is from
//LSD Dream Emulator
//and so is the sound that plays when
//you taunt with the JIS costume
shader_start()
with (asset_get("obj_article3")){
	if (player_id==other.id){
	if (ar_a3_type==1||ar_a3_type==2){
//	if (attack==AT_FSPECIAL && hbox_num==1 && player==fsplayer){
		var alpha_hb = 0;
		alpha_hb = clamp(((aitimermax-aitimer)/aitimermax),0,1);
//			v -- causes crash. how, however, is a mystery
		draw_sprite_ext(sprite_get("fspecial"), 1, x, y, spr_dir, 1, 0, c_white, alpha_hb);
	}
	}
}
shader_end()
//	draw_sprite_ext(sprite_get("lightning"), imgindexlight, x-2, y, 1, lighttemp_ys, 0, c_white, 1 );	

//debug-purpose taunt thing
//if (attack==AT_TAUNT && window == 1){ //&& window_timer == 1){
//		draw_sprite_ext(sprite_get("acidraincloud"),1,x,y,1,1,0,c_white,1);
//		sound_play( sound_get( "SWB1" ) );
//}

if (runeO && state==22 && state_timer>0) {	
	draw_sprite_ext(sprite_index, image_index, x-hsp, y, spr_dir, 1, 0, c_white, 0.75);
	if (state_timer>1){
	draw_sprite_ext(sprite_index, image_index, x-(hsp+hsp), y, spr_dir, 1, 0, c_white, 0.5);
	}
}
if (runeO && state==23 && state_timer==0) {	
	draw_sprite_ext(sprite_index, image_index, x-(hsp+hsp), y, spr_dir, 1, 0, c_white, 0.75);
}

if (get_player_color( player ) == 6){
	var jittermax = (state==6 && attack==AT_TAUNT)?12:3
	var jitter_a = clamp(random_func( 5, 18, true ),0,jittermax);
	var jitter_b = clamp(random_func( 5, 18, true ),0,jittermax);
	var jitter_c = clamp(random_func( 5, 18, true ),0,jittermax);
	var jitter_d = clamp(random_func( 5, 18, true ),0,jittermax);
	var jiscolor = make_color_rgb(6, 15, 5)
	
	//var jiscolor = make_colour_hsv(100, 255, 255);
	//draw_sprite_ext(sprite_index, image_index, x, y, 1.2*spr_dir, 1.08, 0, jiscolor, 0.5);
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_colour(x-160,y-160, x+160,y+160, c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x-jitter_a,y, spr_dir,1, 0,c_white, 0.75);
	draw_sprite_ext(sprite_index,image_index, x+jitter_b,y, spr_dir,1, 0,c_white, 0.75);
	draw_sprite_ext(sprite_index,image_index, x,y-jitter_c, spr_dir,1, 0,c_white, 0.75);
	draw_sprite_ext(sprite_index,image_index, x,y+jitter_d, spr_dir,1, 0,c_white, 0.75);
	
	draw_sprite_ext(sprite_index,image_index, x-hsp,y-vsp, spr_dir,1, 0,c_white, 0.75);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_colour(x-160,y-160, x+160,y+160, jiscolor,jiscolor,jiscolor,jiscolor, false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
//if (get_player_color( player ) == 9){
//	draw_sprite_ext(sprite_index, image_index, x, y, 1.3*spr_dir, 1.2, 0, c_white, 0.5);
//	draw_sprite_ext(sprite_index, image_index, x, y, 1.2*spr_dir, 1.08, 0, c_white, 0.5);
//}

if (state == 6 && attack == 36){
	if (state_timer <= 10){
		if (state_timer % 5 <= 2){
		draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.3*spr_dir, 1.09, 0, c_white, 0.4);
		}
		else{
		draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.2*spr_dir, 1.04, 0, c_white, 0.3);
		}
	}
	else{
		if (state_timer >= 123){
			if (state_timer % 5 <= 2){
			draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.3*spr_dir, 1.09, 0, c_white, 0.4);
			}
			else{
			draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.2*spr_dir, 1.04, 0, c_white, 0.3);
			}
		}
		else{
			if (state_timer % 5 <= 2){
			draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.3*spr_dir, 1.15, 0, c_white, 0.8);
			}
			else{
			draw_sprite_ext(sprite_get("taunt2_white"), image_index, x-(spr_dir*2), y, 1.2*spr_dir, 1.08, 0, c_white, 0.7);
			}
		}
	}
	
	
	
}




