//debug
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_FSPECIAL){
        if (window <= 3){  
            if (spr_dir == 1){
                draw_sprite_ext( sprite_get("arrow"), 0, x + 12, y - 30, spr_dir*-1, 1, angle_cur*1.15 - 110, c_white, 1 );
            }
            else if (spr_dir == -1){
                draw_sprite_ext( sprite_get("arrow"), 0, x - 12, y - 30, spr_dir*-1, 1, angle_cur*-1.15 + 110, c_white, 1 );
            }
        }
    }
}



