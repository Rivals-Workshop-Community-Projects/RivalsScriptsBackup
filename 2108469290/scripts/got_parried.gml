///



lockon = 0
lockontime = 180
fcharge = 0


move_cooldown[AT_FSPECIAL] = 0
move_cooldown[AT_USPECIAL] = 0 	
move_cooldown[AT_DSPECIAL] = 0	

///if (my_hitboxID.attack == AT_NSPECIAL) {
///    parry_lag = 30;
///    spawn_hit_fx ( x  , y , ai );
///    x = hit_player_obj.x 
///    y = hit_player_obj.y
///}
///


if (my_hitboxID.attack == AT_NSPECIAL) {
 ///create_hitbox(AT_NSPECIAL,4,x,y)   
 state_timer = 99
 window_timer = 99
 move_cooldown[AT_TAUNT] = 240
 create_hitbox (AT_NSPECIAL, 7, x, y)
 spawn_hit_fx (x,y,lighten)
}


if (my_hitboxID.attack == AT_EXTRA_2) {
    set_state (PS_PRATFALL)
    parry_lag = 50;
}