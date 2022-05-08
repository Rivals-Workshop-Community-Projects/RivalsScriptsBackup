//taunt
if(attack == AT_TAUNT){
    sprite_index = sprite_get("hud_items");
    image_index = item_id * 2;
    image_yscale = 2;
    image_xscale = 2;
    vsp = -2;
    if(alpher > 0){
        alpher -= 0.025;
    }
    image_alpha = alpher;
    if(alpher <= 0){
        instance_destroy(self);
    }
}
//dstrong
if(attack == AT_DSTRONG){
    bomb_timer++;
    depth = player_id.depth - 2
    sprite_index = sprite_get("cross_bomb");
    image_index = bomb_timer * 0.2;
    if(bomb_timer == 30){
        sound_play(sound_get("cross_explode"));
        create_hitbox(AT_DSTRONG, 2, x, y);
    }else if(bomb_timer == 35){
        create_hitbox(AT_DSTRONG, 1, x + 28, y);
        create_hitbox(AT_DSTRONG, 2, x, y - 28);
        create_hitbox(AT_DSTRONG, 3, x - 28, y);
        create_hitbox(AT_DSTRONG, 4, x, y + 28);
    }else if(bomb_timer == 40){
        create_hitbox(AT_DSTRONG, 1, x + 56, y);
        create_hitbox(AT_DSTRONG, 2, x, y - 56);
        create_hitbox(AT_DSTRONG, 3, x - 56, y);
        create_hitbox(AT_DSTRONG, 4, x, y + 56);
    }else if(bomb_timer == 45){
        if(quick == false){
            create_hitbox(AT_DSTRONG, 5, x + 84, y);
            create_hitbox(AT_DSTRONG, 6, x, y - 84);
            create_hitbox(AT_DSTRONG, 7, x - 84, y);
            create_hitbox(AT_DSTRONG, 8, x, y + 84);
        }else{
            create_hitbox(AT_DSTRONG, 1, x + 84, y);
            create_hitbox(AT_DSTRONG, 2, x, y - 84);
            create_hitbox(AT_DSTRONG, 3, x - 84, y);
            create_hitbox(AT_DSTRONG, 4, x, y + 84);
        }
    }
    if(bomb_timer >= 64){
        instance_destroy(self);
    }
}
//dspecial
if(attack == AT_DSPECIAL){
    depth = player_id.depth - 2;
    bomb_timer++;
    if(bomb_type = 0){
        hsp = 0;
        vsp = 0;
        image_yscale = 2;
        image_xscale = 2;
        sprite_index = sprite_get("bomb");
        image_index = (bomb_timer / 35) * 12;
        if(bomb_timer == 21){
            sound_play(sound_get("bomb_explode"), false, false, 0.6);
            create_hitbox(AT_DSPECIAL, 1, x, y);
            if(place_meeting(x, y, player_id) && y > -100){
                var player = point_direction(player_id.x, player_id.y - 14, x, y);
                player_id.hsp = -6 * cos(degtorad(player));
                player_id.vsp = 6 * sin(degtorad(player));
            }
        }
        if(bomb_timer >= 35){
            player_id.bomb_amount--;
            instance_destroy(self);
        }
    }else if(bomb_type = 1){
        hsp = 0;
        vsp = 0;
        image_yscale = (image_index < 5? 2: (bomb_timer - 25) / (has_rune("G")? 1.5: 5));
        image_xscale = (image_index < 5? 2: (bomb_timer - 25) / (has_rune("G")? 1.5: 5));
        sprite_index = sprite_get("power_bomb");
        image_index = (image_index < 5? bomb_timer / 6: 5);
        image_alpha = (bomb_timer >= 66? 1 - ((bomb_timer - 66) / 10): 1);
        if(bomb_timer == 15){
            sound_play(sound_get("power_explode2"));
            sound_play(sound_get("power_explode1"));
        }
        if(bomb_timer == 20){
            sound_play(sound_get("power_explode5"));
        }
        if(bomb_timer > 26){
            shake_camera(floor((200 - bomb_timer) / 10), 5);
        }
        if(bomb_timer == 64){
            sound_play(sound_get("power_explode3"));
            sound_play(sound_get("power_explode4"));
        }
        if(image_index == 5 && bomb_timer % 2 == 1){
            hurt = create_hitbox(AT_DSPECIAL, 2, x + 4, y);
            if(bomb_timer >= 70){
                hurt.kb_scale = 1.5
            }else{
                hurt.kb_scale = 1
            }
            hurt.image_yscale = 50 * image_yscale / 200;
            hurt.image_xscale = 64 * image_xscale / 200;
        }
        if(bomb_timer >= 76){
            instance_destroy(self);
        }
    }
}