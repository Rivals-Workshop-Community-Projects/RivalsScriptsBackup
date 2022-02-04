if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
    if attack == AT_TAUNT_2{
        if shades == 0{
            switch(shades_to_equip){
                case 1: // Squirtle Squad
                    draw_sprite_ext(sprite_get("taunt2_shades"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);
                    break;
                case 2: // YEE-HAW
                    draw_sprite_ext(sprite_get("taunt2_shades"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    break;
            }
        }
    }
}

// Debug
/*
draw_debug_text(x, y + 16, "X: " + string(x));
draw_debug_text(x, y + 32, "Y: " + string(y));*/