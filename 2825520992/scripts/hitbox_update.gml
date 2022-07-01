/*
if attack == AT_NSPECIAL {
	if(hbox_num == 1){
		//Thrown
		if hitbox_timer == length hitbox_timer--;
		if(state == 0){
			if(!free || place_meeting(x,y,asset_get("par_block"))){
				state = 1;
				state_timer = 0;
			}
			proj_angle -= (hsp / 4);
		}
		//Just Landed
		if(state == 1){
			hsp = 0;vsp = 0;grav = 0;
			proj_angle = 0;
			if(place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
				sprite_index = sprite_get("spear_pin_start_wall");
			}else if(!place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
				sprite_index = sprite_get("spear_pin_start_ground");
			}
			if(state_timer == 1){
				sound_play(sound_get("sfx_spear_pin"));
			}
			if(state_timer == 8){
				state = 2;
				state_timer = 0;
			}
			destroy_hitboxes();
		}
		//Idle
		if(state == 2){
			if(place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
				sprite_index = sprite_get("spear_pin_idle_wall");
			}else if(!place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
				sprite_index = sprite_get("spear_pin_idle_ground");
			}
			for (var i = 0; i <= 4; i++) can_hit[i] = false;
			if((player_id.attack == AT_DSPECIAL || player_id.attack == AT_DSPECIAL_AIR) && (player_id.state == PS_ATTACK_AIR && player_id.window == 5 || player_id.state == PS_ATTACK_GROUND && 
			(player_id.attack == AT_DSPECIAL && player_id.window == 3 && player_id.window_timer == 6 || player_id.attack == AT_DSPECIAL_AIR && player_id.window == 5))){
				destroyed = true;
				spear_is_spinning = true;
				create_hitbox(AT_NSPECIAL, 2, floor(x), floor(y));
			}
			if(place_meeting(x,y,oPlayer) && place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
				with oPlayer if place_meeting(x, y, other) && free{
					if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
						vsp = -12;
					    if(other.player_id.state == PS_AIR_DODGE){
					    	other.player_id.has_airdodge = false;
					    }
						set_state(PS_IDLE_AIR);
						invincible = false;
						other.player_id.hurtboxID.dodging = false;
						other.player_id.hurtboxID.sprite_index = sprite_get("bd_hurtbox");
					    other.destroyed = true;
			    		sound_play(asset_get("sfx_blow_medium3"));
					}
				}
			}		
		}
		if(free && place_meeting(x,y-4,asset_get("par_block"))){
			x -= 5 * spr_dir;
		}
		if (y >= (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))) {
			destroyed = true;
		}
		var team_attack = get_match_setting(SET_TEAMATTACK);
		with (asset_get("pHitBox")){
    		if (place_meeting(x,y,other.id)){
    			if(damage > 0 && kb_value > 0 && hit_priority > 0 && other.player_id != player_id)
    			&& (get_player_team(other.player) != get_player_team(player) || team_attack){
    				other.destroyed = true;
    			}
    		}
		}
		if (place_meeting(x, y, asset_get("plasma_field_obj"))){
			destroyed = true;
		}
		if(destroyed){
			player_id.spear_count -= 1;
			if(!spear_is_spinning){
				if(place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
					var breakfx = spawn_hit_fx(x,y,player_id.fx_wall_spear_break);breakfx.spr_dir = spr_dir;
				}else if(!place_meeting(x + 12 *spr_dir,y-8,asset_get("par_block"))){
					var breakfx = spawn_hit_fx(x,y,player_id.fx_ground_spear_break);breakfx.spr_dir = spr_dir;
				}
				sound_play(asset_get("sfx_blow_medium3"))
			}
		}
		state_timer++;
		//platform/stage edge corrections Credit to RuberCuber
		/*
		var spearLeft = x - (24);
		var spearRight = x + (24);
		var spearY = y+20;
		if(place_meeting(x,spearY,asset_get("par_block"))){
		    var leftPos = position_meeting(spearLeft, spearY, asset_get("par_block"));
		    var rightPos = position_meeting(spearRight, spearY, asset_get("par_block"));
		    
		    if !leftPos {
		        x += 5;
		    } else if !rightPos {
		        x -= 5;
		    }			
		}
		/
    }
	if(hbox_num == 2){
		spear_is_spinning = true;
		if(hitbox_timer == 1){
			sound_play(asset_get("sfx_swipe_heavy1"));
		}
		if(hitbox_timer % 5 == 0){
			if(random_func(0, 2, true) == 1){
				sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.8);
			}else{
				sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.8);
			}
		}
		if(hitbox_timer == 59){
			destroyed = true;
		}
		var refresh_time = 12;
	    if (hitbox_timer % refresh_time == 0) for (var i = 0; i < 20; i++)
	    {
	        can_hit[i] = 1;
	    }
	}
}