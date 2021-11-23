if (instance_exists(terrain)){
        terrain.state = 2;
        terrain.state_timer = 0;
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1){
    first_jab_parried = true;
}

if (electro_charged){
			spawn_hit_fx( x - 10*spr_dir, y - 130, uh_oh );
			sound_play(sound_get("sfx_uh_oh"));
			counter_dmg += 1;
}