if (state = 0){
    if (enemy_hitboxID.player != player_id.player){
        enemy_hitboxID.has_hit = true;
            spawn_hit_fx(x, y, enemy_hitboxID.hit_effect);
            state = 2;
            state_timer = 0;
            sound_play(enemy_hitboxID.sound_effect);
        	vsp = lengthdir_y(enemy_hitboxID.kb_value, enemy_hitboxID.kb_angle);
        	hsp = lengthdir_x(enemy_hitboxID.kb_value, enemy_hitboxID.kb_angle);
    }
}