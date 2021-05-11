//
if attack == AT_USPECIAL and window == 1 and state != PS_PRATFALL and state != PS_AIR_DODGE and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_PARRY_START and state != PS_PARRY{
	draw_sprite(sprite_get("uair_string"), window_timer/5, x-2, y-24)
}

if attack == AT_USPECIAL and window == 2 and state != PS_PRATFALL and state != PS_AIR_DODGE and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_PARRY_START and state != PS_PARRY{
	draw_sprite(sprite_get("uair_string"), (window_timer/4) + 4, x-2, y-24 )
}

if attack == AT_USPECIAL and window == 3 and state != PS_PRATFALL and state != PS_AIR_DODGE and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_PARRY_START and state != PS_PARRY{
	draw_sprite(sprite_get("uair_string"), 9, x-2, y-24 )
}