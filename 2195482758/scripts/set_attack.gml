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
                move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL],1);
            }
        }
        case(AT_TAUNT):
        
        	if (down_down)
        	{
        	    do_taunt_2 = true;
        	    //print_debug("tess");
        		//set_attack(AT_TAUNT_2); // WARN: Risk of crash. in `attack_set.gml` you can just write `attack = x` instead of `set_attack(x)`.
        	}
        break;
}

user_event(13);