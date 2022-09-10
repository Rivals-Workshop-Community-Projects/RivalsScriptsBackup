///

 move_cooldown[AT_FSTRONG] = 00
 
 with pHitBox {
     if player_id == other.id && type == 2 && attack != AT_DTILT{
         destroyed = true
     }
 }