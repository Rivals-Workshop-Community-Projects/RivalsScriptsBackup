//POST DRAW

shader_start();

if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
    draw_sprite(platfront_spr, 0, x, y);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 1);
    
}

if (freeFloat){
    draw_sprite_ext(sprite_get("floateffect"), floor(floateffectAnimTimer), x+((spr_dir-1)*-2), y, 1, 1, 0, c_white, ((freeFloat*2)/20));

}


shader_end();