if free {
	vsp += canGravity
	image_index += .25
	if image_index > 4.75 {
		image_index = 1
	}
	} else {
		hsp = 0
		image_index = 0
	}
	
if canLifeTime > canUse {
	sprite_index = sprite_get("can");
} else {
	sprite_index = sprite_get("can2");
}
	
	
if player_id.attack = AT_DSPECIAL {
	if  player_id.window = 1 && player_id.window_timer = 11 && player_id.canCan = 1 && (player_id.state = PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) &&  canLifeTime > canUse {
		canHitPlayer = player_id.player
		canLifeTime -= canUse
		spr_dir = player_id.spr_dir
		hsp = player_id.spr_dir * canBoostHSP
		vsp = canBoostVSP
		sound_play(asset_get("mfx_coin"))
	}
}

if canLifeTime = canLifeTimeStart {
	canBox = create_hitbox(AT_DSPECIAL, 1, x, y - 15);
}

if canHitLock > 0 {
canHitLock -= 1
}



if canLifeTime = 1 {
		create_hitbox(AT_DSPECIAL, 2, x, y - 15);
}

if canLifeTime < 0 {
	player_id.canCan = 2
	sound_play(asset_get("sfx_absa_kickhit"))
	instance_destroy(canBox)
	instance_destroy()
}

if y > room_height || x < 0 || x > room_width {
	player_id.canCan = 2
	instance_destroy(canBox)
	instance_destroy()
	
}

if !instance_exists(canBox) {
	canLifeTime = 0
	player_id.canCan = 2
	instance_destroy()
}

with canBox {
	
	player = other.canHitPlayer
	
	if was_parried {
	
		hitbox_timer = 899
	
		with other {
			canLifeTime = 1
			player_id.canCan = 2
			instance_destroy()
		}
		

	}
	
	x = other.x
	if (other.hsp != 0 || other.vsp != 0) {
	y = other.y - 15
	} else {
		y = other.y - 1000
		}
	
	if has_hit {
		other.vsp -= 6
		other.canLifeTime = 0
	}
}

if canHitpause != -4 {
	vsp = 0
	hsp = 0
	
	canHitpause -= 1
	if canHitpause = 0 {
		canHitpause = -4
		hsp = canHSP
		vsp = canVSP
	}
} else {
	canLifeTime -= 1
	canHSP = 0
	canVSP = 0
}

with pHitBox {
	if !(player_id = other.player_id && attack = AT_DSPECIAL) {
		if place_meeting(x,y,other) {
			if other.canHitLock = 0 {
			
			player_id.old_hsp = player_id.hsp
			player_id.old_vsp = player_id.vsp
			other.canHitPlayer = player_id.player
			other.canHitLock = hitpause + other.canHitLockTimer
			other.canHSP +=  (((round(kb_angle/10) * 10) + 1) / 100) *  .1 * player_id.spr_dir  * (kb_value * other.canBase + kb_scale * other.canScale)
			other.canVSP -= ((10 - ((round(kb_angle/10) * 10) + 1) / 100)) * .1 * (kb_value * other.canBase + kb_scale * other.canScale)
			if type = 1 {
				player_id.hitpause = 1
				player_id.hitstop += hitpause
				sound_play(sound_effect);
                spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
			}
			other.canHitpause += hitpause + 4
			
			other.canHitLock = ceil(other.canHitLock);
			other.canHitpause = ceil(other.canHitpause);

			}
		}
	}
}

