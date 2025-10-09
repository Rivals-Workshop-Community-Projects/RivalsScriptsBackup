//Player spawned Hitboxes
//print("Stage npc_hit_player")
//print(["Ror Assist 1", "ror_assist" in my_hitboxID])
//print(["Ror Assist 2", "set_on_fire" in my_hitboxID, "set_on_fire" in my_hitboxID && my_hitboxID.set_on_fire])

var _hit_player_obj = hit_player_obj;
if "ror_player_id" in my_hitboxID && instance_exists(_hit_player_obj) {
	//print("Stage npc_hit_player: " + string(my_hitboxID.ror_player_id))
	//print([_hit_player_obj, my_hitboxID.ror_player_id])
	var _hitbox = my_hitboxID;
	//print("set_on_fire" in _hitbox)
	with _hitbox {
		//General
		//ror_player_id.has_hit = true;
		
		//Assist
		//print(["Ror Assist 2", "ror_assist" in self && instance_exists(ror_assist), type]);
		if "ror_assist" in self {
			if (ror_hitbox_type == "physical" && instance_exists(ror_assist)) {
				ror_assist.hitpause += floor(clamp(get_hitstop_formula(get_player_damage(_hit_player_obj.player), damage, hitpause, hitpause_growth, 0), 0, 20));
				//print(["Ror Assist 3", ror_assist.hitpause]);
			} else {
				destroyed = true;
			}
		}
		
		//General Hitbox Stuff
		if "is_atg" in self && is_atg {
			ror_player_id.ror_dont_missile = true;
		}
		
		if "ror_hit_self" in self && ror_hit_self {
			print("Can hitself")
			_hit_player_obj.ror_stage_can_hit_self = true;
		}
		
		
		//Has Hit Stuff'
		
		if (_hit_player_obj.state_cat == SC_HITSTUN) {
			if "set_on_fire" in self && set_on_fire {
				//print("burn please")
				with _hit_player_obj {
					burnt_id = _hitbox.ror_player_id;
					burned = true;
					burn_timer = 0;
				}
			}

			
			//
			//Abyss Teleport
			if (ror_player_id.ror_card_abyss_teleport && _hitbox.ror_hitbox_type == "proj") {
				spawn_hit_fx(ror_player_id.x, ror_player_id.y - ror_player_id.char_height / 2, HFX_ABY_PROJ_HIT);
				ror_player_id.x = _hit_player_obj.x;
				ror_player_id.y = _hit_player_obj.y - (ror_player_id.free ? 8 : 0);
				sound_play(asset_get("sfx_abyss_spawn"));
				spawn_hit_fx(_hit_player_obj.x, _hit_player_obj.y - _hit_player_obj.char_height / 2, HFX_ABY_PROJ_HIT);		
			}
			//Chilled Projectiles
			if _hit_player_obj.state != PS_FROZEN && (ror_player_id.ror_card_chilled_projectiles && _hitbox.ror_hitbox_type == "proj") {
				_hit_player_obj.ror_freeze_stacks = clamp(_hit_player_obj.ror_freeze_stacks + 1, 0, 6);
				sound_play(asset_get("sfx_icehit_weak1"));
			}	

			//Chilled Projectiles
			if _hit_player_obj.state != PS_FROZEN && ("ror_stage_proj_freeze_on_hit" in _hitbox && _hitbox.ror_stage_proj_freeze_on_hit) {
				_hit_player_obj.ror_freeze_stacks = clamp(_hit_player_obj.ror_freeze_stacks + _hitbox.ror_stage_proj_freeze_on_hit, 0, 6);
				sound_play(asset_get("sfx_icehit_weak1"));
			}
			
		
			//Physical Hitboxes (Feels like a gross thing)
			/*
			if _hitbox.ror_hitbox_type != "proj" {
				print(_hit_player_obj.hitstop);
				ror_player_id.hitpause = true;
				ror_player_id.hitstop = _hit_player_obj.hitstop;
			}
			*/
		}
	}
	
	//
	hit_player_obj.ror_stage_hit = my_hitboxID.ror_player_id;
	//hit_player_obj.ror_stage_can_hit_self = my_hitboxID.ror_stage_can_hit_self;
	hit_player_obj.last_player = my_hitboxID.ror_player_id.player;
	//
	

}