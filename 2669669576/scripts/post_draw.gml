if(state == PS_PARRY){
    shader_start();
    var parry_alpha = 1;
    switch(image_index){
        case 1:
            draw_sprite_ext(sprite_get("parryeffect"), image_index, x, y, spr_dir, 1, 0, c_white, parry_alpha);
            break;
        case 2:
            if(get_player_color(player) == 7){
                parry_alpha = 1;
            } else {
                parry_alpha = .7;
            }
            draw_sprite_ext(sprite_get("parryeffect"), image_index, x, y, spr_dir, 1, 0, c_white, parry_alpha);
            break;
        case 3:
            if(get_player_color(player) == 7){
                parry_alpha = 1;
            } else {
                parry_alpha = .5;
            }
            draw_sprite_ext(sprite_get("parryeffect"), image_index, x, y, spr_dir, 1, 0, c_white, parry_alpha);
            break;
    }
    shader_end();
}

if(state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL {
   shader_start();
    draw_sprite_ext(sprite_get("nspecial_ball"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    shader_end();
}