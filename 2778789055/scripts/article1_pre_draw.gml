//

if(has_shrimp && state != 4){
    var fx_image_index = get_gameplay_time() / 8
        draw_sprite_ext(sprite_get("pot_shrimp_stir"),fx_image_index,floor(x),floor(y) + 2,1,1,0,c_white,1);
    if(!can_opponent_hit){
      draw_sprite_ext(sprite_get("pot_shrimp_stir"),fx_image_index,floor(x),floor(y) + 2,1,1,0,c_gray,1);  
    }
}
//food

if(state = 7){
    shader_end();
    if(food_id != 1987){
  draw_sprite_ext(sprite_get("food"), food_id, floor(x) - 30, floor(y) - 66, 2, 2, 0, c_white, 1); 
    }if(food_id == 1987){
  draw_sprite_ext(pot_compat_variable, 0, floor(x) - 30, floor(y) - 66, 2, 2, 0, c_white, 1); 
    }
    
    
  if(food_id = 0){
      //draw_debug_text(floor(x)-98, floor(y) - 85,string("New Orleans-Style Beignets"));
      pot_compat_text = "New Orleans-Style Beignets"
  }if(food_id = 1){
      //draw_debug_text(floor(x)-68, floor(y) - 85,string("Red Beans and Rice"));
      pot_compat_text = "Red Beans and Rice"
  }if(food_id = 2){
      //draw_debug_text(floor(x)-65, floor(y) - 85,string("Traditional Gumbo"));
      pot_compat_text = "Traditional Gumbo"
  }if(food_id = 3){
      //draw_debug_text(floor(x)-37, floor(y) - 85,string("Jambolaya"));
      pot_compat_text = "Jambolaya"
  }if(food_id = 4){
      //draw_debug_text(floor(x)-55, floor(y) - 85,string("Shrimp Po-boy"));
      pot_compat_text = "Shrimp Po-boy"
  }if(food_id = 5){
      //draw_debug_text(floor(x)-30, floor(y) - 85,string("Blue Sky"));
      pot_compat_text = "Blue Sky"
  }if(food_id = 6){
      //draw_debug_text(floor(x)-46, floor(y) - 85,string("Set of Gyoza"));
      pot_compat_text = "Set of Gyoza"
  }if(food_id = 7){
      //draw_debug_text(floor(x)-51, floor(y) - 85,string("Maxim Tomato"));
      pot_compat_text = "Maxim Tomato"
  }if(food_id = 8){
      //draw_debug_text(floor(x)-50, floor(y) - 85,string("Chili Dog Plate"));
      pot_compat_text = "Chili Dog Plate"
  }if(food_id = 9){
      //draw_debug_text(floor(x)-65, floor(y) - 85,string("Orange Dreamsicle"));
      pot_compat_text = "Orange Dreamsicle"
  }if(food_id = 10){
      //draw_debug_text(floor(x)-50, floor(y) - 85,string("Century Egg"));
      pot_compat_text = "Century Egg"
  }
  
  
  //if(food_id > 10){
      //draw_debug_text(floor(x)-65, floor(y) - 85,string(pot_compat_text));
      textDraw(floor(x), floor(y) - 85, "fName", c_white, 15, 250, fa_center, 1, true, 1, string(pot_compat_text), false);
  //}
  
  
}

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;
