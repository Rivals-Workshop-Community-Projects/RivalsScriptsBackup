// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (free && attack==AT_USTRONG && window == 1) {
	set_state(PS_IDLE_AIR);
}

if (attack==AT_FAIR && window == 1 && window_timer == 14) {
	sound_play( sound_get( "SWB1" ) );
}

if (attack==AT_FAIR && window == 2) {
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
}

if (attack==AT_FAIR&&window==1&&window_timer==1) {
	reset_attack_value(AT_FAIR, AG_LANDING_LAG);
}
if (attack==AT_FAIR&&window==3&&window_timer==9) {
	reset_attack_value(AT_FAIR, AG_LANDING_LAG);
}

if (attack==AT_UAIR&&window==1&&window_timer==1) {
	reset_attack_value(AT_UAIR, AG_LANDING_LAG);
}
if (attack==AT_UAIR && has_hit_player) {
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
}

if (attack==AT_BAIR && window == 1 && window_timer == 10) {
	sound_play( sound_get( "SWFS5" ) );
}

if (attack==AT_USTRONG && free) {
	can_fast_fall = false;
}

if (attack==AT_USTRONG && window > 2 && !free &&!has_hit_player && !was_parried) {
    state=PS_LANDING_LAG;
	state_timer=0;
}

if (attack==AT_JAB && window == 11 && !was_parried){
    iasa_script();
}

/*
if (attack==AT_DATTACK && shield_pressed && window <= 2) {
	window = 5;
}
*/
if (attack==AT_DATTACK && window == 4 && window_timer == 1 && has_hit_player && !was_parried) {
	window = 5;
}

if (attack==AT_DTILT && window == 4 && has_hit_player && !was_parried) {
    iasa_script();
}

if (attack==AT_DATTACK && window == 5 && window_timer >= 10 && !shield_pressed && !was_parried) {
    iasa_script();
	if (!has_hit_player){
		move_cooldown[AT_DATTACK]=3;
	}
}

if (attack==AT_FTILT && window == 6 && window_timer >= 5 && !was_parried) {
	iasa_script();
	move_cooldown[AT_FTILT]=3;
}

if (attack==AT_BAIR && window == 5 && !was_parried) {
	iasa_script();
}

if (attack==AT_TAUNT && window == 1 && window_timer == 1) {
	sound_play( sound_get("scoptool_2") );
}




// new Ao code below

if (attack==AT_USTRONG){
	if (window==2){
		if(window_timer==8){
			spawn_dust_fx( x, y+8, sprite_get("starcircle_1x"), 16 );
			sound_play(sound_get("wind5"),false,-4,1,1.5);
		}
	}
}
	
if (attack==AT_DSPECIAL){
	can_fast_fall = false;
	if (window==2){
		if (window_timer==1){
			spawn_dust_fx( x, y-12, sprite_get("starcircle_1x"), 16 );
		}
		if (dsp_free){
			vsp=16//13
		}else{
			vsp=-16
		}
	}
	if (window==3&&window_timer==1){
		if (!dsp_free){
			vsp=-6
		}
	}
	if (window>1&&window!=4&&window_timer!=1){
		if (!free){
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
			window = 4;
			window_timer = 0;
		}
	}
}


if (attack==AT_USPECIAL){
	can_fast_fall = false;
	if (window==1&&window_timer==4){
		if ((spr_dir==1 && right_hard_pressed) || (spr_dir==-1 && left_hard_pressed)){
			usp_d_able = true;
		}
	}
	if (window==1&&window_timer==15){
		if (usp_d_able){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
				window = 7;
				window_timer = 0;
				usp_d_done = true;
		}
	}
	if (window==1||window==2||window==3){
		can_move = false;
		hsp = clamp(hsp+(right_down-left_down)*0.5, -1, 1)
	}
	if (window==3&&window_timer==12){
		hsp = clamp(hsp+(right_down-left_down)*3, -2.5+(spr_dir/3), 2.5+(spr_dir/3))
		//vsp = vsp/1.5
	}
	if (window==4){
		can_move = false;
		hsp = clamp(hsp, -3.5+(spr_dir/2), 3.5+(spr_dir/2))
		vsp = clamp(vsp, -16, 16)
		if (!hitpause){
			create_hitbox( AT_USPECIAL, 4, x, y )
		}
	}
	if (window==3||window==4){
		can_wall_jump = true;
	}
	if (window==5&&window_timer==1){
		shake_camera(6,3)
	}
}

if (attack==AT_NSPECIAL){
	if (window==1&&window_timer==6){
		switch (nsp_level){
			case 0: sound_play(sound_get("wind1")); break;
			case 1: sound_play(sound_get("wind2")); break;
			case 2: sound_play(sound_get("wind3")); break;
			case 3: sound_play(sound_get("wind4")); break;
			case 4: sound_play(sound_get("wind5")); break;
			
			default: break;
		}
	}
	if (window==1&&window_timer==12){
		nsp_time = nsp_t_max;
		nsp_a_time = nsp_a_t_max;
	}
	if (nsp_time>0&&!hitpause){
		hsp = ease_linear( 0, 10, nsp_time, nsp_t_max )*spr_dir
		nsp_time--;
	}
	if (nsp_a_time>0){
		nsp_a_time--;
	}
	var tmp_v = 0.5 + (nsp_level*1.5);
	if (window==2||window==3||window==4){
		vsp = clamp(vsp, tmp_v*-1, tmp_v)
		
	}
	if (window==5){
		if (nsp_level<4){
			if (special_pressed){
				window=1;
				window_timer=0;
				spr_dir=(left_down)?-1:(right_down)?1:spr_dir
				nsp_level++;
				attack_end()
				has_hit_player = false;
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6+(0.1*nsp_level));
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6+(0.1*nsp_level));
			}
		}
		vsp = clamp(vsp, (tmp_v+2)*-1, tmp_v+2)
	}
	if (window>=5){
		if (!was_parried){
			if (has_hit_player){
				can_jump=true;
			}
		}
	}
	if (window<6){
		can_move = false;
	}
}














