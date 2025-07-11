//post-draw

//draw_debug_text(x  ,y, string(move_cooldown[AT_DSPECIAL]));
//draw_debug_text(x , y-20 , string(vsp));
//draw_debug_text(x , y-40 , string(doc_ditto));
//draw_debug_text(x , y-60 , string(done_reflecting_article));
//draw_debug_text(x ,y+20, string(previo[0]));
//draw_debug_text(x , y-80 , string(phone_blastzone_r));

/*
with pHitBox{ //i was here
	//draw_debug_text(x +30 , y , string(id%1000));
	draw_debug_text(x +60 , y , string(hitpause));
	draw_debug_text(x +90 , y , string(kb_value));
	draw_debug_text(x +120 , y , string(hitstun_factor));
}
*/

temp_color = get_player_hud_color(player);

//DRAWING PILL FOR NSPECIAL - IF FRAME DATA IS CHANGED THIS MUST BE UPDATED
if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR {

	if attack == AT_NSPECIAL && !koffing_gas_active{
		if window == 1{
			
			if window_timer <6 {
				 shader_start();
				 draw_sprite_ext( sprite_get("nspecial_proj"+string(pill_skin)), pill_color, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);
				 shader_end();
			}else{
				shader_start();
				draw_sprite_ext( sprite_get("nspecial_proj"+string(pill_skin)), pill_color, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1);
				shader_end();
			}
			
		}
	}

	//DRAWING PILL FOR TAUNT - IF FRAME DATA IS CHANGED THIS MUST BE UPDATED
	if attack == AT_TAUNT{
		if window_timer <6 {
			shader_start();
			draw_sprite_ext( sprite_get("nspecial_proj" + string(pill_skin)), pill_color, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
			shader_end();
		} else if window_timer >5 && window_timer <36{
			shader_start();
			draw_sprite_ext( sprite_get("nspecial_proj"+ string(pill_skin)), pill_color, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
			shader_end();
		}		
		
	}
	
	//DRAWING PILL FOR FINAL SMASH
	if attack == 49 && window == 1{ 
		if window_timer <8 {
			draw_sprite_ext(sprite_get("nspecial_proj1" ), 4, x + 25 * spr_dir, y - 65, spr_dir, 1, 90, c_white, 1);
		} else {
			draw_sprite_ext( sprite_get("nspecial_proj1"), 4, x+ 30*spr_dir +window_timer*spr_dir, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
		}		
		if window_timer == (get_window_value(49, 1, AG_WINDOW_LENGTH)-1) {
			spawn_hit_fx( x +55*spr_dir, y-45, 109 );
		}
	}

	if attack == AT_DATTACK {
		//DUST RECREATED CAUSE GIIK MESSED UP APARENTLY
		if (window_timer%6==0){ dust_pos1 = x;}
		if (window_timer%3==0 && window_timer%6!=0  ){ dust_pos2 = x;}
		shader_start();
		if (window==2 ){draw_sprite_ext( sprite_get("dust2"), window_timer, dust_pos2- 42*spr_dir, y, spr_dir, 1, 0, c_white, 1);}
		if ((abs(hsp)> 3  || hitpause) && window> 1 ){draw_sprite_ext( sprite_get("dust1"), window_timer, dust_pos1- 42*spr_dir, y, spr_dir, 1, 0, c_white, 1);}
		shader_end();
	}
	
}

//Show Ownership projectiles
if pill_counter > 0{
	with pHitBox {
		
		temp_color = get_player_hud_color(player);
		if attack == AT_NSPECIAL && type ==2 &&  player_id.url == 2273636433 {
			if player_id.doc_melee_counter >1 {
				//draw_sprite(sprite_get("owner"), player , x - 7, y-30);
				draw_sprite_ext(other.Tracker, 0, x, y - 30 , 1, 1, 0,  temp_color, 1);	
			}
			//DRAWING DAMAGE AND KNOCKBACK INDICATORS FOR PROJECITLES
			if ((C_dam + C_knock) >1)  && (show < 30) && (player == orig_player || player_id.doc_melee_counter > 1){
				if !in_hitpause{show++;}
				draw_sprite( sprite_get("I_D"), C_dam, x -6, y-30);
				draw_sprite( sprite_get("I_K"), C_knock, x + 6, y-30);
			}
			//Offscreen INDICATORS}
			if (player == orig_player || player_id.doc_melee_counter > 1){
				if y < view_get_yview() {
					//draw_sprite( sprite_get("ownership"), player, x , view_get_yview());
					draw_sprite_ext(sprite_get("ownership"), 0, x , view_get_yview() , 1, 1, 0,  other.temp_color, 1);
					draw_sprite_ext( sprite_get("nspecial_proj"+string(other.pill_skin)), image_index, x , view_get_yview()+32,spr_dir,1,proj_angle,c_white,1);
				}
				if x < view_get_xview() {
					draw_sprite_ext( sprite_get("ownership"), 0, view_get_xview() , y, spr_dir,1,90, other.temp_color,1 );
					draw_sprite_ext( sprite_get("nspecial_proj"+string(other.pill_skin)), image_index, view_get_xview() +32 , y,spr_dir,1,proj_angle,c_white,1);
				}
				if x > view_get_xview() +960 {
					draw_sprite_ext( sprite_get("ownership"), 0, view_get_xview()+960 , y, spr_dir,1,270,other.temp_color,1 );
					draw_sprite_ext( sprite_get("nspecial_proj"+string(other.pill_skin)), image_index, view_get_xview() +960 -32 , y,spr_dir,1,proj_angle,c_white,1);
				}
			}
		}
	}
}

// This variable gets triggered when  Doc Score is 
if doc_score > 0{
	fs_display--;
	if fs_display == 60 {
		sound_play(sound_get("pillcombo")) 
	}
	if fs_display < 60 && fs_display > 0 {
		draw_sprite( sprite_get("score"), doc_score, get_stage_data( SD_X_POS ) +  get_stage_data( SD_WIDTH )/2, get_stage_data(SD_TOP_BLASTZONE)/2);
	}
	if fs_display == 1 {
		doc_score = 0;	
	}
}
	
	
//user_event(12);
