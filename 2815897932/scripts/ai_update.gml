if magic < 1{
far_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[2] = AT_UTILT;
neutral_attacks[3] = AT_DTILT;
close_side_attacks[4] = AT_FTILT;
}
if magic >= 1{
far_side_attacks[0] = AT_DSPECIAL;
mid_side_attacks[2] = AT_FSPECIAL;
neutral_attacks[3] = AT_DSPECIAL;
close_side_attacks[4] = AT_DSPECIAL;
}

if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_JAB && has_hit && !was_parried && (window == 3 || window == 6)){
	attack_pressed = true;
}
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FTILT && has_hit && !was_parried && (window == 3 || window == 6)){
	attack_pressed = true;
}
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DTILT && has_hit && !was_parried && window == 3){
	attack_pressed = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	//increase aggression if lvl is high & opponent is in hitstun or close
	var targetdist = point_distance(x, y, ai_target.x, ai_target.y);
	if(temp_level == 9 && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND
	|| ai_target.state == PS_PRATFALL || ai_target.state == PS_PRATLAND || targetdist < 100)){
		ai_attack_time = 0;
	}
	
	//charging strongs
	if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_DSTRONG)
			&& (other.strong_charge == 1 && random_func(0,2,true) != 0 || other.strong_charge != 1 && random_func(0,30,true) != 0)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 150 && state == PS_PARRY){
					other.strong_down = false;
				}
			}else{
				other.strong_down = false;
			}
		}
	}
    	//to make the AI jump a bit more
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 125 && random_func(0,6,true) == 0){
			with(other){
                if(!free && can_attack && can_jump && !shield_pressed){
                    jump_pressed = true;
                }
            }
		}
	}
}