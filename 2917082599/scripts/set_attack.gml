switch(attack){
    case AT_FSPECIAL:
  //   if (temp_level != 0 and !free and window == 3){
		// 	attack = AT_DTILT;
		// }
	if (dashes == 0 || move_cooldown[AT_FSPECIAL] >= 1){
    	attack = AT_FSPECIAL_2;
    }
	if prev_state == PS_ATTACK_GROUND && attack == AT_DATTACK {
		window = 1;
		window_timer = 8;
		print("yea")
	}
    break;
    case AT_DSPECIAL:
	if (dashes == 0 || !free){
    	attack = AT_DSPECIAL_2;
    }
    break;
    case AT_USPECIAL:
 //   if (temp_level != 0){
	// 	can_wall_jump = false;	
	// }
	if (dashes == 0){
    	attack = AT_USPECIAL_2;
    }
    break;
    case AT_JAB:
		// if (temp_level != 0 and !has_hit){
		// 	set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
		// } else { reset_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE);}
}

reset_attack_value(attack, AG_NUM_WINDOWS);

for(i=1; i < get_num_hitboxes(attack)+1; i++)
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1); 