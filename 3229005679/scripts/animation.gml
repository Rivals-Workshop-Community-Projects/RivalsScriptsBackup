if (state == PS_PRATLAND){
    sprite_index = sprite_get("landinglag");
}


if (state == PS_DASH){
    hud_offset = 30;
}


if (state == PS_SPAWN && spawn_timer == 1) {
    set_attack(AT_EXTRA_1);
    starting_spr_dir = spr_dir;
}


if (attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        
    image_index = tauntRNG;
        
}


if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

    if (instance_exists(vigiWeenie)){
        vigiWeenie.state = window;

        if (window == 1){
            sprite_index = sprite_get("fspecialSpawn");
            vigiWeenie.sprite_index = sprite_get("weenieSpawn");
            vigiWeenie.image_index = image_index;
        }

        if (window == 2){
            sprite_index = sprite_get("fspecialDash");
            vigiWeenie.sprite_index = sprite_get("weenieDash");
            image_index = floor((window_timer * min(max((abs(hsp)) / 2.5, 1), 4)) * (image_number/get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)));
            
            vigiWeenie.image_index = image_index;
        }

        if (window == 3){
            sprite_index = sprite_get("fspecialTurn");
            vigiWeenie.sprite_index = sprite_get("weenieTurn");
            vigiWeenie.image_index = image_index;
        }

        if (window == 4){
            sprite_index = sprite_get("fspecialJump");
            vigiWeenie.sprite_index = sprite_get("weenieIdle");
        }
    }

    if (window == 5){
        sprite_index = sprite_get("fspecialJump");
    }
}


if (attack == AT_DSTRONG && window == 1 && image_index >= 4 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    image_index = (strong_charge/3 % 3) + 2;
}


if (get_player_color(player) == 27){
    sprite_index = sprite_get("blank_idle");
    image_index = (get_gameplay_time() * idle_anim_speed) % image_number;
    can_move = false;

    set_state(PS_IDLE_AIR);

    if (sign(x - (room_width)/2)*-1 != 0){
        spr_dir = sign(x - (room_width)/2) * -1;
    }
    
    for (var i = 0; i < 19; ++i){
        move_cooldown[i] = 1000;
    }
    cheese_cooldown = 1000;
}