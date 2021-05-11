//
if attack == AT_DSPECIAL and (window == 2 or window == 5 or window == 8) and window_timer == 1 and state != PS_PRATFALL and state != PS_AIR_DODGE and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_PARRY_START and state != PS_PARRY{
	spawn_hit_fx(x, y+32, hit_fx_create( sprite_get( "nspecial_fx" ), 30 ));
}