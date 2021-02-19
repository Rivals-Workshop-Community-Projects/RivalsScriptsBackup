if state == PS_CROUCH {
	if lasthitplayer != noone {
		if lasthitplayer.state = PS_DEAD or lasthitplayer.state = PS_RESPAWN{
			sprite_index = sprite_get("crouch_kill")
		}
		else {
			sprite_index = sprite_get("crouch")
		}
	}
}

if state = PS_SPAWN {
	sprite_index = sprite_get("crouch")
	if taunt_pressed {
		sprite_index = sprite_get("crouch_kill")
	}
	image_index = 7
}


if state = PS_DASH {
	hurtboxID.x = x+(spr_dir*-60)
}