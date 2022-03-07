//

var fx_image_index2 = get_gameplay_time() / 2.2;
var temp_x = x;
var temp_y = y;
if(other_combo_marked = true){
    if(other_combo_num = 1){
    with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back1"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 2){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back2"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 3){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back3"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 4){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back4"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 5){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back5"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 6){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back6"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 7){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back7"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 8){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back8"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 9){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back9"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 10){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back10"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 11){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back11"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 12){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back12"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 13){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back13"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 14){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back14"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 15){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_back15"),fx_image_index2,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }
}
if(other_player_id.combo_timer = 1){
            other_combo_num = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            other_combo_marked = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}
if (get_gameplay_time() < 120){
	if(get_gameplay_time() == 119){
			if(taunt_down && !other_player_id.taunt_down){
			    with(other_player_id){
		sound_play(sound_get("dusterbass_miss"), false, noone, 1.5);
		}other_player_id.duster_muted = true;				
				}
			}
}