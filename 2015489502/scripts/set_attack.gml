was_bike = bike;

switch(attack){
    case AT_FSPECIAL:
    case AT_DSPECIAL:
        if (bike_cooldown > bike_cooldown_min && !bike_cooldown_shake_timer){
            sound_play(sfx_cooldown_click);
            bike_cooldown_shake_timer = bike_cooldown_shake_max;
        }
        break;
    case AT_TAUNT:
        break;
    default:
        if bike{
            dismount = true;
            if (attack != AT_USPECIAL){
                bikeattack = true;
                vsp -= 6.5;
                vsp = clamp(vsp, -13, -6.5)
            }
            if (attack == AT_DTILT){
                attack = AT_DAIR;
                attack = AT_DAIR;
            }
            if (attack != AT_DAIR && attack != AT_DSTRONG){
                doing_bike_aerial = 2;
            }
        }
        break;
    /*default:
        if (bike && !dismount && attack != AT_TAUNT){
            if !free{
                vsp = -8;
                sound_play(jump_sound);
                hsp = clamp(hsp, -max_jump_hsp, max_jump_hsp);
            }
            attack = AT_SPIN;
        }
        break;*/
}




dattack_turn = false;
has_hit_bike = false;
has_hit_ball = false;