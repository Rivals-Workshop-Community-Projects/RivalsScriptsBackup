//update

if !free {
uspecialcancel = 1
dspecialjump = 1
}

if state = PS_DASH_TURN {
	if attack_pressed state = PS_IDLE
}

if healme {
	outline_color = [ 20, 200, 20 ];
	if get_gameplay_time() mod 3 == 0 {
	healme -= 1
	take_damage( player, -1, -1 )
	}
}

else {
	outline_color = [ 0, 0, 0 ];
}
init_shader();

if hurtboxID.image_angle != 0 and !(state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
hurtboxID.image_angle = 0
}

with asset_get("oPlayer") {
	if sealtimer > 0 {
	sealtimer -= 1
	}
	if sealtimer = 1 sealmark = 0
	if state = PS_RESPAWN sealmark = 0
}

if gracetime > 0 gracetime -= 1
if gracetime = 1 {
gracex = -1
gracey = -1
}