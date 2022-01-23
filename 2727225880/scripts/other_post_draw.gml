//post-draw

if (zoomered && other_player_id == zoomed_id){
    var status_sprite = -1;
    with (zoomed_id){
        //sprite_get can only be called directly by the workshop character
       if (other.zoomerang == 1) {
            status_sprite = sprite_get("status_one"); }
       if (other.zoomerang == 2) {
            status_sprite = sprite_get("status_two"); }      
        if (other.zoomerang == 3) {
            status_sprite = sprite_get("status_three"); }    
            if (other.zoomerang == 0) {
                        status_sprite = sprite_get("empty_sprite"); }    

            
            
        shader_start();
    }
    if (status_sprite != -1)
        draw_sprite(status_sprite, get_gameplay_time()*.3, x, y-char_height*.5);
    with (zoomed_id){
        shader_end();
    }
}


//draw_debug_text(x, y + 25, string(zoomerang))

//draw_debug_text(x, y + 45, "hello my darling")
