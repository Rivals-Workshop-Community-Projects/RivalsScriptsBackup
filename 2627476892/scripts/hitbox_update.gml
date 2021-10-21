if (attack == AT_USTRONG){
    if(hbox_num == 2){
        if(hitbox_timer == 1){
        	sound_play(sound_get("snd_bombfall"));
        }        if(hitbox_timer == 6){
        	sound_play(sound_get("snd_bombfall"));
        }       if(hitbox_timer == 11){
        	sound_play(sound_get("snd_bombfall"));
        }       if(hitbox_timer == 14){
        	sound_play(sound_get("snd_bomb"));
        	create_hitbox(AT_USTRONG, 3, x, y - 30);
		var explode = spawn_hit_fx(x, y - 30, player_id.fast_explosion_effect);
        explode.depth = -10;
        	destroyed = true;
        }
    }
}