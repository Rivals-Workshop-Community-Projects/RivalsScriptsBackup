//set_attack
switch(attack){
        case AT_USPECIAL: // One blink per jump
        {
            if(can_blink == false)
            {
                state = PS_IDLE_AIR;
                move_cooldown[AT_USPECIAL] = 1;
            }
        }
        break;
        case AT_DSPECIAL: // Transition to dspec 2
        {
            if(time_knife != noone)
            {
                attack = AT_DSPECIAL_2;
            }
        }
        break;
        case AT_NSPECIAL: // var reset
        {
            is_spin = false;
            set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
        }
        break;
        case AT_TAUNT:
        {
            array_cleared = true;
            arrayindex = 0;
            
            var i = 0;
            repeat(100)
            {
            	afterimage_array[i] = -1;
            	i++;
            }
            
            afterimage_array[0] = {x:x+hsp*2,y:y,sprite_index:sprite_index,image_index:image_index,color:monDarkRed};
            
        }
        break;
}

// Munophone
user_event(13);