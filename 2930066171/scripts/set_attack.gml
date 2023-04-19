//
inital_dir = spr_dir;

prat_land_time = 10;
//Grounded Uspecial has invincibility
if (attack == AT_USPECIAL) {
	if (!free) {
		prat_land_time = 16;
		grounded_uspecial = true;
		reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
	} else {
		grounded_uspecial = false;
		set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK));
		set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING));
	}
	print(free)
}
//Dattack JC
dash_attack_jc = false;


if (attack == AT_NSPECIAL && (instance_exists(nspecial_projectile_out) && (place_meeting(x, y, nspecial_projectile_out) || point_distance(x, y, nspecial_projectile_out.x, nspecial_projectile_out.y) <= 96))) {
	spawn_hit_fx( nspecial_projectile_out.x, nspecial_projectile_out.y , HFX_ORI_BLUE_SMALL );
	sound_play(asset_get("sfx_diamond_small_collect"))
	instance_destroy(nspecial_projectile_out);
}
if (instance_exists(nspecial_projectile_out) || owns_dumbell()) {
	move_cooldown[AT_NSPECIAL] = 1;
}

//Rivals of Fighter 2
rof_can_be_blocked = true;
switch(attack) {
	case AT_UTILT: //Buster
	case AT_FSPECIAL: //Grab
		rof_can_be_blocked = false;
	break;
}

#define owns_dumbell() {
	with pHitBox {
		if ("chad_dumb" in self && player_id == other.id) {
			return true;
		}
	}	
	return false;
}