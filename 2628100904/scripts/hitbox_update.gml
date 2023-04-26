//hitbox_update

//flashbang shit

if (attack==AT_USTRONG){
if (hbox_num == 2){
	vsp=vsp+0.3
	player_id.move_cooldown[AT_USTRONG] = 50;
	if (hitbox_timer == length - 1 || was_parried || destroyed || !free || y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
		with (player_id){ create_hitbox( AT_USTRONG, 3, other.x, other.y ) }
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