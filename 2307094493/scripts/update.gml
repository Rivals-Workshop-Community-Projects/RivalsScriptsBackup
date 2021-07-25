//Prevent having too many nuts out at once.
// print_debug(string(nut_count));
if (nut_count >= max_nut_count) {
	move_cooldown[AT_NSPECIAL_AIR] = 2;
}

//kirby
if (swallowed) {
	swallowed = 0;
	var abilityspr = sprite_get("kdair");
	var abilityhurtspr = sprite_get("kdair_hurt");
	var myicon = sprite_get("kirbyicon")	

	// with enemykirby {

    // }
}

if (attack == AT_USPECIAL && window > 2 && state_timer > 60 && !free) {
	set_state(PS_LAND);
	instance_destroy(hook);
}

if attack == AT_USPECIAL && state == 5 && (window == 1 || window == 2) {
	move_cooldown[AT_USPECIAL] = 999;
	air_accel = 0;
	air_friction = .1;
} else {
	air_accel = .3;
	air_friction = .02;
}

if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN) {
    move_cooldown[AT_USPECIAL] = 0;
}

//Fix stupid pratfall-->walljump hurtbox bug :(

if (state == PS_WALL_JUMP) {
	hurtboxID.sprite_index = hurtbox_spr;
}

//Restore airdodge if you leave pratfall

//if (state != PS_PRATFALL) {
//    has_airdodge = true;
//}

//Destroy hit player list when not in the down special discharge window to prevent memory leaks.
if (!(attack == AT_DSPECIAL && window != 5 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))) {
	if(ds_list_valid(ds_hit_list)) {
		ds_list_destroy(ds_hit_list);
	}
}

//Clear up special cooldown when inside field.
if (instance_exists(acorn) && acorn.charge != 0) {
	var com_y = y - (bbox_bottom - bbox_top) / 2;   //Center of mass y.
	var dist_to_acorn = point_distance(acorn.x, acorn.y, x, com_y);	//Distance to acorn.

	if( dist_to_acorn <= acorn.radius) {
		move_cooldown[AT_USPECIAL] = 0;
	}
}

with(asset_get("oPlayer")) {
	if(hitpause && hitstop == hitstop_full && other.id != id) {
		ld_old_speed = point_distance(0,0,old_hsp,old_vsp);
		// print_debug(string(ld_old_speed));
	}
}

// print_debug(string(attack) + " " + string(window) + " " + string(window_timer));

//update
