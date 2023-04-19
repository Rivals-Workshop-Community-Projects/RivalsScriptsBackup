/*         
*                 ---------- hitbox_update.gml ------------
*       This file runs every frame a hitbox is active.
*       Useful for making hitboxes do things you can't do from a normal attack file.
*
*       Example: This plays a sound every 8 frames the nair projectile is active.
*
       if(attack == AT_NAIR and hbox_num == 1){
               if(hitbox_timer%8 == 0){ // the % is the modulous operator, it leaves the remainder behdind after dividing by a number, 17%8 would be the remainder of 17 divided by 8 which is 1
                   sound_play(sound_get("tinythud"));
                }
        }
*

if (attack == AT_JAB or attack == AT_NAIR){
    if (!free){
        destroyed = true;
    }
}

       if(attack == AT_NSPECIAL and hbox_num == 1){
               if(hitbox_timer%20 == 0){ // the % is the modulous operator, it leaves the remainder behdind after dividing by a number, 17%8 would be the remainder of 17 divided by 8 which is 1
                   sound_play(asset_get("sfx_boss_fireball_land"));
                }
        }*/
		
if (attack == AT_NSPECIAL) {
	if (nspecial_in_hitpause) {
		nspecial_in_hitpause -= 1
		hitbox_timer -= 1;
		img_spd = 0;
	} else {
		img_spd = .33;
	}
	print(nspecial_in_hitpause)
	if (hitbox_timer > 6 && hitbox_timer <= 9) {
		if (shoot_forward) {
			image_yscale = 60 / 200;
			image_xscale = 130 / 200;
		} else {
			image_yscale = 130 / 200;
		}
	} else {
		image_yscale = 0;
	}
	if (in_hitpause) {
		hitbox_timer = 0;
	}
}

if (attack == AT_DSPECIAL) {
	if !free {
		var bomb_explosion = create_hitbox(AT_DSPECIAL, 3, x, y);
		sound_play(asset_get("sfx_ell_uspecial_explode"));
		spawn_hit_fx(x, y, HFX_ELL_BOOM_BIG);
		destroyed = true;
		hitbox_timer = length;
	}
}