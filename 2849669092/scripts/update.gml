with (oPlayer){
	if (hit_player_obj != noone){
		if (hit_player_obj.activated_kill_effect){
			with (asset_get("pHitBox")){
				if (player == other.player){
					if (attack == AT_DSPECIAL){
						destroyed = true;
					}
				}
			}
		}
	}
}


if (attack == AT_FSPECIAL && fspec_teleporting){
	prat_land_time = fspec_teleport_prat_land;
}
else{
	prat_land_time = regular_prat_land;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	grabbed = -4;
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_USPECIAL] = 0;
}

if (url != 2849669092){
	player = -1;
	spawn_hit_fx(x,y,0);
}