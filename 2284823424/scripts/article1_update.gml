

if object_index == oPlayer exit;

switch(type){
	case 0: //fire
		
		switch(state){
			case 0: //Spawn
				var s_t_max = 25;
				image_index = lerp(0, 5, state_timer / s_t_max);
				if (state_timer == s_t_max) setState(1);
				if (state_timer == 1){
					sound_play(player_id.sfx_minecraft_fire_idle);
				}
				break;
			case 1: //Idle
				var s_t_max = 300;
				image_index = round(state_timer / 5) % 8 + 5;
				if (state_timer == s_t_max) setState(2);
				break;
			case 2: //Die
				var s_t_max = 25;
				image_index = lerp(13, 18, state_timer / s_t_max);
				if (state_timer == s_t_max){
					instance_destroy();
					exit;
				}
				break;
		}
		
		if state != 2{
			
			with oPlayer{
				var touching = 0;
				var fire = other;
				with hurtboxID if place_meeting(x, y, fire) touching = 1;
				if touching fireCheck(other.player_id);
			}
			with asset_get("obj_article3") if place_meeting(x, y, other) fireCheck(other.player_id);
			
			with pHitBox{
				if place_meeting(x, y, other){
					if "muno_char_id" in player_id && player_id.muno_char_id == other.player_id.muno_char_id && (attack == AT_FSTRONG || attack == AT_NTHROW && hbox_num == 10){
						if type == 2 && "flaming" in self && !flaming{
							flaming = true;
							sound_play(player_id.sfx_minecraft_singe);
						}
					}
					else{
						with other setState(2);;
					}
				}
			}
		}
		
		if !(exist_timer % 20) && !player_id.phone_fast{
			var hfx = spawn_hit_fx(x, y, player_id.vfx_smoke);
			hfx.vsp = -1;
			hfx.hsp = clamp(random_func(0, 4, true), 0, 3) - 1;
			hfx.x += random_func(10, 32, true) - 16;
			hfx.y += random_func(10, 16, true) - 32;
			
			hfx.steve_manip_id = player_id;
			hfx.type = 0;
			hfx.depth = depth + 1;
			hfx.num = 0;
			hfx.hit_length = 100;
			
			hfx.ignore_gravity = true;
			hfx.go_up = 0.25;
		}
		
		break;
}



state_timer++;
exist_timer++;



#define setState(new_state)

state = new_state;
state_timer = 0;



#define fireCheck(steve)

if (object_index == oPlayer || object_index == oTestPlayer) && !invincible{
	if !burned sound_play(asset_get("sfx_burnapplied"));
	burned = true;
	burnt_id = steve;
	burn_timer = burn_timer % 30;
}

else{
	if (object_index == asset_get("obj_article3") && player_id.muno_char_id == steve.muno_char_id) && cycle < cycle_max{
		cycle = cycle_max;
		cycle_timer = 0;
	}
}