//codec update

var trigger_trum_codec = false;

with pit_codec_handler{
 
	switch(state){
		case 0: // Closed
			scale = 0;
			page = 0;
			breather = 0;
			player_id.pit_codec_active = false;
			break;
		case 1: // Opening
			player_id.pit_codec_active = true;
			var s_t_max = 6;
			scale = ease_quartOut(3, 10, state_timer, s_t_max) / 10;
 
			if (state_timer == 1){
				with player_id sound_play(sfx_pho_open1);
				stored_text = file.pages[page].text;
				//if "player_object" in file file.player_object.trummel_id = player_id;
				delay_time = 0;
			}
 
			if (state_timer == s_t_max) setState(2);
			break;
		case 2: // Page writing
			scale = 1;
 
			if (state_timer == 1){
				stored_text = file.pages[page].text;
				with player_id sound_play(sfx_cdc_chatter_skip);
				
				//start of page sfx
				if state {
					var cur_pg = file.pages[page];
					var cur_sp = speakers[cur_pg.speaker];
					with player_id if cur_pg.sfx >= 0 sound_play(cur_sp.sfx[cur_pg.sfx])
					//print(string(cur_pg))
				}
				//print(cur_pg)
				//var cur_sp = speakers[cur_pg.speaker];
				//sound_play(cur_sp.sfx[cur_pg.sfx])
			}
 
			var chatter_time = 2;
			var startup_time = 8;
 
			if (string_length(stored_text) >= string_length(file.pages[page].text)){
				setState(3);
			}
			break;
		case 3: // Page finished
			delay_time = 90;
			var s_t_max = 300;
			breather = 0;
			
			//we need to make the woag snail talk faster
			if state_timer == delay_time && player_id.trummel_id != undefined && instance_exists(player_id.trummel_id) {
				with player_id.trummel_id {
					codec_handler.state_timer = 290;
				}
			}
			
			//funni woag snail
			if state_timer == delay_time && player_id.pit_codec_active && !player_id.trum_codec_active {
				var cur_pg = file.pages[page];
				var cur_sp = speakers[cur_pg.speaker];
				
				if player_id.trummel_id != undefined && instance_exists(player_id.trummel_id) with player_id.trummel_id {
					if other.page == 1 {
						
						//start of trummel codec loading, ripped straight from trum code
						with codec_handler{
							active_codecs = [];
							with oPlayer if id != other.player_id{
								if ("trummel_codecs" in self) for (var checked = 0; checked < array_length(trummel_codecs); checked++){
									with other{
										initActiveCodec(other.trummel_codecs[checked], other, 0);
									}
								}
							}
							if array_equals(active_codecs, []) && !other.phone.state{
								array_push(active_codecs, codecs[0]);
							}
							state = 1;
							state_timer = 0;
							file = active_codecs[0];
						}
						//end of trummel codec loading
					}
				}
			}
			
			//Ruber: maybe add practice mode check for manual skipping of page
			if (state_timer > s_t_max) { // remove the "&& !player_id.phone.state" if you have no munophone
				
				setState(2);
				page++;
				stored_text = "";
				if (page == array_length_1d(file.pages)){
					setState(4);
					page--;
				}
			}
			break;
		case 4: // Closing
		
			if player_id.trummel_id != undefined && instance_exists(player_id.trummel_id) with player_id.trummel_id {
				if codec_handler.state && codec_handler.state != 4 {
					codec_handler.state = 4;
					codec_handler.state_timer = 0;
				}
			}
			
			var s_t_max = 6;
			scale = ease_quartOut(10, 3, state_timer, s_t_max) / 10;
 
			if (state_timer == 1){
				with player_id sound_play(sfx_pho_close2);
			}
 
			if (state_timer == s_t_max) setState(0);
			break;
	}
 
	active = state == clamp(state, 2, 3);
 
	state_timer++;
}
 
if (state == PS_ATTACK_GROUND && (attack == AT_TAUNT || attack == AT_TAUNT_2)) || force_codec { // replace phone_attacking w/ atk state checks if no munophone
	// cancel the codec
	if (window == 1 && window_timer == 5) {
		if pit_codec_handler.state{
			with pit_codec_handler{
				setState(4);
			}
		}
	}
 
	// access the codec by pressing down + taunt
	if (attack == AT_TAUNT_2 && window == 3 && window_timer == 1) || force_codec {
		force_codec = false;
		if trummel_id != undefined && !trum_codec_active { //trummel specific codec code
			codec_triggered = 'Pit';
			user_event(1)
			user_event(5)
			codec_triggered = undefined;
		}
		
		loadEnemyCodecs();
		if (array_length_1d(pit_codec_handler.active_codecs)){
			with pit_codec_handler{
				setState(1);
				file = active_codecs[0];
			}
		}
	}
}
 
 
 
if load_codecs {
	loadEnemyCodecs();
	load_codecs = false;
}

#define loadEnemyCodecs()

with pit_codec_handler{
	
	active_codecs = [];
	
	var name = "";
	
	with oPlayer if id != other.player_id{
		var url2 = string_digits(string(url));
		var found = false;
		var loaded = 0;
		name = get_char_info(player, INFO_STR_NAME)
		
		// Check for Pit-side codecs
		for (var i = 0; i < array_length_1d(other.pit_codecs) && !found; i++){
			if (other.pit_codecs[i].url == url2) && other.pit_codecs[i].url != noone{
				found = true;
				loaded = i;
			}
		}
		
		// Load Pit-side codecs
		if found {
			with other {
				initActiveCodec(pit_codecs[loaded], other, 1);
			}
		}
		
		
		// Check for external codecs
		if ("pit_codecs" in self) for (var checked = 0; checked < array_length(pit_codecs); checked++){
			with other{
				initActiveCodec(other.pit_codecs[checked], other, 0);
			}
		}
	}
	/*
	with obj_stage_main{
		// Check for external codecs
		if ("trummel_codecs" in self) for (var checked = 0; checked < array_length(trummel_codecs); checked++){
			with other{
				initActiveCodec(other.trummel_codecs[checked], other, 0);
			}
		}
	}
	*/
	
	//if array_equals(active_codecs, []) && !other.phone.state{
	if array_equals(active_codecs, []){
		array_push(active_codecs, pit_codecs[0]);
	}
}



#define initActiveCodec(target, owner, local) // Add a codec LWO to the active codec array

array_push(active_codecs, target);
active_codecs[array_length_1d(active_codecs) - 1].player_object = owner;
var nam = "";
with owner{
	if "muno_char_name" in self nam = muno_char_name;
	else nam = get_char_info(player, INFO_STR_NAME);
}
active_codecs[array_length_1d(active_codecs) - 1].name = nam + (local ? "
	  (Local)" : "");
	 
	 

#define setState(n_s)

state = n_s;
state_timer = 0;