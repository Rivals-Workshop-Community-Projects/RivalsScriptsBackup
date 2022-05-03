//shader_start();

if(state == 2 && timer >= 120 || state == 3 || state == 4){
    if(player_id.alt == 0){
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim,x+110*spr_dir,y+110,2*spr_dir,2,0,c_white,1);
        
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+294*spr_dir,y+294,2*spr_dir,2,0,c_white,1);
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+184)*spr_dir,y+294+184,2*spr_dir,2,0,c_white,1);
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+(184*2))*spr_dir,y+294+(184*2),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+(184*3))*spr_dir,y+294+(184*3),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+(184*4))*spr_dir,y+294+(184*4),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+(184*5))*spr_dir,y+294+(184*5),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser"),anim+7,x+(294+(184*6))*spr_dir,y+294+(184*6),2*spr_dir,2,0,c_white,1);
    }else{
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim,x+110*spr_dir,y+110,2*spr_dir,2,0,c_white,1);
        
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+294*spr_dir,y+294,2*spr_dir,2,0,c_white,1);
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+184)*spr_dir,y+294+184,2*spr_dir,2,0,c_white,1);
        draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+(184*2))*spr_dir,y+294+(184*2),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+(184*3))*spr_dir,y+294+(184*3),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+(184*4))*spr_dir,y+294+(184*4),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+(184*5))*spr_dir,y+294+(184*5),2*spr_dir,2,0,c_white,1);
        //draw_sprite_ext(sprite_get("dspecial_time_rift_laser_alts"),anim+7,x+(294+(184*6))*spr_dir,y+294+(184*6),2*spr_dir,2,0,c_white,1);
    }
}

//shader_end();