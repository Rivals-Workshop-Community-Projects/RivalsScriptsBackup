if ((enemy_hitboxID.player_id == player_id)and((enemy_hitboxID.attack == AT_USTRONG or enemy_hitboxID.attack == AT_FSTRONG) and enemy_hitboxID.hbox_num == 2) or (enemy_hitboxID.attack == AT_DSTRONG and (enemy_hitboxID.hbox_num == 2 or enemy_hitboxID.hbox_num == 5))){
    if ((enemy_hitboxID.attack == AT_FSTRONG)){
        x = enemy_hitboxID.player_id.x + (179 * enemy_hitboxID.player_id.spr_dir);
        y = enemy_hitboxID.player_id.y - 35;
    }
    if ((enemy_hitboxID.attack == AT_DSTRONG)){
        if enemy_hitboxID.hbox_num == 2{
            x = enemy_hitboxID.player_id.x + (-53 * enemy_hitboxID.player_id.spr_dir);
        } else {
            x = enemy_hitboxID.player_id.x + (99 * enemy_hitboxID.player_id.spr_dir);
        }
        y = enemy_hitboxID.player_id.y - 32;
    }
    if ((enemy_hitboxID.attack == AT_USTRONG)){
        x = enemy_hitboxID.player_id.x + (2 * enemy_hitboxID.player_id.spr_dir);
        y = enemy_hitboxID.player_id.y - 152;
    }
    if enemy_hitboxID.effect != 9{
        if enemy_hitboxID.player_id.has_hit_player == false{
            hitstop = ceil((get_hitstop_formula(0, enemy_hitboxID.damage, enemy_hitboxID.hitpause, 0, 0)));
        }
    } else {
        hitstop = 0;
    }
    
    sound_play(enemy_hitboxID.sound_effect);
    spawn_hit_fx(x + enemy_hitboxID.hit_effect_x, y + enemy_hitboxID.hit_effect_y, enemy_hitboxID.hit_effect);
    
    if enemy_hitboxID.no_other_hit != 0{
        hit_cool = enemy_hitboxID.no_other_hit;
    } else {
        hit_cool = ((enemy_hitboxID.length - enemy_hitboxID.hitbox_timer));
    }
    player_attack = enemy_hitboxID.attack;
    
    sprite_index = spr_bubble_pop;
    state = 4;
    state_timer = 0;
    
    player_id.last_player = enemy_hitboxID.player;
    player_id.last_attack = enemy_hitboxID.attack;
    player_id.last_hbox_num = enemy_hitboxID.hbox_num;
} else {
    hitstop = 0;
    hitstun = 0;
    enemy_hitboxID.player_id.hitstop = 0;
    enemy_hitboxID.player_id.hitstop_full = 0;
    enemy_hitboxID.player_id.hitpause = false;
}