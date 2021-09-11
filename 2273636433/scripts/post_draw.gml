//post-draw


//draw_debug_text(x  ,y, string(docscore));
//draw_debug_text(x , y-20 , string(doc_score));
//draw_debug_text(x , y-40 , string(doc_ditto));
//draw_debug_text(x , y-60 , string(hsp));
//draw_debug_text(x ,y+20, string(previo[0]));
//draw_debug_text(x , y-80 , string(valido));

//with pHitBox{
	//draw_debug_text(x + 10 , y , string(kb_value));
//}

//DRAWING PILL FOR NSPECIAL - IF FRAME DATA IS CHANGED THIS MUST BE UPDATED

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR {
	if attack == AT_NSPECIAL{
		if window == 1{
			switch(order[pill]){
				case 1: 
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				case 2:
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				case 3:
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				case 4:
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				case 5:
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				case 6: 
					if window_timer <6 {
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6_pringles"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1);}
					}else{
						if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6_pringles"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
						else { draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); }
					}
					break;
				default: break;
			}
		
		}
	
	}

	//DRAWING PILL FOR TAUNT - IF FRAME DATA IS CHANGED THIS MUST BE UPDATED
	if attack == AT_TAUNT{
		switch(order[pill]){
			case 1: 
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}		
				break;
			case 2:
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}			
				break;
			case 3:
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}			
				break;
			case 4:
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}		
				break;
			case 5:
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}		
				break;
			case 6: 
				if window_timer <6 {
					if pringles == 1{ draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6_pringles"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
					else {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);}
				} else if window_timer >5 && window_timer <36{
					 if pringles == 1 {draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6_pringles"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
					 else{draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);}
				}			
				break;
			default: break;
		}
	}
	//DRAWING PILL FOR FINAL SMASH
	if attack == 49 && window == 1{ 
		if window_timer <8 {
			draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
		} else {
			draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 30*spr_dir +window_timer*spr_dir, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
		}		
		if window_timer == (get_window_value(49, 1, AG_WINDOW_LENGTH)-1) {
			spawn_hit_fx( x +55*spr_dir, y-45, 109 );
		}
	
	}
}

//Show Ownership projectiles
if pill_counter > 0{
	with pHitBox {
		if attack == AT_NSPECIAL && type ==2 && player == orig_player &&  player_id.url == 2273636433{
			if player_id.doc_ditto == 1 {draw_sprite(sprite_get("owner"), player , x - 7, y-30);}
			//DRAWING DAMAGE AND KNOCKBACK INDICATORS FOR PROJECITLES
			if (C_dam + C_knock) >1  && show < 30 {
				if !in_hitpause{show++;}
				draw_sprite( sprite_get("I_D"), C_dam, x -6, y-28);
				draw_sprite( sprite_get("I_K"), C_knock, x + 6, y-28);
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
	user_event(12);
