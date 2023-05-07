var hbox_hit_knock = enemy_hitboxID.kb_value;
var hbox_hit_dmg = enemy_hitboxID.damage;
var hbox_hit_stun = enemy_hitboxID.hitpause;

move_cooldown[AT_USPECIAL] = 0;
penny_dair_used = 0;

if prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND{
	switch(attack){
		case AT_USTRONG_2:
		case AT_DSTRONG_2:
		case AT_FSTRONG_2:
		case AT_USPECIAL_2:
			penny_install = false;
			sound_stop(asset_get("sfx_absa_jabloop"));
			sound_play(asset_get("sfx_ell_cooldown"));
			break;
	}
}

// FUCK
if(instance_exists(grabbedid)){
	grabbedid.state = PS_TUMBLE;
	grabbedid.wrap_time = 0;
	grabbedid = noone;
}
/*
goboom = false;

if goboom{
	asset_get("mfx_back");
}*/