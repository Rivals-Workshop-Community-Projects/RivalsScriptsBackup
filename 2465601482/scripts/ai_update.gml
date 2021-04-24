var open = state_cat != SC_HITSTUN && state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED;
var kill = ai_target != noone && get_player_damage(ai_target.player) > 100;
if state != PS_RESPAWN && state != PS_SPAWN && state != PS_DEAD {
    if ai_recovering == true {
        if (attack == AT_NSPECIAL && item_pulling = "bumper")  {
            attack_down = true;
            attack_pressed = true;
        } else if item_held == "bumper" && open {
            joy_pad_idle = true;
            set_attack(AT_NAIR);
        } else if open && !(item_held == "none" || item_held == "bumper") {
            set_attack(random_func(2,2,true) ? AT_UAIR : AT_DAIR);
        }
    } else if item_held == "none" && open{
        var pickup = false;
        with pHitBox if pickup == false && player_id == other && is_what != "bumper"  && distance_to_object(other) < 32*other.player_scale && (!kill || is_what == "beamsword"){
            pickup = true;
        }
        if pickup {
            set_attack(free ? AT_NAIR : AT_JAB);
        }
    } else if !free && open && item_held == "pop" {
        var doit = true;
        if ai_target != noone && distance_to_object(ai_target) < 128 doit = false;
        if doit {
            var list = [AT_DSTRONG, AT_DSTRONG, AT_FSTRONG];
            if ai_target != noone {
                if get_player_damage(ai_target.player) < 90 list[0] = AT_FSTRONG;
                if get_player_damage(ai_target.player) > 100 list = [AT_USTRONG,AT_USTRONG,AT_USTRONG];
            }
            set_attack(list[random_func(3,3,true)]);
        }
    } else if open && kill {
        if item_held != "none" && item_held != "beamsword" {
            var list = free ? [AT_UAIR, AT_FAIR, AT_DAIR, AT_NAIR] : [AT_UTILT, AT_FTILT, AT_DTILT, AT_JAB];
            set_attack(list[random_func(5,4,true)]);
        } else if item_held == "none" && !beamsword_out {
            set_attack(AT_DSPECIAL);
        } else if beamsword_out set_attack(AT_DSPECIAL);
        else if superscope_out set_attack(AT_FSPECIAL);
        else if boomerang_out set_attack(AT_NSPECIAL);
        else {
            set_attack(AT_NSPECIAL);
        }
    }
    
    
    if prev_item != item_held switch item_held {
        case "beamsword":
            beamsword_item_attack_arr();
            break;
        case "superscope":
            superscope_item_attack_arr();
            break;
        case "boomerang":
        case "bumper":
            boomerang_item_attack_arr();
            break;
        case "pop":
            pop_item_attack_arr();
            break;
        default:
            no_item_attack_arr();
            break;
    }
    if get_training_cpu_action() == CPU_FIGHT && open && !free && 0 == random_func(attack,50,true) {
        jump_pressed = true;
    }
    ai_attack_time -= ((temp_level)/8)*2*( ai_attack_time > 0) * (ai_target != noone && (ai_target.state_cat == SC_HITSTUN || ai_target.state_cat == SC_GROUND_COMMITTED || ai_target.state_cat == SC_AIR_COMMITTED  ));
    prev_item = item_held;
}
#define no_item_attack_arr() 
    far_up_attacks = [AT_FSPECIAL,AT_DSPECIAL,AT_NSPECIAL];
    far_down_attacks = [AT_FSPECIAL,AT_DSPECIAL,AT_NSPECIAL];
    far_side_attacks = [AT_FSPECIAL,AT_DSPECIAL,AT_NSPECIAL];
    mid_side_attacks = [AT_DATTACK,AT_DATTACK,AT_FSPECIAL,AT_DSPECIAL,AT_DSPECIAL,AT_DSPECIAL,AT_NSPECIAL,AT_NSPECIAL];
    close_up_attacks = [AT_DATTACK,AT_FTILT];
    close_down_attacks = [AT_DAIR,AT_DATTACK];
    close_side_attacks = [AT_DTILT,AT_FAIR,AT_FAIR,AT_FAIR,AT_BAIR];
    neutral_attacks = [AT_UTILT,AT_FTILT,AT_NAIR,AT_JAB,AT_UAIR,AT_NSPECIAL];
    return;
#define boomerang_item_attack_arr()
    far_up_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    far_down_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    far_side_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    mid_side_attacks = [AT_DATTACK,AT_FSPECIAL,AT_DSPECIAL,AT_NSPECIAL];
    close_up_attacks = [AT_FTILT,AT_DATTACK,AT_UTILT];
    close_down_attacks = [AT_DAIR,AT_DTILT];
    close_side_attacks = [AT_FTILT,AT_FAIR,AT_BAIR];
    neutral_attacks = [AT_FAIR,AT_UAIR];
    return;
#define beamsword_item_attack_arr() 
    far_up_attacks = [AT_FTILT, AT_FAIR, AT_NSPECIAL];
    far_down_attacks = [AT_DSPECIAL, AT_DSTRONG,AT_NSPECIAL];
    far_side_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG,AT_NSPECIAL];
    mid_side_attacks = [AT_FTILT];
    close_up_attacks = [AT_FSPECIAL,AT_DATTACK,AT_UTILT];
    close_down_attacks = [AT_DAIR,AT_DTILT,AT_DSPECIAL];
    close_side_attacks = [AT_FTILT,AT_FAIR,AT_BAIR,AT_FSPECIAL];
    neutral_attacks = [AT_NAIR,AT_JAB,AT_UAIR,AT_NSPECIAL];
    return;
#define superscope_item_attack_arr() 
    far_up_attacks = [AT_USPECIAL];
    far_down_attacks = [AT_DSPECIAL];
    far_side_attacks = [AT_FSPECIAL];
    mid_side_attacks = [AT_DATTACK,AT_FSPECIAL,AT_NSPECIAL];
    close_up_attacks = [AT_FTILT,AT_DATTACK,AT_UTILT];
    close_down_attacks = [AT_DAIR,AT_DTILT];
    close_side_attacks = [AT_FTILT,AT_FAIR,AT_BAIR];
    neutral_attacks = [AT_NAIR,AT_JAB,AT_UAIR,AT_NSPECIAL];
    return;
    
#define pop_item_attack_arr() 
    far_up_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    far_down_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    far_side_attacks = [AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    mid_side_attacks = [AT_FAIR, AT_FTILT,AT_USTRONG, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    close_up_attacks = [AT_FTILT,AT_DATTACK,AT_USTRONG, AT_FSTRONG, AT_DSTRONG,AT_UTILT, AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    close_down_attacks = [AT_DAIR,AT_DTILT, AT_USTRONG, AT_FSTRONG, AT_DSTRONG,AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    close_side_attacks = [AT_FTILT,AT_FAIR,AT_BAIR,AT_USTRONG, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    neutral_attacks = [AT_NAIR,AT_JAB,AT_UAIR,AT_NSPECIAL,AT_USTRONG, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_FSTRONG, AT_DSTRONG];
    return;