print (blaster_mini_time);

//DSpecial Arm
shader_start();

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && window == 2){
    draw_sprite_ext(sprite_get("sniper_arm"), 0, x-3*spr_dir-scope_aim/20, y-38, spr_dir*2, 2, scope_aim/2, c_white, 1 );  
}

if (blaster_out == true){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_STRONG && (window == 1 || window == 12)){
        draw_sprite_ext(sprite_get("blaster_stand"), 0, blaster.x+blaster.drawx, blaster.y, blaster_dir*2, 2, 0, c_white, 1 );
    }
}

shader_end();


if (get_player_color(player) == 4){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL){
        draw_sprite_ext(sprite_get("dspecial_retro1"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);  
    }
}

if (get_player_color(player) == 5){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL){
        draw_sprite_ext(sprite_get("dspecial_retro2"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);  
    }
}

