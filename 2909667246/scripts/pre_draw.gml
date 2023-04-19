// pre-draw

//shader_start();

if(state == PS_RESPAWN){
    draw_sprite_ext(sprite_get("plat2"), 0, x, y, 1, 1, 0, c_white, 1);
}

//shader_end();