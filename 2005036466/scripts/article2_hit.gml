if enemy_hitboxID.player_id != player_id or (enemy_hitboxID.player_id == player_id and (enemy_hitboxID.attack != AT_NSPECIAL and enemy_hitboxID.attack != AT_FSPECIAL and enemy_hitboxID.attack != AT_DSPECIAL and enemy_hitboxID.attack != AT_DSPECIAL_2 and enemy_hitboxID.attack != AT_USPECIAL)){
    
    if enemy_hitboxID.effect != 9{
        hitstop = ceil((get_hitstop_formula(0, enemy_hitboxID.damage, enemy_hitboxID.hitpause, 0, 0)) * .5);
    } else {
        hitstop = 0;
    }
    
    var temp_angle = get_hitbox_angle( enemy_hitboxID );
    var force = round((enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale) * 1.5);
    old_hsp = lengthdir_x( force, temp_angle );
    old_vsp = lengthdir_y( force, temp_angle );
    
    sound_play(enemy_hitboxID.sound_effect);
    spawn_hit_fx(x + enemy_hitboxID.hit_effect_x, y + enemy_hitboxID.hit_effect_y, enemy_hitboxID.hit_effect);
    
    if enemy_hitboxID.no_other_hit != 0{
        hit_cool = enemy_hitboxID.no_other_hit;
    } else {
        hit_cool = ((enemy_hitboxID.length - enemy_hitboxID.hitbox_timer));
    }
    
    state = 0;
    state_timer = 0;
    
    if hbox_mine != noone{
        hbox_mine.player_id = player_id;
    }
    player_id.last_player = enemy_hitboxID.player_id;
    player_id.last_attack = enemy_hitboxID.attack;
    player_id.last_hbox_num = enemy_hitboxID.hbox_num;
} else {
    hit_player_obj.hitstop_full = 0;
    hit_player_obj.hitstop = 0;
}