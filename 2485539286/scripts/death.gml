///
	   switch random_func(2, 6, true ) {
        case 0 :
        sound_play(sound_get("glitch1"),false,noone,1);
        break ;
        
        case 1 :
       sound_play(sound_get("glitch2"),false,noone,1);
        break ;
        
        case 2 :
        sound_play(sound_get("glitch3"),false,noone,1);
        break ;
        
        case 3 :
        sound_play(sound_get("glitch4"),false,noone,1);
        break ;
        
        case 4 :
        sound_play(sound_get("glitch5"),false,noone,1);
        break ;        

        case 5 :
        sound_play(sound_get("glitch6"),false,noone,1);
        break ;   

        case 6 :
        sound_play(sound_get("glitch7"),false,noone,1);
        break ;   
    
    }
sound_play(sound_get("death"),false,noone,0.6);


hhh = 0
move_cooldown[AT_EXTRA_1] = 32

             with (pHitBox) {
             	if player_id == other.id {
             		if attack == AT_EXTRA_1 {
                         destroyed = 1
             		}
                }
             }