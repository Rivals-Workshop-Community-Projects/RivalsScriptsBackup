//

if(has_shrimp && state != 4){
    var fx_image_index = get_gameplay_time() / 8
        draw_sprite_ext(sprite_get("pot_shrimp_stir"),fx_image_index,x,y + 2,1,1,0,c_white,1);

}
//food

if(state = 7){
  draw_sprite_ext(sprite_get("food"), food_id, x - 30, y - 66, 2, 2, 0, c_white, 1); 
  if(food_id = 0){
      draw_debug_text(x-98, y - 85,string("New Orleans-Style Beignets"));
  }if(food_id = 1){
      draw_debug_text(x-68, y - 85,string("Red Beans and Rice"));
  }if(food_id = 2){
      draw_debug_text(x-65, y - 85,string("Traditional Gumbo"));
  }if(food_id = 3){
      draw_debug_text(x-37, y - 85,string("Jambolaya"));
  }if(food_id = 4){
      draw_debug_text(x-55, y - 85,string("Shrimp Po-boy"));
  }
}