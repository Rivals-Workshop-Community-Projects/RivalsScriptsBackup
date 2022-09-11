///#args attack // this line makes code editors not freak out for some reason
elec_vfx = false;
elec_active = false;
trigger_all_hit = false;
    // if (while_rising && attack_pressed)
    // attack = AT_EXTRA_2;

// switch(attack)
// {



    
    
//     case AT_FTILT:
//     case AT_DTILT:
//     case AT_NAIR:
//     case AT_DAIR:

//     case AT_FSTRONG:
//     case AT_DSTRONG:
//     case AT_USTRONG:
//          if (electrified)
//         {
//             for (var loops = 0; loops <= get_num_hitboxes( attack );loops++){
//             set_hitbox_value(attack, loops, HG_EFFECT, 11);
//             }
//             elec_charge -= elec_drain;
//             elec_vfx = true;
//         }
//         else
//         {
//             for (var loops = 0; loops <= get_num_hitboxes( attack );loops++){
//             reset_hitbox_value(attack, loops, HG_EFFECT);
//             }
//         }
        
//     break;
       
//     case AT_JAB:
//         if (electrified){
//         set_hitbox_value(attack, 3, HG_EFFECT, 11);
//         elec_vfx = true;
//         }
//         else
//         reset_hitbox_value(attack, 3, HG_EFFECT);
        
        
//     break;
    
//     case AT_FAIR:
//         if (electrified || omen_axle){
//         set_hitbox_value(attack, 1, HG_EFFECT, 11);
        
//         if (!omen_axle)
//         elec_charge -= elec_drain;
//         else
//         set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 15);
        
//         elec_vfx = true;
//         }
//         else{
//         reset_hitbox_value(attack, 1, HG_EFFECT);
//         reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
            
//         }
        
//     break;
    
    
//     case AT_FSTRONG_2:
//         if (electrified){
//         set_hitbox_value(attack, 3, HG_EFFECT, 11);
//         elec_vfx = true;
//         }
//         else
//         reset_hitbox_value(attack, 3, HG_EFFECT);
        
        
//     break;
    
//     case AT_USTRONG_2:
//         if (electrified){
//         set_hitbox_value(attack, 1, HG_EFFECT, 11);
//         elec_charge -= elec_drain;
//         elec_vfx = true;
//         }
//         else
//         reset_hitbox_value(attack, 1, HG_EFFECT);
        
//     break;
    
//     case AT_NSPECIAL:
//     nspec_loops = 0;
//     break;
// }

switch(attack)
{

    case AT_NSPECIAL:
    mining_loops = 0;
    
    if (free || stand_dirt)
    attack = AT_EXTRA_3;



    break;

    case AT_TAUNT:
    if (down_down){
        attack = 42;

    }
    break;
}

if (down_charge == 2 && attack_pressed && !free){
    attack = AT_FSPECIAL_2;
}

// if (elec_charge < 0)
//     elec_charge = 0;



// if (attack = AT_DATTACK && dp==3)
// {
//     attack = AT_EXTRA_1;
//     dp=0;
// }




// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
if (!is_nana){

// if (dd == 3 && special_pressed){
//     attack = 49;
// }

// if (dd == 3 && attack_pressed){


//     if (ace_attorney_state == 0){
//         ace_attorney_state = 1;
//     }
//     else if (ace_attorney_state == 1){
//         ace_attorney_state = 0;
//     }

//     clear_button_buffer( PC_ATTACK_PRESSED );
//     set_state(PS_IDLE);
// }


// if (attack_pressed && special_pressed){
//     if (left_down && spr_dir == -1)||(right_down && spr_dir == 1)
//         evidence_slot = 1;
//     else if (down_down)
//         evidence_slot = 2;
//     else
//         evidence_slot = 0;

//     if (evidence[evidence_slot][0] != undefined)
//             attack = 46;
// }

striked = false;
is_safe = false;

muno_event_type = 2;
user_event(14);
}
else
{
    ewgf = popo.ewgf;
    omen = popo.omen;
    ewgf_real = popo.ewgf_real;

    move_cooldown[AT_NSPECIAL] = 2;
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_EXTRA_3] = 2;
}