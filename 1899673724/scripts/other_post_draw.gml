if draw_reticle { //draws the reticle
	with oPlayer if url == 1899673724 {
		if attack != AT_NSPECIAL || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (window == 3 || window == 4) other.draw_reticle = false //makes sure the reticle is not around if not needed
		draw_sprite(reticle_spr, 0, homing_x, homing_y);
	}
}

//Credit to HomingMissile333 for the homing reticle