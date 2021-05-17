///

nfloat = 0
  	move_cooldown[AT_FSPECIAL] = 0
  	move_cooldown[AT_USPECIAL] = 0
  	move_cooldown[AT_DSPECIAL] = 0
move_cooldown[AT_USPECIAL_GROUND] = 20

if enemy_hitboxID.damage >= 2 && enemy_hitboxID.damage <= 6  {
	     sound_play(sound_get("hit1"),false,noone,0.8 + enemy_hitboxID.damage/20,0.9 + (random_func(10,4,true)/40));

}

if enemy_hitboxID.damage > 6  {
	     sound_play(sound_get("hit2"),false,noone,0.6 + enemy_hitboxID.damage/20,0.9 + (random_func(10,4,true)/40));
	    
	     
	   switch random_func(2, 6, true ) {
        case 0 :
        sound_play(sound_get("glitch1"),false,noone,0.8);
        break ;
        
        case 1 :
       sound_play(sound_get("glitch2"),false,noone,0.8);
        break ;
        
        case 2 :
        sound_play(sound_get("glitch3"),false,noone,0.8);
        break ;
        
        case 3 :
        sound_play(sound_get("glitch4"),false,noone,0.8);
        break ;
        
        case 4 :
        sound_play(sound_get("glitch5"),false,noone,0.8);
        break ;
        
        case 5 :
        sound_play(sound_get("glitch6"),false,noone,0.8);
        break ;
    
    }
    
}

