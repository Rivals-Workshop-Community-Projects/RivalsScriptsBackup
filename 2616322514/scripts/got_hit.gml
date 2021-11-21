if (attack == AT_DSPECIAL && super_armor = true){
    window = 4;
    window_timer = 0;
    if (enemy_hitboxID.type == 1){
    hit_player_obj.state = PS_HITSTUN;
    hit_player_obj.state_timer = 0;
    hit_player_obj.hitpause = true;
    hit_player_obj.hitstop = 80;
    hit_player_obj.countered = true;
    counter_id = hit_player_obj;
    counter_dmg = 0;
    //counter_dmg = floor(get_player_damage(hit_player_obj.player) *0.5);
    /*if (hit_player_obj.y > y){
        y -= 2;
    }
    
    if (hit_player_obj.y > y + 6){
        hit_player_obj.y -= 10;
    }
    if (hit_player_obj.x > x + 10){
        hit_player_obj.x = x;
    }
    if (hit_player_obj.x < x - 10){
        hit_player_obj.x = x;
    }*/
    } else{
        counter_dmg = round(enemy_hitboxID.damage*1.5);
    }
}

if (electro_charged && !(place_meeting(x, y, terrain))){
			spawn_hit_fx( x - 10*spr_dir, y - 130, uh_oh );
			sound_play(sound_get("sfx_uh_oh"));
			counter_dmg += 1;
}