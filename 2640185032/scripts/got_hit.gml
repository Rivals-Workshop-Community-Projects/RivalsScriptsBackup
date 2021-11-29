if(enemy_hitboxID.type == 1){
	//hit_player_obj.countdown -= 45;
	if(hit_player_obj.knife_stack >= 1)	hit_player_obj.knife_stack -= 1;
	with(hit_player_obj){
		outline_color = [0, 0, 0];
        init_shader();
	}
}

if(attack == AT_NSPECIAL && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND)){
    if(enemy_hitboxID.kb_value > 0){
        knives = 0;
    }
}