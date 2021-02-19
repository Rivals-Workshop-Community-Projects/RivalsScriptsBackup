//post-draw


//draw_debug_text(x  ,y, string(order[0]));
//draw_debug_text(x , y-20 , string(state_timer));
//draw_debug_text(x , y-40 , string(pill_counter));
//draw_debug_text(x , y-60 , string(reroll));
//draw_debug_text(x ,y+20, string(previo[0]));
//draw_debug_text(x , y-80 , string(valido));

//DRAWING PILL FOR NSPECIAL - IF FRAME DATA IS CHANGED THIS MUST BE UPDATED

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR {
	if attack == AT_NSPECIAL{
		if window == 1{
			switch(order[pill]){
				case 1: 
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
					}
					break;
				case 2:
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
					}
					break;
				case 3:
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
					}
					break;
				case 4:
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
					}
					break;
				case 5:
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
					}
					break;
				case 6: 
					if window_timer <6 {
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x- 36*spr_dir, y-54, spr_dir, 1, 90, c_white, 1); 
					}else{
						draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x- 21*spr_dir, y-59, spr_dir, 1, 90, c_white, 1); 
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
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			case 2:
				if window_timer <6 {
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo2"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			case 3:
				if window_timer <6 {
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo3"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			case 4:
				if window_timer <6 {
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo4"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			case 5:
				if window_timer <6 {
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo5"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			case 6: 
				if window_timer <6 {
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x+ 25*spr_dir, y-65, spr_dir , 1, 90 , c_white, 1);
				} else if window_timer >5 && window_timer <36{
					draw_sprite_ext( sprite_get("nspecial_proj_colorcombo6"), 1, x+ 25*spr_dir +window_timer*spr_dir/2, y-60 - sin(window_timer/10)*35 , spr_dir , 1, 40 + window_timer*10, c_white, 1);
				}		
				break;
			default: break;
		}
	}
}


//DRAWING DAMAGE AND KNOCKBACK INDICATORS FOR PROJECITLES
if pill_counter > 0 && (show > 0){
	if (pHitBox.attack == AT_NSPECIAL) && ((pHitBox.C_dam + pHitBox.C_knock) >1)  {
		if (!hitpause) {show++;}
		draw_sprite( sprite_get("I_D"), pHitBox.C_dam, pHitBox.x -6, pHitBox.y-22);
		draw_sprite( sprite_get("I_K"), pHitBox.C_knock, pHitBox.x + 6, pHitBox.y-22);
	}
}

	user_event(12);
