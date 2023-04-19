//other_post_draw.gml
//other_post_draw
/*
if(!instance_exists(other_player_id)){
    return;
}

if ("electric_mark" not in other_player_id){
     return;
}
*/
var fx_image_index = get_gameplay_time() / 6;
var temp_x = x;
var temp_y = y;
var temp_char_height = char_height;

// Water
if(electric_mark == true){
    //print(electric_mark);
    // Draw Sprite
    with(other_player_id){
        shader_start();
        draw_sprite_ext(sprite_get("hfx_mark_active"),fx_image_index,temp_x,temp_y - floor(temp_char_height / 2),1,1,0,c_white,1);
        shader_end();
    }
    
    // Timer
    mark_timer += 1; // increment timer
    if(mark_timer >= mark_time_limit){ // If at the time
      electric_mark = false;
    }
    
    // Reset timer on parry so the mark doesn't go out before a parry punish
    if(was_parried){
        mark_timer = 0;
    }
}