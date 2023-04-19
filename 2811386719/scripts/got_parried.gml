//haha

hit_player_obj.static_pull = 0
static = 0;

if(my_hitboxID.attack == AT_EXTRA_1 and my_hitboxID.hbox_num == 1){
  set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 7);
  set_window_value(AT_EXTRA_1, 5, AG_WINDOW_GOTO, 29);
  has_walljump = false;
	clinging = false;
	do_not_cling = true;
	can_cling = false;
}

if(my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num >= 3){
	hsp *= 1.2
	my_hitboxID.hitstun_factor = clamp(my_hitboxID.hitstun_factor + 0.3, 0, 1.5)
	my_hitboxID.dumb_di_mult = 0.01
}

if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num == 1){
	// print("sads")
	was_parried = true
}

if("bubble" in my_hitboxID and my_hitboxID.bubble){
  my_hitboxID.follow_owner = true;
  // my_hitboxID.hsp *= -1;
  my_hitboxID.hitbox_timer = 0;
}