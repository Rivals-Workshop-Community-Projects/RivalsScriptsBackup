//
if !init {
 init = 1;
 sound_play(asset_get("sfx_ell_overheat"));
spawn_hit_fx(x,y,144)
} else {
	init++;
	if init mod 10 == 0 {
	
		sound_play(asset_get("mfx_xp"), 0, noone, 1, 1+(owner.coins*0.01));
		owner.coins = min(owner.coins+1, 9)
	}
	image_angle = owner.image_angle;
	z = owner.z;
	x = owner.x;
	y = owner.y;
	owner.hsp += lengthdir_x(0.1,image_angle);
	owner.vsp += lengthdir_y(0.1,image_angle);
	if owner.found_wall or init > 180 or owner.state == PS_RESPAWN or owner.state == PS_DEAD {
		if owner.found_wall {
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			spawn_hit_fx(x,y,139)
		} else if init > 180 {
			sound_play(asset_get("sfx_ell_cooldown"));
			spawn_hit_fx(x,y,144)
		}
		instance_destroy();
	}
}