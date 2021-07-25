if (my_hitboxID.attack == AT_FTILT){
	if (my_hitboxID.hbox_num == 2){
		//sound_play(sound_get("crit"));
	}
}

if (hit_player_obj.omori_debuff == true && should_use_up_debuff){
	
	//account for multihits
	if (my_hitboxID.hbox_group == -1 && my_hitboxID.type == 1 && rband_multihit){
		//do nothing lol
	}
	else{
		hit_player_obj.omori_debuff_timer = 1;
		should_play = 1;
	}
	
}

if (my_hitboxID.attack == AT_FSPECIAL && hit_player_obj.omori_debuff == false && hit_player_obj.player != player){
    var stat_down_sfx = sound_get("statdown");
    with (hit_player_obj){
	    sound_play(stat_down_sfx);
    }
    hit_player_obj.omori_debuff = true;
    hit_player_obj.omori_debuff_id = id;
    hit_player_obj.omori_debuff_timer = 200;
}

if (my_hitboxID.attack == AT_FSTRONG){
	sound_play(sound_get("aubreyhit"));
}

if (my_hitboxID.attack == AT_USTRONG){
	sound_play(sound_get("kelattackcut"));
    has_hit = true;
    has_hit_player = true;
}

if (my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.hbox_num == 1){
		sound_play(sound_get("heroattackcut"));
	}
}

var dair_vsp = -6;

if (my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num == 1){
		if (old_vsp > dair_vsp){
			old_vsp = dair_vsp;
		}
	}
}

if (my_hitboxID.attack == AT_DSPECIAL){
	vsp_thing = 0;
	set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 0);
	window = 6;
	window_timer = 1;
	old_vsp = hit_player_obj.old_vsp;
	old_hsp = hit_player_obj.old_hsp;
}