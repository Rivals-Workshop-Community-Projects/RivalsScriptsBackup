// hit_player.gml
// hitbox_update.gml
#macro POWDER_CASCADE 0
#macro POWDER_BLACK 1
#macro POWDER_CLUSTER 2
#macro POWDER_SPARKLER 3

/*
// Template
if (my_hitboxID.attack == AT_WHATEVER){
	if (my_hitboxID.hbox_num == theNumberOfTheHitboxIdk){
		// do stuff here
	}
}
*/

switch (my_hitboxID.attack) {
	case AT_DAIR:
		if my_hitboxID.hbox_num != 3 hit_player_obj.should_make_shockwave = false;
	break;
	case AT_USTRONG:
		sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.8, 1.1)
	break;
	case AT_USPECIAL:
		if my_hitboxID.hbox_num != 3 {
			hit_player_obj.should_create_shockwave = false;
			sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.45, 1.25)
			sound_play(asset_get("sfx_burnapplied"), false, noone, 0.6, 1.35)
		}
		else {
			sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.4, 1.0)
			sound_play(asset_get("sfx_burnapplied"), false, noone, 0.25, 1.1)
			sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.15, 0.8)
			sound_play(sound_get("sfx_plague_cascade_explode"), false, noone, 0.25, 1.55)
			//
		}
	break;
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 1) {
			var should_hit_self = my_hitboxID.was_parried or my_hitboxID.can_hit_self
			my_hitboxID.can_hit[hit_player_obj.player] = 1
			var can_hit = deep_copy(my_hitboxID.can_hit)
			
			switch my_hitboxID.powder {
				case POWDER_CASCADE:
					//create_hitbox(my_hitboxID.attack, 8, my_hitboxID.x, my_hitboxID.y)
					sound_play(bomb_explode_sound);	
					sound_play(asset_get("sfx_blow_medium3"))
					var ember = create_hitbox(my_hitboxID.attack, 6, my_hitboxID.x, my_hitboxID.y)
					ember.vsp = -1
					ember.hsp = my_hitboxID.hsp * 0.3
					ember.can_hit_self = should_hit_self;
					ember.can_hit = can_hit
					with my_hitboxID {
						sound_play(player_id.cascadeEmberSFX, false, noone, 1, 1)
					}
				break;
				case POWDER_BLACK:
					var h = create_hitbox(my_hitboxID.attack, 2, my_hitboxID.x, my_hitboxID.y)
					h.can_hit_self = should_hit_self;
					h.can_hit = can_hit
					sound_play(bomb_explode_sound);
					break;
				case POWDER_CLUSTER:
					bomb_cluster_info.x = my_hitboxID.x;
					bomb_cluster_info.y = my_hitboxID.y;
					bomb_cluster_info.active = true;
					bomb_cluster_info.can_hit_self = should_hit_self;
					bomb_cluster_info.can_hit = can_hit
					with my_hitboxID {
						sound_play(sound_get("sfx_plague_cluster_buildup"), false, noone, 0.9, 1.2)
					}
				break;
			}
			
		}
		
		// sparkler hit stuff
		if (my_hitboxID.hbox_num == 3) {
			//print("am i alive");
			var xx = floor(lerp(my_hitboxID.x, hit_player_obj.x, 0.5))
			var yy = floor(lerp(my_hitboxID.y, hit_player_obj.y - (hit_player_obj.char_height/2), 0.5))
			if (hit_player_obj.state_cat == SC_HITSTUN){
				// opponent is in hitstun, play AWESOME vfx
				spawn_hit_fx(xx, yy, sparkler_hit_fx);
				sound_play(sound_get("sfx_plague_sparkler_hit"))
			} else {
				// opponent isn't in hitstun, play normal BORING vfx
				spawn_hit_fx(xx, yy, sparkler_hit_sml_fx).draw_angle += 45;
				sound_play(sound_get("sfx_plague_sparkler_hit_nohitstun"))
			}
		}
		
		// cascade ember
		if (my_hitboxID.hbox_num == 6) {
			
		}
		
		// cascade flame pillar
		if (my_hitboxID.hbox_num == 7) {
			sound_play(asset_get("sfx_burnapplied"), false, noone, 0.25, 1.1)
			sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.15, 0.8)
			sound_play(sound_get("sfx_plague_cascade_explode"), false, noone, 0.25, 1.55)
			sound_play(asset_get("sfx_burnconsume"), false, noone, 0.75, 1.45);
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.5, 1.25);
			sound_play(asset_get("sfx_zetter_downb"), false, noone, 1, 0.95);
			sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.95, 1.1);
		}
	break;
}

#define deep_copy
var arr = argument0;

var new_array = array_create(array_length(arr))
for (var o = 0; o < array_length(arr); o++) {
	new_array[o] = arr[o]
}

return new_array;