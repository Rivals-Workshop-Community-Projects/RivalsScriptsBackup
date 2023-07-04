//set_attack
if (should_switch % 2) {
  switch(attack) {
    case AT_NSPECIAL:
      attack = AT_DSPECIAL;
    break;
    case AT_DSPECIAL:
      attack = AT_NSPECIAL;
    break;
  }
}

if (attack==AT_TAUNT){
	if (down_down){
		attack = AT_TAUNT_2
	}
}

if (attack == AT_USPECIAL && jump_pressed && !can_tap_jump()) {
  djumps += 1; 
}

if (attack == AT_FSPECIAL){
	if(!free){
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	}else{
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);	
	}
}

nspecial_pop_timer = 0;
nspecial_pop_can = (comet == noone);

