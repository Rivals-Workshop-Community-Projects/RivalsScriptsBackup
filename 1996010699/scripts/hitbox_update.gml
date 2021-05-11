if(attack == AT_NSPECIAL){
	init_shader();
	if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b){
		destroyed = true;
		exit;
	}
	if(hbox_num == 1){
		if(hitbox_timer == length-1){
			spawn_hit_fx( x + (2*spr_dir) , y , player_id.crysSmall );
		}
		player_id.move_cooldown[AT_NSPECIAL] = 10;
		img_spd += (hitbox_timer / 50000);
		if(hitbox_timer % 30 = 0){
			makeShards(1);
		}
		if(free & hitbox_timer > 35){
			img_spd += (hitbox_timer / 50000);
			grav += (hitbox_timer / 2000);
		}
		if(!free){
			if(player_id.item[21,3] == 1 && player_id.canCrystalBounce = true){
				makeShards(2);
				grav = .2;
				vsp = -4;
				hsp /= 1.5;
				player_id.crysProj_tickDelay += 2;
				projectile_parry_stun = true;
				does_not_reflect = true;
				walls = 0;
				player_id.canCrystalBounce = false;
			} else {  
				makeShards(2);
				player_id.faucetShards = true;
				player_id.faucetShardx = x;
				player_id.faucetShardy = y;
				destroyed = true;				
				if(player_id.crysProj_id != noone){
					player_id.crysProj_id.destroyed = true;
					player_id.crysProj_id = noone;
				}
			}
		}
	}
	
	if(hbox_num >= 2){
		if(!free){
			destroyed = true;
		}
	}
}

#define makeShards(n)
{
	player_id.numFaucetShards = n;
	player_id.faucetShards = true;
	player_id.faucetShardx = x;
	player_id.faucetShardy = y;
}