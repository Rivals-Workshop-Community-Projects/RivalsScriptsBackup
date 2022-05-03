/// my_hitboxID.attack
shader_start();

//Offscreen
with pHitBox {
	if (player_id == other.id && attack == AT_NSPECIAL) {
		if "uspecialNum" in self {
		if uspecialNum != 0 {
			draw_sprite_ext(other.ballOffSprite, uspecialShape , uspecialHudX,  uspecialHudY, 1, 1, uspecialRot, other.hud_color, 1)
			draw_sprite_ext(other.ballOffSpriteTwo, 0, uspecialHudX,  uspecialHudY, 1, 1, 0, c_white, 1)
		}
		}
	}
}
//


shader_end();