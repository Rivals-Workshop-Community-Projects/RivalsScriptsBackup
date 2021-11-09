shader_start();

if move_cooldown[AT_EXTRA_3] > 0 && hit_player_obj != self{
        	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2, 
        	angledraw , -1 , move_cooldown[AT_EXTRA_3]/maxdraw + 0.2);

}

if move_cooldown[AT_EXTRA_3] > 0 && hit_player_obj != self && hitdmg*6 > 5{
        	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/3,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/3, 
        	angledraw+90, -1 , move_cooldown[AT_EXTRA_3]/maxdraw + 0.2);

}

if get_player_color(player) == 17 { 
    
    draw_sprite_ext(sprite_index,image_index,x,y,(1+mixellev1)*spr_dir,1 + mixellev2, (mixellev1-mixellev2)*60,-1,1 )   
    
    if !hitpause {
    if mixellev1 < 0 {
        mixellev1 += .002
    }
    if mixellev1 > 0 {
        mixellev1 -= .002
    }
    if mixellev2 < 0 {
        mixellev2 += .002
    }
    if mixellev2 > 0 {
        mixellev2 -= .002
    }
    }
}
shader_end() 

