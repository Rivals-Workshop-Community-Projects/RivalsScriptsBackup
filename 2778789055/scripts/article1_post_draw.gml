var col_w = c_white;
var col_b = c_black;

if(player_touching_pot && can_be_hit && !pot_has_trapped && pot_can_be_thrown){
  var arrow = sprite_get("_grab_arrow");
  var fx_image_index = get_gameplay_time() / 10;
  var arrow_color = c_white;
}else{
 var arrow = sprite_get("_pho_cooldown_arrow");  
 var fx_image_index = get_gameplay_time() / 10;
 var arrow_color = get_player_hud_color(player);
}

if(state != 7 && state != 8){
if(state != 6){
        if(player_id.pot_skin = 2){
        backboard_height = -20;
    }
if(!has_shrimp){
draw_sprite_ext(arrow, fx_image_index, floor(x) - 7, floor(y) - 80 + backboard_height, 1, 1, 0, arrow_color, 1);
if(!can_be_hit){
  draw_sprite_ext(arrow, fx_image_index, floor(x) - 7, floor(y) - 80 + backboard_height, 1, 1, 0, c_dkgray, 1);
    }
}
if(has_shrimp){
    if(player_id.pot_skin = 2){
        backboard_height = 0;
    }
draw_sprite_ext(arrow, fx_image_index, floor(x) - 7, floor(y) - 110 + backboard_height, 1, 1, 0, arrow_color, 1);
draw_sprite_ext(sprite_get("cook_meter"), 0, floor(x) + 26, floor(y) - 55, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("cook_bar"), 0, floor(x) + 36, floor(y) + 3, 1, (-explode_timer/120), 0, c_white, 1);
if(!can_be_hit){
  draw_sprite_ext(arrow, fx_image_index, floor(x) - 7, floor(y) - 110 + backboard_height, 1, 1, 0, c_dkgray, 1);
    }
}
}
//draw_debug_text(x-7, y + -100,string(player_touching_pot));
//draw_debug_text(x-7, y + -120,string(hitstop));
//draw_debug_text(x-7, y + -140,string(can_be_hit));
draw_debug_text(floor(x)-12, floor(y) + 15,string(spice_level));
draw_sprite_ext(sprite_get("spice_icon"), 0, floor(x) - 7, floor(y) +5, 1, 1, 0, c_white, 1);
if(spice_cooldown > 0){
  draw_sprite_ext(sprite_get("spice_icon_cooldown"), 0, floor(x) - 7, floor(y) +5, 1, 1, 0, c_white, 1);  
}
}

if(player_id.genesis_alt){
    if(state != 7 && state != 8){
        draw_sprite_ext(backboard_sprite, image_index, floor(x), floor(y), 1, 1, image_angle, c_white, 0.4);
    }
    }


if(!can_opponent_hit){
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 1, 1, image_angle, c_black, 0.5);
}

if(player_id.genesis_alt){
    if(state != 7 && state != 8){
      draw_sprite_ext(sprite_get("g9_loading_pot"), 0, floor(x), floor(y), 1, 1, 0, c_white, 1); 
    }
}


