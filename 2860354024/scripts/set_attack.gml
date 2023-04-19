switch (attack){

    case AT_FAIR:
        if (((spr_dir == 1 && right_strong_pressed) || (spr_dir == -1 && left_strong_pressed)) && ammo > 0 && move_cooldown[AT_FSTRONG_2] == 0) {
            attack = AT_FSTRONG_2;
        }

        break;

    case AT_DAIR:
        if (down_strong_pressed || jump_strong_input) && ammo > 0 && move_cooldown[AT_DSTRONG_2] == 0{
            reset_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW);
            attack = AT_DSTRONG_2;
            if (jump_strong_input)
            set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 0);

            jump_strong_input = false;
        }

        break;

    case AT_BAIR:
        if (((spr_dir == -1 && right_strong_pressed) || (spr_dir == 1 && left_strong_pressed)) && ammo > 0 && move_cooldown[AT_FSTRONG_2] == 0) {
            attack = AT_FSTRONG_2;
            spr_dir *= -1;
        }

        
        break;

    case AT_UAIR:
        if (up_strong_pressed) && ammo > 0 && move_cooldown[AT_USTRONG_2] == 0{
            
            if (left_down)
	        	spr_dir = -1;
	        	
	        if (right_down)
	        	spr_dir = 1;
            
            attack = AT_USTRONG_2;
        }


        break;

    case AT_FSTRONG:
        if (ammo <= 0 || move_cooldown[AT_FSTRONG] > 0){
            attack = AT_FTILT;
        }
    break;

    case AT_USTRONG:
        if (ammo <= 0 || move_cooldown[AT_USTRONG] > 0){
            attack = AT_UTILT;
        }
        else if (!free && jump_pressed){
            y -= 10;
            attack = AT_USTRONG_2;
        }
    break;

    case AT_DSTRONG:
        if (ammo <= 0 || move_cooldown[AT_DSTRONG] > 0){
            attack = AT_DTILT;

        }
    break;

    case AT_FSPECIAL:
        fspec_free_start = false;
    break;

    case AT_TAUNT:
        if (up_down)
        attack = AT_TAUNT_2;
        
    break;

// //test intro
//     case AT_JAB:
//         attack = 48;
//     break;

}



anchor_x = 0;
anchor_y = 0;
grabbed_player = noone;

tpx_event = 3;
user_event(15);