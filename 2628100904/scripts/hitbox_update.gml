//hitbox_update

//flashbang shit

if (attack==AT_USTRONG){
if (hbox_num == 2){
	if(hitbox_timer == 2){
	    image_xscale = 25/200;
        image_yscale = 25/200;
        mask_index = asset_get("hitbox_square_spr");
	}
	vsp=vsp+0.3
	player_id.move_cooldown[AT_USTRONG] = 50;
	if (hitbox_timer == length - 1 || was_parried || destroyed || !free || y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
		with (player_id){ var hbox = create_hitbox( AT_USTRONG_2, 1, other.x, other.y ) }
		hbox.kb_value = hbox.kb_value * (1 + strong_charge/240);
		hbox.kb_scale = hbox.kb_scale * (1 + strong_charge/240);
		hbox.damage = hbox.damage * (1 + strong_charge/100);
		destroyed = true;
		sound_stop(sound_get("thinkfast"))
		sound_play(sound_get("thinkfast"))
		spawn_hit_fx(x, y, HFX_MOL_BOOM_FLASH);
	}
}
}

if(attack == AT_FSPECIAL){
	if(!free){
		projectile_parry_stun = false;
		can_hit_self = true;
	} else {
		projectile_parry_stun = true;
	}
}