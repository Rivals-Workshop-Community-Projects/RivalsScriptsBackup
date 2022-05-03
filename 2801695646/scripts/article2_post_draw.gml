// Smoke post draw
with (player_id) {
    
    // Get sprite index
    var _spr_idx = sprite_get("ent_smoke");                                     // Get smoke sprite
    // Get image index
    var _anim_length = 36;                                                      // Get smoke animation length.
    var _t = (get_gameplay_time() % _anim_length) / _anim_length;                 // Set the image index loop duration.
    var _img_idx = lerp(0, 4, _t);                                              // Loop the image index from frames 1 to 4.
    
    
    //---------------------------------
    // About Shader Code by Frtoud:
    //---------------------------------
    /*
    The idea here is to draw a bunch of transparent smoke sprites,
    but not have them "overlap", and gradually become more opaque
    as more sprites overlap.
        
    In Photoshop terms, you're putting a bunch of layers into a
    folder, and turning down the opacity of that folder.
    */
    
    
    //---------------------------------
    // Shader (Header) Code by Frtoud
    //---------------------------------
    if (other.is_front) {
        gpu_push_state();
        
        //"antimask" Header
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false,false,false,true);
        
        draw_set_alpha(0.5); //set draw allowed everywhere
        draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
        
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);
    }
    
    // Loop through smoke array
    for (var i = 0; i < array_length(sna_smoke_clouds); i++) {
        var _smoke_end_time = sna_smoke_clouds[i].creation_time + sna_smoke_lifetime;
        if (get_gameplay_time() > _smoke_end_time) continue;                    // Skip expired smoke clouds.
        
        // Set smoke warning colour
        var _smoke_c = c_white; 
        if (get_gameplay_time() > _smoke_end_time - 600) _smoke_c = c_ltgray;   // During the last 10 seconds of the smoke's lifetime, darken the smoke.
        
        //---------------------------------
        // Draw Front Smoke
        //---------------------------------
        if (other.is_front) {
            
            var _x = sna_smoke_clouds[i].x;
            var _y = sna_smoke_clouds[i].y;
            
            //---------------------------------
            // Shader (Midder) Code by Frtoud
            //---------------------------------
            //for each smoke do
            gpu_set_colorwriteenable(true,true,true,false);
            gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
            gpu_set_alphatestenable(true);
            draw_sprite_ext(_spr_idx, _img_idx, _x, _y, 1, 1, 0, _smoke_c, 1);
            
            gpu_set_colorwriteenable(false,false,false,true);
            gpu_set_blendmode_ext(bm_inv_src_alpha,bm_inv_src_alpha);
            draw_sprite_ext(_spr_idx, _img_idx, _x, _y, 1, 1, 0, _smoke_c, 1);
            
        }
        
        //---------------------------------
        // Draw Back Smoke
        //---------------------------------
        else {
            if (get_gameplay_time() > sna_smoke_clouds[i].creation_time + 60) {     // If NOT in the initial (transparent) smoke creation time...
                draw_sprite_ext(_spr_idx, _img_idx, sna_smoke_clouds[i].x, sna_smoke_clouds[i].y, 1, 1, 0, _smoke_c, 1);     // Draw opaque back smoke sprite.
            }
            // DEBUG: Draw smoke radius
            /*var _rad = sna_smoke_radius;
            var _x = sna_smoke_clouds[i].x;
            var _y = sna_smoke_clouds[i].y - 30;
            draw_rectangle_color(_x - _rad, _y - _rad, _x + _rad, _y + _rad, c_aqua, c_aqua, c_aqua, c_aqua, false );*/
        }
    }
    
    //---------------------------------
    // Shader (Footer) Code by Frtoud
    //---------------------------------
    if (other.is_front) {
        //Footer
        gpu_set_colorwriteenable(true,true,true,true);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
        
        gpu_pop_state();
    }
}