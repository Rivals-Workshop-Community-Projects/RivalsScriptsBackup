//parry.gml

sound_play(sound_get("RI"));
shake_camera(4, 12)

with pHitBox {
	if player_id = other.id {
		destroyed = true 
	}
}
	timestop += 50
	ncharge = 70
	
	snox = x
	snoxy = y - 30