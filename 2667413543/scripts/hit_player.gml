// code for kamehameha
var hitbox_applies_mummy = false; // makes things easier

if (my_hitboxID.hbox_num == 1 && (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USPECIAL) || my_hitboxID.attack == AT_DAIR)
	hitbox_applies_mummy = true;

switch(my_hitboxID.attack){
	case AT_FSPECIAL:
		switch(my_hitboxID.hbox_num){
			case 1:
				if (fspecial_grab_id == noone) && (!super_armor) && (hit_player_obj.soft_armor == 0 || hit_player_obj.soft_armor >= orig_knock) && (hit_player_obj.cofa_mummy){ // grabby
					fspecial_grab_id = hit_player_obj;
					fspecial_grab_time_max = 30 + round(max((get_player_damage(hit_player_obj.player) - 20), 0));
					fspecial_grab_time_max = min(fspecial_grab_time_max, 200);
					destroy_hitboxes();
				}
			
				if (hit_player_obj.cofa_mummy)
					hitbox_applies_mummy = true;
			break;
			case 2: // grab
				if (hit_player_obj.cofa_mummy)
					hitbox_applies_mummy = true;
			break; 
			case 3: // throw
				if (hit_player_obj == fspecial_grab_id){
					hit_player_obj.visible = true;
					if (hit_player_obj.cofa_mummy) // funny kb
						orig_knock = (my_hitboxID.kb_value+4) + (get_player_damage(hit_player_obj.player) * (my_hitboxID.kb_scale+.2) * 0.12 * hit_player_obj.knockback_adj);
					
					fspecial_grab_id = noone;
				}
			break;
		}
		if (my_hitboxID.hbox_num != 3)
			hit_player_obj.should_make_shockwave = false;
	break;
	case AT_DSPECIAL:
		sound_play((hit_player_obj.cofa_mummy) ? sound_get("hex_hit_strong") : sound_get("hex_hit_weak"));
		if (hit_player_obj.cofa_mummy){
			hit_player_obj.orig_knock = 8 + (get_player_damage(hit_player_obj.player) * 1 * 0.12 * hit_player_obj.knockback_adj);
			take_damage(hit_player_obj.player, player, 5);
		}
	break;
}

if (hitbox_applies_mummy){
	if (!hit_player_obj.cofa_mummy)
		sound_play(sound_get("mcurse_apply"));
	hit_player_obj.cofa_mummy = true;
	hit_player_obj.cofa_mummy_id = id;
	hit_player_obj.cofa_mummy_timer = 180;
	hit_player_obj.cofa_mummy_outcol_time = 0;
	hit_player_obj.cofa_mummy_ui_spr = mummy_hudspr_stored;
}
