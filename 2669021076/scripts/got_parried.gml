// got_parried is a script that is called when you get parried.

var hb = my_hitboxID;
var hit_pid = hit_player_obj;

switch hb.attack {
    // STRONG ATTACKS
    case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
        claws_health -= 55;
        break;
        
        
    // CLAW AERIALS
    case AT_NAIR: case AT_FAIR: case AT_UAIR:
        claws_health -= 30;
        break;
        
    
    // CRABHAMMER
    case AT_NSPECIAL:
        claws_health -= 55;
        nspec_parried = true;
        sound_play(get_hitbox_value(attack, 1, HG_HIT_SFX));
        break;
        
    // BUBBLEBEAM
    case AT_USPECIAL:
        with pHitBox {
            if player_id == other && attack == AT_USPECIAL {
                can_hit[hit_pid.player] = 0;
            }
        }
        array_push(uspec_parried_by, hit_pid.player);
        break;
}

// tell other bubbles to chill tf out
if hb.attack == AT_USPECIAL {
    with pHitBox {
        if player_id == other && attack == AT_USPECIAL {
            can_hit[hit_pid.player] = 0;
        }
    }
    array_push(uspec_parried_by, hit_pid.player);
}