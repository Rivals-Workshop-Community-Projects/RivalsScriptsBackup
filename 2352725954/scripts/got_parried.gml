//got_parried - called when an opponent parries your attack

switch(my_hitboxID.attack)
{

    case AT_JAB:
        if(window == 2 || window == 5){
            was_parried = false;
        }
        break;

    case AT_NSPECIAL:       //Tornado
        my_hitboxID.hsp *= 2;
        my_hitboxID.hitbox_timer = 0;
        my_hitboxID.flipped *= -1;
        break;
    
    case AT_FSPECIAL:       //Chakram
        switch (my_hitboxID.hbox_num){
            
            case 1:
                my_hitboxID.hitbox_timer = 0;
                break;
                
            case 2:
            if(my_hitboxID.hitbox_timer >= 36){
                    my_hitboxID.vsp *= -1.20;
                    my_hitboxID.hsp *= -1.20;
                }
                my_hitboxID.custom_friction = 0;
                my_hitboxID.hitbox_timer = 0;
                my_hitboxID.max_vsp *= -1;
                my_hitboxID.max_hsp *= -1.25;
                break;
        }
        break;
    
}