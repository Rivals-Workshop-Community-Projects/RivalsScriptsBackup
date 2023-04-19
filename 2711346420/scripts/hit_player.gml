//hit_player.gml

if (my_hitboxID.attack == AT_JAB) {
	if (window == 2){
		sound_play(sfx_monkey_ball_2_fight_blow_2);
	} else {
		sound_play(sfx_monkey_ball_2_fight_blow);
	}
}

if (my_hitboxID.attack == AT_UTILT) {
	sound_play(sfx_monkey_ball_2_fight_blow);
}

if (my_hitboxID.attack == AT_DATTACK) {
	if (my_hitboxID.hbox_num == 1){
		dattack_strong_hit = true;
		if (spr_dir == 1){
			spawn_hit_fx(hit_player_obj.x+2,hit_player_obj.y-20,303)
		} else if (spr_dir == -1){
			spawn_hit_fx(hit_player_obj.x+2,hit_player_obj.y-20,303)
		}
		
	}
}

if (my_hitboxID.attack == AT_FAIR) {
	if (my_hitboxID.hbox_num == 1){
		spawn_hit_fx(hit_player_obj.x+(5*hit_player_obj.spr_dir),y-24,303)
	}
}

if (my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR) {
	if (my_hitboxID.hbox_num == 1){
		sound_play(sfx_monkey_ball_2_fight_blow);
	} else {
		sound_play(sfx_monkey_ball_2_fight_blow_2);
	}
}

if (my_hitboxID.attack == AT_UAIR) {
	//spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-10,301)
}

if (my_hitboxID.attack == AT_FSTRONG) {
	if (my_hitboxID.hbox_num == 1){
		sound_play(sfx_monkey_ball_2_fight_blow);
	}
}

if (my_hitboxID.attack == AT_DSTRONG) {
	if (my_hitboxID.hbox_num == 1){
		spawn_hit_fx(hit_player_obj.x+(18*spr_dir),hit_player_obj.y-24,303)
	}
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	old_vsp = -5;
	old_hsp = 3 * spr_dir;
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1){//why is this check here even though there is only one hitbox on the move? idk Lol!
		if (spr_dir == 1){
			hsp *= 0.5*-spr_dir;
		} else {
			hsp *= 0.5*spr_dir;
		}
		if (inside_monkey_ball){
			sound_play(sfx_monkey_ball_2_ball_bounce);
			current_monkeyball_spr = sprite_get("monkey_ball")
			current_monkeyball_front_spr = sprite_get("monkey_ball_front")
			monkey_ball_tilt_counter = 15*spr_dir
			monkey_ball_tilt = monkey_ball_tilt + ((10 * monkey_ball_tilt_counter) * monkey_ball_spin_mult)
		}
		window = 4;
		window_timer = 0;
		vsp *= 1.05;
		old_hsp = hsp;
		old_vsp = vsp;
		destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_USPECIAL && inside_monkey_ball) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		sound_play(sfx_monkey_ball_2_ball_bounce);
	} else {
		//sound_play(sfx_monkey_ball_2_fight_blow_2);
	}
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        with (obj_article1){
            if (player_id == other.id){
                if (place_meeting(x, y, other.my_hitboxID)){
                    should_destroy_hitbox = true;
					monkey_ball_hit_cooldown = 45;
                    hsp = hsp*-.35;
					if (vsp > 0){
						//vsp = vsp*-.6;
						vsp = vsp*-.35;
					} else if (vsp < 0){//>
						vsp = vsp*-.35;
					}
					/*
                    if (abs(hsp) < 2 && vsp < -2){
                        vsp = vsp*-.5;
                    }
					*/
                }
            }
        }
    }
}