if (my_hitboxID.hbox_num == 2 && my_hitboxID.attack == AT_FTILT or my_hitboxID.hbox_num == 2 && my_hitboxID.attack == AT_DTILT or my_hitboxID.hbox_num == 3 && my_hitboxID.attack == AT_DAIR or my_hitboxID.hbox_num == 2 && my_hitboxID.attack == AT_FAIR or my_hitboxID.hbox_num == 2 && my_hitboxID.attack == AT_UAIR){
    if (!place_meeting(x, y, terrain) && instance_exists(terrain) && !electro_charged or !instance_exists(terrain) && !electro_charged){
    if (instance_exists(terrain)){
        terrain.state = 2;
        terrain.state_timer = 0;
    }
    terrain = instance_create(my_hitboxID.x, my_hitboxID.y, "obj_article1");
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && hit_player_obj.clone == false){
    if (instance_exists(terrain)){
        terrain.state = 2;
        terrain.state_timer = 0;
    }
    move_cooldown[AT_DSPECIAL] += 80;
    if hit_player_obj.countered{
    	hit_player_obj.countered = false;
    	counter_id = noone;
    }
	terrain = instance_create(x, y, "obj_article1");
	if (instance_exists(counter_id) or counter_dmg == 0){
    take_damage(hit_player_obj.player, player, round(get_player_damage(hit_player_obj.player) *0.5) );
	}
}

if (my_hitboxID.attack == 49){
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.state = PS_HITSTUN;
	    hit_player_obj.state_timer = 0;
	    hit_player_obj.hitpause = true;
	    hit_player_obj.hitstop = 80;
	    hit_player_obj.countered = true;
	    counter_id = hit_player_obj;
	    window = 4;
	    window_timer = 0;
	}
	if (my_hitboxID.hbox_num == 2){
		sound_play(sound_get("sfx_super_effective"));
		if hit_player_obj.countered{
    	hit_player_obj.countered = false;
    	counter_id = noone;
    }
	if (instance_exists(counter_id) or counter_dmg == 0){
    take_damage(hit_player_obj.player, player, round(get_player_damage(hit_player_obj.player) *0.75) );
	}
	}
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 3) {
    sound_play(sound_get("meteor"));
}