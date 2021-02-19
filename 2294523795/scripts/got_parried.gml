///

move_cooldown[AT_FTILT] = 5
scharge = 0
if (my_hitboxID.attack == AT_NSPECIAL) {

    hitbox_timer = 0;
    
}

if (my_hitboxID.attack == AT_DSPECIAL) {
    
 spawn_hit_fx (x, y - 20, i5)   
 create_hitbox (AT_DSPECIAL,7, x, y)   
 state_timer = 99
 invincible = 0
  window_timer = 99
  

    
}