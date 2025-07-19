if enemy_hitboxID.player_id != player_id and hit_cool == 0 and state != 5{
    if enemy_hitboxID.effect != 9{
        hitstop = ceil((get_hitstop_formula(get_player_damage(player_id.player), enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, enemy_hitboxID.extra_hitpause)));
        hitstun = ceil(get_hitstun_formula(get_player_damage(player_id.player), player_id.knockback_adj, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale));
    } else {
        hitstun = 0;
    }
    
    var temp_angle = get_hitbox_angle( enemy_hitboxID );
    var force = enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale;
    old_hsp = lengthdir_x( force, temp_angle );
    old_vsp = lengthdir_y( force, temp_angle );
    
    sound_play(enemy_hitboxID.sound_effect);
    spawn_hit_fx(x + enemy_hitboxID.hit_effect_x, y + enemy_hitboxID.hit_effect_y, enemy_hitboxID.hit_effect);
    
    set_player_damage(player_id.player, get_player_damage(player_id.player) + enemy_hitboxID.damage);
    if enemy_hitboxID.no_other_hit != 0{
        hit_cool = enemy_hitboxID.no_other_hit;
    } else {
        hit_cool = ((enemy_hitboxID.length - enemy_hitboxID.hitbox_timer));
    }
    
    switch(enemy_hitboxID.effect){
        case 1: // Burn
            player_id.burned = true;
            player_id.burnt_id = enemy_hitboxID.player_id;
            player_id.burn_timer = 0;
            break;
        case 4: // WRAP
        case 8:
            player_id.state = PS_WRAPPED;
            player_id.wrapped = true;
            player_id.wrapped_player = enemy_hitboxID.player;
            player_id.wrap_time = 34 + ceil(get_player_damage(player_id.player) * 0.13);
            break;
        case 5: // FREEZE
            if player_id.free = false{
                player_id.state = PS_FROZEN;
                player_id.frozen_player = enemy_hitboxID.player;
            }
            break;
        case 6: // oh hai
            player_id.marked = true;
            break;
        case 11: // STUNNING
            player_id.plasma_pause = true;
            player_id.plasma_id = enemy_hitboxID.player_id;
            player_id.plasma_player = enemy_hitboxID.player;
            player_id.hitpause = true;
            player_id.hitstop = ceil((get_hitstop_formula(get_player_damage(player_id.player), enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, enemy_hitboxID.extra_hitpause)));
            player_id.hitstun = ceil(get_hitstun_formula(get_player_damage(player_id.player), player_id.knockback_adj, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale));
            break;
    }
    
    state = 4;
    state_timer = 0;
    
    hsp = 0;
    old_hsp = 0;
    vsp = 0;
    old_vsp = 0;
    
    player_id.last_player = enemy_hitboxID.player;
    player_id.last_attack = enemy_hitboxID.attack;
    player_id.last_hbox_num = enemy_hitboxID.hbox_num;
}