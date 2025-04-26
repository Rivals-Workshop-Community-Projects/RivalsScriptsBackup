///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

if !move_cooldown[attack] switch (attack)
{
    case AT_FSTRONG:
        if (!is_sparking || !is_guardian)
        {
           set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 24); 
           set_window(23);
        } 
        if (is_sparking || is_guardian || is_super || has_rune("G"))
        {
            set_window(1);
            set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2); 
        }  
        break;
    case AT_FSPECIAL:
        if (free) attack = AT_FSPECIAL_AIR;
        break;
    case AT_NSPECIAL:
        if (free) attack = AT_NSPECIAL_AIR;
        break;        
        
    case AT_DSPECIAL:
        if (is_sparking) 
        {
            attack = AT_EXTRA_2;
        }
        if (is_super) 
        {
            attack = AT_DSPECIAL_2;
        }        
        if (is_guardian && has_rune("N")) 
        {
            attack = AT_DSPECIAL_2;
        }
        else if (is_guardian)
        {
            attack = AT_EXTRA_2;
        }
        break;           
        
    case AT_TAUNT:
        if (is_sparking)
        {
            if (!down_down) set_window(4);
            else set_window(9);
        }
        if (is_guardian) set_window(13);
        if (is_super) set_window(16);
        break;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion