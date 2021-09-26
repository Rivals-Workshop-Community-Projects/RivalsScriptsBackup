bomb_cooldown++;
image_index = bomb_cooldown / 4;
sprite_index = sprite_get("physical_attacks_morph_bomb")

if(bomb_cooldown == 60){
    create_hitbox(AT_FSTRONG_2, 1, x + 32, y + 32);
    sound_play(sound_get("bombs"));
}

force_depth = 1;

if(special_bombs == true){
    bomb_movement++;
    if(!free){
        vsp = 0;
        hsp = 0;
    }else if(free){
        if(bomb_direction == 0){
            hsp = bomb_hsp
        }else if(bomb_direction == 1){
            hsp = 0 - bomb_hsp
        }
        vsp += 0.2;
    }
}

if(bomb_movement == 1){
    vsp = -4;
}

if(place_meeting(x, y, player_id) && bomb_cooldown >= 60 && player_id.is_morph == true){
    player_id.vsp = player_id.backup_vsp - 0.8;
}


if(bomb_cooldown >= 80){
    player_id.bomb_amount--;
    instance_destroy(self)
}