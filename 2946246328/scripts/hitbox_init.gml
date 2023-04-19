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
	spr_dir = player_id.spr_dir;
	var too_many = 0
	var start_y = y;
	shoot_forward = false;
	nspecial_in_hitpause = 0;
	while (free) {
		y += 8;
		if (y > room_height) {
			y = start_y;
			x -= spr_dir * 10;
			shoot_forward = true;
		}
		if (position_meeting(x, y, asset_get("par_block"))) {
			print("collision")
			too_many = 0
			while(position_meeting(x, y, asset_get("par_block"))) {
				y -= 1;
				print("in ground")
				if too_many >= 1000 {
					print("Exceeded 1000")
					break;
				}
			}
			//x = round(x / 32) * 32;
			if (shoot_forward) {
				proj_angle = 90 * -spr_dir;
				y += 24;
				while(position_meeting(x - spr_dir * 63 , y, asset_get("par_block"))) {
					print("getting out")
					x += spr_dir;
				}
			} else {
				y -= 63;
			}
			break;
		}
		too_many++
		if too_many >= 1000 {
			print("Exceeded 1000")
			break;
		}
	}
}

if (attack == AT_DSPECIAL && type == 2 && hbox_num == 2) {
	hsp *= 2;
	vsp *= .5;
}