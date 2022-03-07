//

var fx_image_index = get_gameplay_time() / 2.2;
var temp_x = x;
var temp_y = y;
if(other_combo_marked = true){
    if(other_combo_num = 1){
    with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front1"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 2){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front2"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 3){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front3"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 4){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front4"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 5){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front5"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 6){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front6"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 7){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front7"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 8){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front8"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 9){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front9"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 10){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front10"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 11){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front11"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 12){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front12"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 13){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front13"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 14){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front14"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }    if(other_combo_num = 15){
        with(other_player_id){
    draw_sprite_ext(sprite_get("combo_circle_front15"),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
        }
    }
}
if(other_player_id.combo_timer = 1){
            other_combo_num = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            other_combo_marked = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}