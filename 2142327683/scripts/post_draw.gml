shader_start();

switch (state){
    case PS_ATTACK_GROUND: 
    case PS_ATTACK_AIR:
        //Target Circle
        if (attack == AT_NSPECIAL and window == 2){
            draw_sprite_ext(sprite_get("nspecial_proj"), 0, x, y-120,1.0,1.0,0,c_white,target_circle_alpha);
            draw_sprite_ext(sprite_get("nspecial_proj_circle"),0,x,y-120,target_circle_size, target_circle_size,0,c_white,target_circle_alpha);
        }
        //Miss Text
        if (attack == AT_EXTRA_1){
            draw_sprite_ext(sprite_get("nspecial_fail_miss"), image_index, x, y, 1.0, 1.0, 0,c_white,1.0);
        }
    break;
}

shader_end();