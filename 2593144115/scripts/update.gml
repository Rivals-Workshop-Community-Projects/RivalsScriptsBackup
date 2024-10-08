if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) char_height = 54;

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        amaya_venom = false;
        amaya_venom_count = 0;
        amaya_venom_id = 0;
    }
}

with (asset_get("oPlayer")) {
	if (amaya_venom && amaya_venom_id == other.id && !hitpause) {
		amaya_venom_timer += 1;
		//if (amaya_venom_timer % (145-25*amaya_venom_count) == 0) //45 frames on 4, 70 on 3, 95 on 2, 120 on 1
		if (amaya_venom_timer % (250-40*amaya_venom_count) == 0) //90 frames on 4, 130 on 3, 170 on 2, 210 on 1
                {
                    take_damage(player, other.player, 1);
                    spawn_hit_fx(x, y-char_height/2, 19);
                }
	}
}

if (state_cat = SC_HITSTUN || state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL)
{
    char_height = 54;
    ease_timer = 0;
    sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
}


if (instance_exists(fspecial_projectile) && !fspecial_projectile.destroyed)
{
    move_cooldown[AT_FSPECIAL] = 22;
}

//if (hitpause && has_hit_player) time_since_last_hit = 0;
//else if (!hitpause) time_since_last_hit++;
if (!hitpause) time_since_last_hit++;