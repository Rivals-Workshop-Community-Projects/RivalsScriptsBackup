//got hit

if (enemy_hitboxID.player != player){
    //fuel_should_refill = true;
    //cant_use_jetpack = false;
    jetpack_used_walljump = false;
}

if (enemy_hitboxID.player_id == id){
    if (enemy_hitboxID.attack == AT_USPECIAL){
        hurt_img = 0;
        i_exploded = true;
        if (jetpack_used_walljump){
            has_walljump = false;
        }
    }
    if (enemy_hitboxID.attack == AT_USPECIAL_2){
        hurt_img = 0;
        i_exploded = false;
    }
}

if (quota_level >= 8){
	if (enemy_hitboxID.damage > 1){
		take_damage(player, -1, -(ceil(enemy_hitboxID.damage*0.2)));
	}
}

if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_DSPECIAL) && (current_scrap != noone) && (!scan_nofind){
	drop_scrap();
}

if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR || prev_state == PS_LANDING_LAG || prev_state == PS_PARRY_START || prev_state == PS_PARRY){
	if (overtime_bonus > 0) overtime_bonus -= (3 + (quota_level-1));
}

/*
if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_USPECIAL_2{
		hurt_img = 0;
    	var cruiser = spawn_hit_fx(x + 1*spr_dir, y - 48, vfx_cruiser);
		cruiser.spr_dir = spr_dir;
		cruiser.hsp = -4*spr_dir;
		cruiser.vsp = -6;
		cruiser.grav = 0.5;
}*/

#define drop_scrap()

	if (scrap_visual_timer > 10){
		scrap_visual_timer = 49;
	}
	var scrap_lost = create_hitbox(2, 3 + prev_scrap.size, x + 26*spr_dir, y - 28);
	scrap_lost.init = false;
	if (prev_scrap.size == 0){
		scrap_lost.image_index = prev_scrap.index;
	} else {
		scrap_lost.image_index = prev_scrap.index - (prev_scrap.index <= 15? 11 : 22);
	}
	scrap_lost.hsp = 4*spr_dir;
	scrap_lost.vsp = -6;
	current_scrap = noone;
	has_scrap = false;