//

if (attack == AT_DSPECIAL && hbox_num == 1){
    if (has_hit){
    with(player_id.brick){    
	state = 2;
	state_timer = 0;
	vsp = -8;
	hsp = -4*spr_dir;
    }
    
    destroyed = true;
    }
}