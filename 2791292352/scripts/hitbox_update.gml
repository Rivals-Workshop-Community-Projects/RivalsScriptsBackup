// aaa

switch(attack){
	case AT_NSPECIAL:
		if (hbox_num == 1){
			if (hitbox_timer % 6 == 0){
				var width = 20;
				var height = 20;
				var fx_used = (round(get_gameplay_time() / 2.5) % 2 == 0) ? trailfx_2 : trailfx_1;
				// codeing
				var fx1 = spawn_hit_fx(round(x + random_func(0, width+1, true) - (width/2)), round(y + random_func_2(0, height+1, true)) - height, fx_used);
				fx1.depth = depth+1; // move above player
			}
		}
	break;

	case AT_USPECIAL:
		if (hbox_num == 1){
			if (hitbox_timer % 6 == 0){
				var counter = 0;
				var counter_max = array_length(can_hit);
				
				while (counter < counter_max){
					can_hit[counter] = true;
					counter++;
				}
				//print(can_hit);
			}
		}
		with(oPlayer){
            if (perfect_dodging)
            other.can_hit[player] = false;
        }
	break;
}
