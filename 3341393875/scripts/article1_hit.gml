if state == "DEATH" exit;

if (hit_player_obj != player_id && enemy_hitboxID.damage != 0 && enemy_hitboxID.hit_priority != 0){
    hitstop = floor(hit_player_obj.hitstop + 1);
    spawn_hit_fx(lerp(enemy_hitboxID.x, x, 0.5), lerp(enemy_hitboxID.y, y, 0.5), enemy_hitboxID.hit_effect);
    spawn_hit_fx(x, y + 40, orig_player_id.minion_hit);
    sound_play(enemy_hitboxID.sound_effect);
    sound_play(sound_get("sfx_killenemy"), false, false, 2);

    if enemy_hitboxID.type == 2 && enemy_hitboxID.enemies == 0{
        enemy_hitboxID.destroyed = true;
    }
    
    if x < hit_player_obj.x spr_dir = 1;
    if x > hit_player_obj.x spr_dir = -1;
    
    minion_health -= enemy_hitboxID.damage;
    state = minion_health <= 0? "DEATH":"HURT";
}