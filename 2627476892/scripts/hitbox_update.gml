//

if (attack == AT_USTRONG){
    if(hbox_num == 2){
        if(hitbox_timer % 5 == 0){
        	sound_play(sound_get("snd_bombfall"));
        }       if(hitbox_timer == 29){
        	sound_play(sound_get("snd_bomb"));
        	create_hitbox(AT_USTRONG, 3, x, y - 5);
		var explode = spawn_hit_fx(x, y - 5, player_id.fast_explosion_effect);
        explode.depth = -10;
        	destroyed = true;
        }
    }
}