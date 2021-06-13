
//64//128//192//256//320//384//448//512//576//640//704//768//832//896//960//1024//1088//1152//1216//1280//1344//1408//1472//1536//1600//1664//1728//1792//1856//1920//1984//2048
//2112//2176//2240//2304//2368//2432//2496//2560//2624//2688//2752//2816//2880//2944//3008//3072//3136//3200//3264//3328//3392//////////////////
set_view_position(x+1300, y +500);//1p視点

set_view_position(x+view_x, y +view_y);//1p視点



if (Scoreactivation == false){//
instance_create(x-500,y-500, "obj_stage_article" , 596);
Scoreactivation = true
}

if(Stagechange == true){
	if(xq == -11){//-11-2
			if(yq == -2){
				with ( df ) {
				Delete = true
				}
				with ( df2) {
				Delete = true
				}
				with ( df3) {
				Delete = true
				}
		}
	}
}



with oPlayer {//oPlayer
if (get_player_team( player ) == 1) {

}else{
//set_view_position(x+player, y+player);//1p視点
//    if (variable_instance_exists(id, "temp_level")) {
		x = room_width / 3;
		y = room_width / 4;
	        state = PS_DEAD;
	        jump_down = true;
		ignores_walls =false
			has_airdodge = false;
			state_timer = 0;
			hsp = 0;
			vsp = 0;
			can_move = false;
			left_down = true;
			right_down = true;
			up_down = true;
			down_down = true;
			shield_down = true;
			max_djumps = 0;
			can_fast_fall = false;
			invincible = true;
			invince_time = 10;
//		}
	
	}
}
if(death == 1){

	if(death2 == 200){
	music_play_file("music3");
	
	death = 0;
	death2 = 0;
	}else{
	death2 += 1;

	}

}


//
if(is_aether_stage() == false){

//
	with oPlayer {//oPlayer
																	
																	if url = 2257020796 || url = 2219755812 || url = 2074398176  || url = 2007412127 || url = 1927729704 || url = 1916799945 || url = 1899482269 || url = 2239606881 || url = 2239606881 || url =  2078700663 || url = 2179072217 || url =  2272591153 || url =  2330704725 || url =  2337847361 || url =  2351064550  || url =  2356856511  || url =  2330834496  || url =  2380726318  || url =  1978251132 || url =  2034929218 || url =  2003067816 || url = 2115404349 || url = 1974312391 || url = 2368498859 || url = 2363013042 || url = 2071334713{
																		walk_speed="2.3"
																		with(oPlayer){
																		set_character_color_slot(0, 0, 0, 0, 0.5);
																		}
																		with(other){
																		sound_play(sound_get("sfx_beyond sadness45"))
																		}
																		sound_play("attack");
																		spawn_hit_fx( x, y-16, asset_get("3"));
																		instance_destroy(player)
																		end_match();
																		room_speed =-9999
																		room_speed -=9999
																		
																	}
																		if(url = 2237378649){
																			if (get_player_color( player ) == 6) {
																				with(oPlayer){
																				set_character_color_slot(0, 0, 0, 0, 0.5);
																				}
																				with(other){
																				sound_play(sound_get("sfx_beyond sadness45"))
																				}
																				spawn_hit_fx( x, y-16, asset_get("3"));
																				instance_destroy(player)
																				end_match();
																				room_speed =-9999
																				room_speed -=9999
																			}
																		}
																		if(url = 2405818602){
																			if (get_player_color( player ) == 6 || get_player_color( player ) == 7) {
																				with(oPlayer){
																				set_character_color_slot(0, 0, 0, 0, 0.5);
																				}
																				with(other){
																				sound_play(sound_get("sfx_beyond sadness45"))
																				}
																				spawn_hit_fx( x, y-16, asset_get("3"));
																				instance_destroy(player)
																				end_match();
																				room_speed =-9999
																				room_speed -=9999
																			}
																		}
																	if(url = 1877715009 && url = 1890617624){
																		with(oPlayer){
																		set_character_color_slot(0, 0, 0, 0, 0.5);
																		}
																		with(other){
																		sound_play(sound_get("sfx_beyond sadness45"))
																		}
																		spawn_hit_fx( x, y-16, asset_get("3"));
																		instance_destroy(player)
																		end_match();
																		room_speed =-9999
																		room_speed -=9999
																	} 
																	if(url = 1890617624){
																		with(oPlayer){
																		set_character_color_slot(0, 0, 0, 0, 0.5);
																		}
																		with(other){
																		sound_play(sound_get("sfx_beyond sadness45"))
																		}
																		spawn_hit_fx( x, y-16, asset_get("3"));
																		instance_destroy(player)
																		end_match();
																		room_speed =-9999
																		room_speed -=9999
																	}





	}
}