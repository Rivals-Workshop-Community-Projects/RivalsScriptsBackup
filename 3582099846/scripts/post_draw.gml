    //DSpecial Tongue
if (state == PS_ATTACK_GROUND
|| state == PS_ATTACK_AIR)
&& ((attack == AT_DSPECIAL
&& (window == 5 || window == 6))
|| (attack == AT_DSPECIAL_2
&& (window <= 2))
|| (attack == AT_DSPECIAL_AIR
&& (window <= 2))){
    
    //Draw Tongue Length
    
    //Tongue Horizontal Offsets
    var tongue_xoff_s = x+(37*spr_dir);
    var tongue_xoff_l = (tongue_xoff_s)+(tongue_length*spr_dir);
    
    //Tongue Vertical Offsets
    var tongue_yoff_t = y-34;
    var tongue_yoff_b = y-22;
    
    draw_sprite_pos(sprite_get("tongue"), 0, tongue_xoff_s, tongue_yoff_t, tongue_xoff_l, tongue_yoff_t, tongue_xoff_l, tongue_yoff_b, tongue_xoff_s, tongue_yoff_b, 1);
    
    //Draw Tongue End
    
    draw_sprite_ext(sprite_get("tongue_end"), tongue_subimg, tongue_xoff_l, (tongue_yoff_t+tongue_yoff_b)/2, 2*spr_dir, 2, 0, c_white, 1);
    
}


if state = PS_RESPAWN{
    draw_sprite(sprite_get("plat_hans"), 1, x, y,); 
    
}


//Bubble Sprite???
if (state == PS_ATTACK_AIR
|| state == PS_ATTACK_GROUND)
&& attack == AT_DSPECIAL_AIR{
    
    //Set Bubble Graphic
    var bubble_sprite;
    
    switch(dspec_proj_type){
        case 0:
        bubble_sprite = asset_get("empty_sprite");
        bubble_xoff = 0;
        bubble_yoff = 0;
        break;
        case 1:
        bubble_sprite = sprite_get("nspecial_bubble1");
        bubble_xoff = 36;
        bubble_yoff = 0;
        break;
        case 2:
        bubble_sprite = sprite_get("nspecial_bomb");
        bubble_xoff = 60;
        bubble_yoff = -16;
        break;
    }
    
    if window <= 2{
        //Draw Bubble
        draw_sprite_ext(bubble_sprite, -1, tongue_xoff_l+(bubble_xoff*spr_dir), ((tongue_yoff_t+tongue_yoff_b)/2)+bubble_yoff, spr_dir, 1, 0, c_white, 1);
    }
    if window == 3
    && window_timer < 8{
        //Draw Bubble
        draw_sprite_ext(bubble_sprite, -1, x+(5+bubble_xoff*spr_dir), y-28+bubble_yoff, spr_dir, 1, 0, c_white, 1);
    }

}