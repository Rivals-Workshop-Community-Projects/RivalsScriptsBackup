//waga bobo
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    //dspecial
    /*
    if attack == AT_DSPECIAL {
        if window == 2 && !dspecial_failed{
            draw_circle_color(x,y-35,45,c_green,c_green,false);
            draw_circle_color(x,y-35,15,c_red,c_red,false);
            draw_circle_color(x,y-35,
            ease_linear(100,0,window_timer,window_length)
            ,c_white,c_white,true);
        }
    }
    */
    //nspecial
    if attack == AT_NSPECIAL {
        if window == 4 {
            switch(axe_type) {
                case 0:
                    draw_sprite_ext(sprite_get("spr_noneIcon"),0,x, y-105,1,1,0,c_white,1);
                    draw_sprite_ext(sprite_get("spr_redAxeIcon"),0,x+65, y-35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_shieldIcon"),0,x, y+35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_windIcon"),0,x-65, y-35,1,1,0,c_white,0.55);
                    break;
                case 1:
                    draw_sprite_ext(sprite_get("spr_noneIcon"),0,x, y-105,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_redAxeIcon"),0,x+65, y-35,1,1,0,c_white,1);
                    draw_sprite_ext(sprite_get("spr_shieldIcon"),0,x, y+35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_windIcon"),0,x-65, y-35,1,1,0,c_white,0.55);
                    break;
                case 2:
                    draw_sprite_ext(sprite_get("spr_noneIcon"),0,x, y-105,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_redAxeIcon"),0,x+65, y-35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_shieldIcon"),0,x, y+35,1,1,0,c_white,1);
                    draw_sprite_ext(sprite_get("spr_windIcon"),0,x-65, y-35,1,1,0,c_white,0.55);
                    break;
                case 3:
                    draw_sprite_ext(sprite_get("spr_noneIcon"),0,x, y-105,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_redAxeIcon"),0,x+65, y-35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_shieldIcon"),0,x, y+35,1,1,0,c_white,0.55);
                    draw_sprite_ext(sprite_get("spr_windIcon"),0,x-65, y-35,1,1,0,c_white,1);
                    break;
            }
        }
    }
}

if nspecial_anim_buffer != 25 {
    switch(axe_type) {
        case 0:
            draw_sprite_ext(sprite_get("spr_noneIcon"),0,x, y - ease_cubeOut(85,105,nspecial_anim_buffer >= 25 ? 25 : nspecial_anim_buffer,25),1,1,0,c_white,1);
            break;
        case 1:
            draw_sprite_ext(sprite_get("spr_redAxeIcon"),0,x, y - ease_cubeOut(85,105,nspecial_anim_buffer >= 25 ? 25 : nspecial_anim_buffer,25),1,1,0,c_white,1);
            break;
        case 2:
            draw_sprite_ext(sprite_get("spr_shieldIcon"),0,x, y - ease_cubeOut(85,105,nspecial_anim_buffer >= 25 ? 25 : nspecial_anim_buffer,25),1,1,0,c_white,1);
            break;
        case 3:
            draw_sprite_ext(sprite_get("spr_windIcon"),0,x, y - ease_cubeOut(85,105,nspecial_anim_buffer >= 25 ? 25 : nspecial_anim_buffer,25),1,1,0,c_white,1);
            break;
    }
}


//plat
if (state == PS_RESPAWN or (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT && initial_invince)) {
    draw_sprite(sprite_get("pplat"),0,x,y);
}