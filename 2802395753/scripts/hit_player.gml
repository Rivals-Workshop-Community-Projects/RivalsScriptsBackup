// code for kamehameha

// if my_hitboxID.attack == AT_NSPECIAL && !has_updated_beam_kb{
// 	has_updated_beam_kb = true;
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(7, 12, beam_juice / beam_juice_max));
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.5, 1.6, beam_juice / beam_juice_max));
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(8, 20, beam_juice / beam_juice_max));
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.5, 1.5, beam_juice / beam_juice_max));
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, lerp(2, 22, beam_juice / beam_juice_max));
// 	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, round(lerp(55, 35, beam_juice / beam_juice_max)));
// }

// if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hitpause > 15{
// 	sound_play(sfx_dbfz_hit_broken);
// }

if (my_hitboxID.attack == AT_NAIR) {
	old_vsp = -7;
	old_hsp = 0 * spr_dir;
}

if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2){
	sound_play(asset_get("sfx_bird_nspecial"))
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_absa_kickhit"))
}

if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3){
	set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 135);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
	
	set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 135);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.25);
}

get_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER) 

if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1 && job == "office"){
	sdi_mult+= .3;
}

if(my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 1 && job == "mechanic"){
	grabbed_id = hit_player_obj;
}

if(my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 && job == "mechanic"){
	grabbed_id = hit_player_obj;
}