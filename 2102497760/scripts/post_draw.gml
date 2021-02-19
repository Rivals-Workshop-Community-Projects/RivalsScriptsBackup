//post-draw
shader_start();
if mounted {
    if instance_exists(Ou) draw_sprite_ext(Ou.ou_sprite_index,Ou.ou_image_index,x,y,spr_dir,1,Ou.image_angle,c_white,1);
    //draw_sprite_part_ext(mounted_sprite,mounted_index,24,86,28,200,x-(mounted_xoffset-24)*spr_dir,y-102+86+mounted_offset,spr_dir,1,c_white,1);
    if !spr_custom {
        if (state == 5 || state == 6) draw_sprite_ext(sprite_get(string(attack)),mounted_index,x,y+mounted_offset,spr_dir,1,image_angle,c_white,1);
        else draw_sprite_ext(sprite_get(get_state_name(state)),mounted_index,x,y+mounted_offset,spr_dir,1,image_angle,c_white,1);
    } else draw_sprite_ext(spr_custom,mounted_index,x,y+mounted_offset,spr_dir,1,image_angle,c_white,1);
}

//draw_debug_text(x+16,y,string(attack)); 
//draw_debug_text(x+16,y+16,string(instance_exists(Ou)));

//with oPlayer {
    //draw_debug_text(x+16,y,string(hitpause)); 
//}


if mounted {
    if instance_exists(Ou) draw_debug_text(x+18+4*( get_player_damage(player) > 99 ),y-(char_height*2)+3,"/"+string(Ou.percent)+"%");
} else {
    with Ou {
        draw_debug_text(x,y-(char_height*2)-20,string(percent)+"%");
        
        draw_sprite_ext(other.ou_arrow,0,x,y,1,1,0,c_white,1);
        //draw_debug_text(x,y,string(kb_angle));
        //draw_debug_text(x,y+32,string([kb_power*cos(kb_angle),-kb_power*sin(kb_angle)]));
    }
}

/*if !is_ou && get_player_damage(player) == 0 {
    draw_debug_text(x,y,"You can spawn Ou with down-b, and ");
    draw_debug_text(x,y+16,"can tell her to attack by pressing shield while attacking!");
}*/

shader_end();