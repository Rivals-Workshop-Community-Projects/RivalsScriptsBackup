//
if (free) {
	vsp = 12;
	//touched_ground = false;
}

if (!free && !touched_ground) {
	y += 12;
	free = true;
	if (place_meeting(x, y + vsp, asset_get("par_block"))) {
		free = false;
		touched_ground = true;
		vsp = 0;
		sound_play(asset_get("sfx_blow_weak1"));
		spawn_hit_fx(x, y, 301);
	}
}

//Brook Anim
if object_type == "exit" {
	var _anim_speed = obj_stage_main.ror_ssl_visuals ? 16 : 8;
	image_index =  (get_gameplay_time() / _anim_speed) % _anim_speed;
	//print(["Image Index", get_gameplay_time(), image_index]);
}

//Objects
var _touching_player = false;
with oPlayer {
	if place_meeting(x, y, other) {
		_touching_player = true;
		if ("ror_print_timer" in self && state == PS_CROUCH && !taunt_down) {
			if (ror_print_timer) {
				ror_print_timer--;
			} else {
				switch(other.object_type) {
					case "printer":						
						//
						if (can_print(other.card_info))  {
							ror_print_item = other.card_info;
							spawn_hit_fx(other.x - 22, other.y - 40, 301);
							sound_play(asset_get("sfx_buzzsaw_hit"));
						} else {
							sound_play(sound_get("error sound"));
						}
					break;
					case "scrapper":
						var _scrap = false;
						ror_scrap_pos = 0;
						ror_scrap_draw_pos = 0;
						ror_scrap_draw_array = [];
						ror_scrapper_id = other;
						for (var i = 0; i < array_length(ror_items); i++) {
							var _name = ror_items[i].name;
							//Items that can't be scrapped
							if !("can_scrap" in ror_items[i] && !ror_items[i].can_scrap) {
								_scrap = true;
								//ror_scrap_pos = i;
								//i = array_length(ror_items);
								//
								var _push_value = [ror_items[i], i, 1];
								while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _name) {
									i++;
									_push_value[2]++;
								}
								array_push(ror_scrap_draw_array, _push_value);
							}
						}
						if (_scrap)  {
							ror_scrap_pos = 0//ror_scrap_draw_array[0, 1]
							ror_scrapper_mode = true;
						} else {
							sound_play(sound_get("error sound"));
						}
					break;
					case "exit":
						bazaar_ready = true;
						sound_play(asset_get("mfx_confirm"));
					break;
				}
				//print(ror_print_item);
				ror_print_timer = ror_print_timer_max;
			}
		}
	}
}
should_draw_cards = _touching_player;
if object_type == "exit" {
	obj_stage_main.ror_show_brook_info = should_draw_cards;
}

if (scrapper_play_sfx) {
	spawn_hit_fx(x, y - 40, 301);
	sound_play(asset_get("sfx_buzzsaw_hit"));
	scrapper_play_sfx = false;
}

//Kill
if !(obj_stage_main.round_state == "alive" || obj_stage_main.round_state == "break_round") {
	if (death_offset) {
		death_offset--
	} else {
		spawn_hit_fx(x, y, HFX_SHO_GEAR_BREAK);
		sound_play(asset_get("sfx_abyss_hazard_burst"));
		instance_destroy(self);
	}
}

#define can_print(_item) {
	var _rarity = _item.rarity 
	var _name = _item.name 
	var _removable_items = [];
	var _force_luck = -4;
	var _max_item_count = 0;
	for (var i = 0; i < array_length(ror_items); i++) {
		if (ror_items[i].name != _name && ror_items[i].rarity == _rarity) {	
			//Skip List
			if !("printer_safe" in ror_items[i] && !ror_items[i].printer_safe) {
				array_push(_removable_items, [ror_items[i], i]);
			} 	
			//Prioritize Crazy Luck
			if (
				ror_items[i].name == "Crazy Luck" ||
				ror_items[i].name == "Crazy Luck+" ||
				ror_items[i].name == "Crazy Luck++" ||
				ror_items[i].name == "Crazy Luck+++"
			) {
				_force_luck = array_length(_removable_items) - 1;
			}
		}
		//Cannot go over Max
		if (ror_items[i].name == _name) {
			_max_item_count++
		}
	}
	if (array_length(_removable_items) && (_max_item_count < _item.max || obj_stage_main.no_limits || ror_limitless_max)) && !(_max_item_count >= _item.max && (_item.name == "Miss-tery Bag" || _item.name == "Jolly Festivities")) {
		return true;
	}
	return false;
}

