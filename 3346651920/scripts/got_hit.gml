//GOT HIT

grabbed_player_obj = noone;

if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
	if (attack==AT_FSPECIAL){
		if (super_armor){
			if (enemy_hitboxID.type==2){//proj
				if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup += enemy_hitboxID.damage*3;}
			}else{//melee
				if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup += 30;}
			}
			sound_play(sound_get("tta_17"));
			spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), 66 );
			
			if (hit_player_obj.slender_haunt != -4){
			if (hit_player_obj.slender_haunt_timer > 0){
				take_damage( hit_player_obj.player, player, enemy_hitboxID.damage );
				sound_play(sound_get("distort_ex_2"));
				sound_play(sound_get("distort_ex_2"),false,noone,0.6);
				spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), 19 );
			}
			}
			
		}
	}
}

if (!super_armor){
	if (enemy_hitboxID.type!=2){
	hit_player_obj.slender_haunt = -4;
	hit_player_obj.slender_haunt_timer = 0;
	hit_player_obj.slender_buildup = 0;
	}
}