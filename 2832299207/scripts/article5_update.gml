//article5_update.gml
state_timer++

switch state {
	//looking down sad
	case PS_IDLE:
	if image_index > 0 {
		if state_timer mod 8 == 0 {
			image_index--
		}
	}
	if player_id.in_trigger_range || is_aether_stage() {
		state = PS_CROUCH
		state_timer = 0
	}
	break;
	
	//looking up when about to challenge
	case PS_CROUCH:
	if image_index < 2 {
		if state_timer mod 8 == 0 {
			image_index++
		}
	}
	if !player_id.in_trigger_range && !is_aether_stage() {
		state = PS_IDLE
		state_timer = 0
	}
	
	//sisters of battle stand up
	if is_aether_stage() && mantis_num != 1 && player_id.mantis_attacking_array[0] == 2 && player_id.pause_attack == 400 {
		state = PS_WALK
		state_timer = 0
		dosa_mode = true
	}
	break;
	
	//[stands up agressively]
	case PS_WALK:
	sprite_index = sprite_get("mantis_idle")
	if image_index < 4 {
		if state_timer mod 5 == 0 {
			image_index++
		}
	}
	if state_timer == 1 {
		sound_play(sound_get("hero_jump"))
	}
	
	if is_aether_stage() && mantis_num != 1 && state_timer = 60 {
		with obj_stage_article if get_article_script(id) == 5 && mantis_num == 1 && !dosa_mode {
			state = PS_WALK
			state_timer = 0
			dosa_mode = true
			music_stop()
		}
		player_id.mantis_attacking_array[0] = 0
		state = PS_WALK_TURN
		state_timer = 0
	}
	
	//1 mantis dead, prepare for other 2 to jump off
	if !is_aether_stage() && mantis_num != 1 && player_id.mantis_attacking_array[0] == 2 && player_id.pause_attack == 60 {
		state = PS_JUMPSQUAT
		state_timer = 0
	}
	
	//activate ultra instinct
	if mantis_num == 1 && dosa_mode && state_timer == 90 {
		state = PS_RESPAWN
		state_timer = 0
	}
	break;
	
	//turn to face middle
	case PS_WALK_TURN:
	sprite_index = sprite_get("mantis_turn")
	
	//activate ultra instinct
	if mantis_num != 1 && dosa_mode && state_timer == 90 {
		state = PS_RESPAWN
		state_timer = 0
	}
	break;
	
	//DOSA
	case PS_RESPAWN:
	sprite_index = sprite_get("mantis_dosa")
	if state_timer == 1 {
		sound_play(sound_get("mantis_land_ground"))
	}
	if state_timer < 10 {
		image_index = clamp(floor(state_timer/5), 0, 1)
	} else if state_timer == 90 {
		image_index = 2
		if mantis_num == 1 {
			sound_play(sound_get("mantis_dosa"))
			music_play_file("sisters_of_battle")
			sound_play(sound_get("hero_damage"))
			shake_camera(12, 6)
			player_id.dosa_mode = true
			player_id.mantis_attacking_array = [0,0,0]
			player_id.mantis_damage_array = [0,0,0]
		}
	} else if state_timer == 96 {
		if mantis_num == 1 shake_camera(6, 40)
	} else if state_timer == 200 {
		state = PS_JUMPSQUAT
		state_timer = 0
	}
	break;
	
	//about to jump off throne
	case PS_JUMPSQUAT:
	sprite_index = sprite_get("mantis_idle")
	image_index = 5
	
	if state_timer == 6 {
		state = PS_FIRST_JUMP
		state_timer = 0
		sound_play(sound_get("mantis_jump_ground"))
	}
	
	break;
	
	//jump off throne
	case PS_FIRST_JUMP:
	image_index = 6
	y -= 40
	x += 10*spr_dir
	if state_timer == 10 {
		state = PS_AIR_DODGE
		state_timer = 0
	}
	break;
	
	//invisible
	case PS_AIR_DODGE:
	image_index = 7
	break;
	
	//hurt on throne
	case PS_DEAD:
	sprite_index = sprite_get("mantis_wounded")
	image_index = clamp(floor(state_timer/5), 0, 3)
	x = orig_x
	y = orig_y
	if state_timer == 10 {
		sound_play(sound_get("mantis_land_ground"))
	}
	break;
	
	//bow
	case PS_LAND:
	sprite_index = sprite_get("mantis_bow")
	var standtime = 100
	if state_timer == 1 {
		sound_play(sound_get("hero_jump"))
	}
	if state_timer < standtime image_index = clamp(floor(state_timer/6), 0, 1)
	else image_index = 2+clamp(floor((state_timer-standtime)/7), 0, 3)
	break;
}

