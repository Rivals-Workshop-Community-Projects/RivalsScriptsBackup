//update

//Woo

if (state == PS_DOUBLE_JUMP) and (state_timer == 0) and (hsp > 10 || hsp < -10)
{
 random = random_func( 0, 10, false );

 if (random < 5)
 {
  sound_play( sound_get( "woo1" ) );
 }

 if (random > 5)
 {
  sound_play( sound_get( "woohoo" ) );
 }
} 


