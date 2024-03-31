//article1_update.gml
suppress_stage_music();

if(transfer){
	dissipate = true;
	if(bell_anim_time < 20 && bell_anim_time > 10){
		bell_state_timer += 14*bell_anim_speed;
	}
	if(consume){
		tolls = 3;
	}
	else{
		tolls = 2;
	}
	bellmute = true;
	transfer = false;
}

anim_time = state_timer/anim_speed;
bell_anim_time = bell_state_timer/bell_anim_speed;
symbol_anim_time = symbol_state_timer/symbol_anim_speed;
energy_anim_time = energy_state_timer/energy_anim_speed;

//check if sprites have reached the end of their animations
if(!end_flag){
	end_ring_anim();
}
if(!bell_end_flag){
	end_bell_anim();
}
if(!symbol_end_flag){
	end_symbol_anim();
}
if(!energy_end_flag){
	end_energy_anim();
}

//destroy article if all animations have finished
if(end_flag && bell_end_flag && symbol_end_flag){
    instance_destroy();
    exit;
}

if(anim_time > start_window && !dissipate){
	state_timer = animation_manager(start_window, loop_window, anim_speed, state_timer);
}
if(bell_anim_time > bell_start_window && tolls < 2){
	bell_state_timer = animation_manager(bell_start_window, bell_loop_window, bell_anim_speed, bell_state_timer);
}
if(symbol_anim_time > symbol_start_window && !dissipate){
	symbol_state_timer = animation_manager(symbol_start_window, symbol_loop_window, symbol_anim_speed, symbol_state_timer);
}
if(energy_anim_time > energy_start_window && !dissipate){
	energy_state_timer = animation_manager(energy_start_window, energy_loop_window, energy_anim_speed, energy_state_timer);
}

//play toll sound on given frame
if((bell_anim_time < toll_frame && bell_anim_time + 1/anim_speed > toll_frame || 
	bell_anim_time < toll_end_frame && bell_anim_time + 1/anim_speed > toll_end_frame) && !bellmute){
	sound_play(sound_get("bell"));
	tolls++;
}

store_level = min(2, floor(kb_store_total/21));

if(tolls == 3){
	sound_play(asset_get("sfx_boss_charge"));
	tolls++; //make sure this only happens once
	dissipate = true;
	player_id.dissipate_flag = true;
	
	//split up motes proportially among hit players
	allocated = 0; //number of motes allocated already
	ind = 0;
	for(ind = 0 ind < max_players; ++ind){
		mote_alloc = (kb_store[ind]/kb_store_total) * player_id.num_motes; //percentage of total kb = percentage of motes to assign to player
		with(player_id){
			for(var j = other.allocated; j < other.allocated + other.mote_alloc; ++j){
				if(mote_list[j] != 0){
					//assign target to knell if consuming otherwise target is player currently being indexed
					if(other.consume){
						mote_list[@j][@4] = player;
					}
					else{
						mote_list[@j][@4] = other.ind + 1;
					}
					//save current coordinates in speed vector. this vector is now used as the start pos in an easing function in update.gml
					mote_list[@j][@3][@0] = mote_list[@j][@1]; 
					mote_list[@j][@3][@1] = mote_list[@j][@2];
					mote_list[@j][@0] = MOTE_CHARGE;
				}
			}
		}
		allocated += mote_alloc;
	}
}

image_index = anim_time;
state_timer++;
bell_state_timer++;
symbol_state_timer++;
energy_state_timer++;

#define end_ring_anim(){
	if(anim_time >= sprite_get_number(sprite_index)){
		sprite_index = noone;
		end_flag = true;
	}
}
#define end_bell_anim(){
	if(bell_anim_time >= sprite_get_number(bell_spr)){
		bell_end_flag = true;
	}
}
#define end_symbol_anim(){
	if(symbol_anim_time >= sprite_get_number(symbol_spr)){
		symbol_end_flag = true;
	}
}
#define end_energy_anim(){
	if(energy_anim_time >= sprite_get_number(sprite_get("energyball_small_top"))){
		energy_end_flag = true;;
	}
}
#define animation_manager(s_window, l_window, a_speed, s_timer){
	return max(s_window * a_speed, s_timer % (((s_window + l_window) * a_speed)-1));
}