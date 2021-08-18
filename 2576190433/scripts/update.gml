if !has_gotten_players && get_gameplay_time() > 2{
	has_gotten_players = true;
	var nums_list = [];
	with oPlayer{
		array_push(nums_list, player);
	}
	array_sort(nums_list, true);
	if array_length(nums_list) > 1 with oPlayer{
		if player == nums_list[0]{
			other.night_player = self;
		}
		else if player == nums_list[array_length(nums_list) - 1]{
			other.day_player = self;
		}
	}
}

if day_player != noone{
	
	if night_player.state_cat == SC_HITSTUN && night_player.hitpause{
		growing_dir = -1;
	}
	if day_player.state_cat == SC_HITSTUN && day_player.hitpause{
		growing_dir = 1;
	}
	barrier_pos += growing_dir * 0.1;
	barrier_pos = clamp(barrier_pos, left_limit, right_limit);
	
	if is_aether_stage(){
		if barrier_pos == left_limit && try_to_kill(night_player, -1){
			barrier_pos = (right_limit + left_limit) / 2;
			growing_dir = 0;
		}
		if barrier_pos == right_limit && try_to_kill(day_player, 1){
			barrier_pos = (right_limit + left_limit) / 2;
			growing_dir = 0;
		}
	}
	
	if get_match_setting(SET_PRACTICE){
		var reset = false;
		with oPlayer if state == PS_RESPAWN && taunt_down{
			reset = true;
		}
		if reset{
			barrier_pos = (right_limit + left_limit) / 2;
			growing_dir = 0;
		}
	}
}

if side_invert_timer side_invert_timer--;

#define try_to_kill(p_id, dir)

if p_id.state == PS_RESPAWN || !p_id.visible return false;

p_id.x = 3000 * dir;
return true;