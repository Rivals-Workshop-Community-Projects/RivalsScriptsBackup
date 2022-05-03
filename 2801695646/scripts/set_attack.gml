///#args attack // this line makes code editors not freak out for some reason
var _holdtype = dict_equipment[inv_firearm].hold_type;							// Get the current hold type. (0 = N/A, 1 = One-Handed, 2 = Two-Handed)

if (_holdtype == 2) {                                                           // If holding a two-handed weapon...
    
    switch (attack) {
        
        case AT_JAB:
            attack = AT_EXTRA_2;                                                // Do a rifle bash
        break;
        
    }
    
}

else {                                                                          // If unarmed, or holding a one-handed weapon...
    
    switch (attack) {
        
        case AT_FSTRONG:
        case AT_USTRONG:
        case AT_DSTRONG:
            attack = AT_NTHROW;                                                 // Perform a CQC grab.
        break;
        
    }
    
}

// Change Weapon Attack Windows
/*switch (attack) {
    
    case AT_FSTRONG:
        user_event(1);                                                          // Change the attack windows, depending on what the currently equipped firearm is.
    break;
    
}*/

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
//muno_event_type = 2;
//user_event(14);