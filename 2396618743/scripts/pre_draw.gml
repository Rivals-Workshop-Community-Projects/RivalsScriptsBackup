//PRE DRAW
shader_start();
if (attack == AT_USPECIAL && (window == 2 || window == 3) && chargeSpent){
    draw_sprite_ext(tornado, floor(tornadoAnimTimer), (x - 48 + tornadoXposition), y-64, spr_dir, 1, 0 , c_white, 1);
}


if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
        draw_sprite(platback_spr, 1, x, y);
    
}

shader_end();