///#args attack // this line makes code editors not freak out for some reason
elec_vfx = false;

switch(attack)
{
    case AT_FTILT:
    case AT_DTILT:
    case AT_NAIR:
    case AT_DAIR:

    case AT_FSTRONG:
    case AT_DSTRONG:
    case AT_USTRONG:
         if (electrified)
        {
            for (var loops = 0; loops <= get_num_hitboxes( attack );loops++){
            set_hitbox_value(attack, loops, HG_EFFECT, 11);
            }
            elec_charge -= elec_drain;
            elec_vfx = true;
        }
        else
        {
            for (var loops = 0; loops <= get_num_hitboxes( attack );loops++){
            reset_hitbox_value(attack, loops, HG_EFFECT);
            }
        }
        
    break;
       
    case AT_JAB:
        if (electrified){
        set_hitbox_value(attack, 3, HG_EFFECT, 11);
        elec_vfx = true;
        }
        else
        reset_hitbox_value(attack, 3, HG_EFFECT);
        
        
    break;
    
    case AT_FAIR:
        if (electrified){
        set_hitbox_value(attack, 1, HG_EFFECT, 11);
        elec_charge -= elec_drain;
        elec_vfx = true;
        }
        else
        reset_hitbox_value(attack, 1, HG_EFFECT);
        
    break;
    
    
    case AT_FSTRONG_2:
        if (electrified){
        set_hitbox_value(attack, 3, HG_EFFECT, 11);
        elec_vfx = true;
        }
        else
        reset_hitbox_value(attack, 3, HG_EFFECT);
        
        
    break;
    
    case AT_USTRONG_2:
        if (electrified){
        set_hitbox_value(attack, 1, HG_EFFECT, 11);
        elec_charge -= elec_drain;
        elec_vfx = true;
        }
        else
        reset_hitbox_value(attack, 1, HG_EFFECT);
        
    break;
    
    case AT_NSPECIAL:
    nspec_loops = 0;
    break;
}







// if (attack = AT_DATTACK && dp==3)
// {
//     attack = AT_EXTRA_1;
//     dp=0;
// }


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);