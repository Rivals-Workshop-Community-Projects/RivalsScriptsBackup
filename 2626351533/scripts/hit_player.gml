//Batarang hits, should come back
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    batarang.state_timer = 41;
}

//If the "going back" hitbox hits, creates it again
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
    batarang_hitbox = create_hitbox(AT_NSPECIAL, 3, batarang.x, batarang.y);
}

//If grapple hits, sets the variables
if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		grapple.hsp = 0;
		window_timer = 1;
	    grapple_pull_back = 10;
	    grapple.state_timer = 995;
	    fspecial_hit = true;
	    spawn_hit_fx( grapple.x+20*spr_dir, grapple.y-30, 305);  
	}
	if (my_hitboxID.hbox_num == 2){
		grapple.hsp = 0;
		grapple.vsp = 0;
		window_timer = 1;
	    grapple_pull_up = 10;
	    grapple.state_timer = 995;
	    fspecial_hit = true;
	    spawn_hit_fx( grapple.x+20*spr_dir, grapple.y-30, 305);  
	}
	move_cooldown[AT_FSPECIAL] = 75;
}

//DSpecial hit on self, puts airdodge on cooldown
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    self_mine_cooldown = get_player_damage(player)/2.5;
    self_mine_cooldown_aux = self_mine_cooldown;
}

//DStrong hitpause
if (my_hitboxID.attack == AT_DSTRONG){
	if (flash_stun > 20){
		hit_player_obj.hitstop = flash_stun;
	}
	else {
		hit_player_obj.hitstop = 20;
	}
    
}

/*
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	if (hit_player_obj = my_hitboxID.player_id){
		mine_myself = true;
	}
}