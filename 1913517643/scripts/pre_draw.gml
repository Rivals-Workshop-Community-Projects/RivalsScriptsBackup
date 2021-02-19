//PRE DRAW
shader_start();

if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
        draw_sprite(platback_spr, 0, x, y);
    
}


if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1){
    draw_sprite_ext(beachprops, floor(beachpropsAnimTimer), x, y, spr_dir, 1, 0 , c_white, 1);
}

shader_end();