if (((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL)){
    if(!mic_grab && instance_exists(mic_pos)){
        draw_sprite_pos(sprite_get("mic_string"), 0, x +1, y - 40, mic_pos.x +4, mic_pos.y -20, mic_pos.x -4, mic_pos.y -25, x-4, y-40, 1);
    }else if(instance_exists(hit_player_obj) && mic_grab){
        draw_sprite_pos(sprite_get("mic_string"), 0, x -5*spr_dir, y - 20, hit_player_obj.x +4, hit_player_obj.y -20, hit_player_obj.x -4, hit_player_obj.y -25, x+5*spr_dir, y-20, 1);
    }
}