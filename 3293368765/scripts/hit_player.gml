//hit_player.gml
if(has_rune("G")){
	//if(get_player_color(player) != 16){
	if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num = 2 hit_player_obj.teenah_shock = noone;
	if(my_hitboxID.attack != AT_DSPECIAL && (my_hitboxID.force_flinch != 1 || (my_hitboxID.force_flinch == 1 && hit_player_obj.free))){
		hit_player_obj.teenah_shock = self;
		hit_player_obj.hitpause_shock = true;
		hit_player_obj.can_bounce = false;
		hit_player_obj.can_tech = false;
		// hit_player_obj.can_wall_tech = false;
	}
	/*} else if(my_hitboxID.attack != AT_DSPECIAL){
		if(hit_player_obj.state == PS_CRYSTALIZED) hit_player_obj.state = PS_HITSTUN;
		if(prev_state != PS_CRYSTALIZED) hit_player_obj.crystalized_damage_remaining = 30;
		hit_player_obj.should_make_shockwave = will_die_from_kb(
			hit_player_obj, 
			hit_player_obj.orig_knock,
			point_direction(0, 0, hit_player_obj.old_hsp, hit_player_obj.old_vsp), 
			hit_player_obj.hitstun
		);
	}*/
}


if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == tn_uspec_grab_box_num) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
        window = tn_uspec_throw_window;
        window_timer = 0;
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && tn_nspec_will_charge) {
    hit_player_obj.orig_knock *= tn_nspec_will_mult;
}

if(my_hitboxID.attack == AT_DAIR){
	fast_falling = false;
}

if(my_hitboxID.attack == AT_NSPECIAL_2){
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, fx_cat)
}

// Will Charge Meter Gain
// This list below will lock out the exceptions
// if(
// 	my_hitboxID.attack != AT_NSPECIAL &&
// 	my_hitboxID.attack != AT_NSPECIAL_AIR && 
// 	my_hitboxID.attack != AT_NSPECIAL_2 && // Catooken
// 	my_hitboxID.attack != AT_FSPECIAL &&
// 	my_hitboxID.attack != AT_FSPECIAL_AIR &&
// 	my_hitboxID.attack != AT_DSPECIAL &&
// 	my_hitboxID.attack != AT_USPECIAL &&
// 	!(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1) && //Exclude Linker on Ustrong 
// 	!(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3) && //Exclude Linker on Ustrong
// 	!(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4) && //Exclude Linker on Ustrong
// 	!(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 5) && //Exclude Linker on Ustrong
// 	!(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1) //Exclude Linker on Fstrong 1
// )

if( 
	!has_gained_will &&
	my_hitboxID.attack != AT_NSPECIAL &&
	my_hitboxID.attack != AT_NSPECIAL_AIR && 
	my_hitboxID.attack != AT_NSPECIAL_2 && // Catooken
	my_hitboxID.attack != AT_FSPECIAL &&
	my_hitboxID.attack != AT_FSPECIAL_AIR &&
	my_hitboxID.attack != AT_DSPECIAL &&
	my_hitboxID.attack != AT_USPECIAL
){
	has_gained_will = true;
	will_charge += will_gain;
	if will_charge == 600 sound_play(sound_get("tee_lvl1"))
	if will_charge == 1200 sound_play(sound_get("tee_lvl2"))
}

// if(my_hitboxID.hit_effect >= 700){
// 	hit_player_obj.hitpause_shock = true;
// }

// Projectile will gain (only relivant to abyss runes and potentially extra buddies)
// if(my_hitboxID.player_id == self && my_hitboxID.type == 2)
// {
// 	will_charge += will_gain;
// 	if will_charge == 600 sound_play(sound_get("tee_lvl1"))
// 	if will_charge == 1200 sound_play(sound_get("tee_lvl2"))
// }



// Gunner's Hit SFX Controller for sound layering
//#region Hit SFX Controller
// Function works like this: Sound name, hitbox to attach it to, volume to use (0 to 1), pitch to use, use asset_get over sound_get for base cast assets
switch(my_hitboxID.attack){
	case AT_FSTRONG:
		insert_sfx_on_hit("sfx_blow_medium2",1,1,1,true); 
		insert_sfx_on_hit("sfx_blow_heavy1",2,1,1,true);
	break;
	case AT_USTRONG:
		insert_sfx_on_hit("sfx_blow_heavy2",2,1,1,true); //Strong Box
	break;
	case AT_DSTRONG:
		insert_sfx_on_hit("sfx_blow_heavy1",1,1,1,true);
		insert_sfx_on_hit("sfx_blow_heavy2",2,1,1,true);
	break;
	default:
	break;
}

#define insert_sfx_on_hit(temp_sound_string,temp_hitbox_num,temp_volume,temp_pitch,use_asset_version)
{
	if(my_hitboxID.hbox_num == temp_hitbox_num){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(sound_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(asset_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
		return temp_sfx_obj;
	}
}