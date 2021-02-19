//set_attack
switch(attack){
        case AT_DSPECIAL:
            if(free){
                if(!can_air_dspecial)
                {
                    state = PS_IDLE_AIR;
                    move_cooldown[AT_DSPECIAL] = 1;
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                }
                else attack = AT_AIR_DSPECIAL;
            }
        break;
        case AT_NSPECIAL: // One throw per jump
        {
            if(can_throw == false && move_cooldown[AT_NSPECIAL] <= 1)
            {
                state = PS_IDLE_AIR;
                move_cooldown[AT_NSPECIAL] = 1;
            }
        }
        case(AT_TAUNT):
        
        	if (down_down)
        	{
        	    do_taunt_2 = true;
        	    //print_debug("tess");
        		//set_attack(AT_TAUNT_2);
        	}
        break;
}

user_event(13);