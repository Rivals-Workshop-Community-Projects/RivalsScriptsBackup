//pre_draw

//Intro Platform BG

if(state == PS_RESPAWN){
    shader_start();
	draw_sprite_ext(sprite_get("plat_bg"),image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end();
}
/*
if(attack == AT_DSPECIAL && tsunami_proj != 0){
    shader_start();
    //Extract variables from tsunami
    with(tsunami_proj){
        var tsunami_x = x;
        var tsunami_y = y - y_pos;
        var tsunami_spr_dir = spr_dir;
    }
    }
    //Draw script
    var tsunami_image_index = get_gameplay_time()/ 6;
    var tsunami_y_offset = -110 / 2;
    draw_sprite_ext(sprite_get("dspecial_water_proj_surf"),tsunami_image_index,tsunami_x,tsunami_y + tsunami_y_offset,tsunami_spr_dir,1,0,c_white,1);
    shader_end();
}
*/

/*
if(attack == AT_DSPECIAL_2 && tsunami_surf_hitbox_id != 0){
    
    with(tsunami_surf_hitbox_id){
            var tsunami_x = x;
            var tsunami_y = y - y_pos;
            var tsunami_spr_dir = spr_dir;
    }    
    
    var tsunami_image_index = get_gameplay_time()/ 6;
    draw_sprite_ext(sprite_get("dspecial_water_proj_surf"),tsunami_image_index,tsunami_x,tsunami_y,tsunami_spr_dir,1,0,c_white,1);
   
   // Sound handler for this 
   /* 
    if(tsunami_image_index % 6 == 1 && instance_exists(tsunami_surf_hitbox_id)){
        sound_play(asset_get("sfx_troupple_splash_big"),false,noone,.25,1);
    }
    
}

*/