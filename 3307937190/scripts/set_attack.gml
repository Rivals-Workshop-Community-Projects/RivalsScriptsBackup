///#args attack
//  ^ this line up here makes gmedit not freak out

for(as = 0; as < get_num_hitboxes(attack); as ++)
{
    if(get_hitbox_value(attack, as, HG_DRIFT_MULTIPLIER) != 1 && get_hitbox_value(attack, as, HG_DRIFT_MULTIPLIER) != 0.1)
        set_hitbox_value(attack, as, HG_DRIFT_MULTIPLIER, 1);
}

//set_attack.gml
switch(attack)
{
    case AT_UTILT:
		reset_attack_value(AT_UTILT, AG_CATEGORY);
        break;
        
    case AT_FSPECIAL:
		reset_attack_value(AT_FSPECIAL, AG_CATEGORY);
        break;
    case AT_NSPECIAL:
        if(ink_hold == 1) 
        {
            set_attack_value(attack, AG_NUM_WINDOWS, 6);
            set_attack_value(attack, AG_SPRITE, sprite_get("nspecial2"));
            set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
            window = 4;
        }
        else if(ink_hold == 2) 
        {
            set_attack_value(attack, AG_NUM_WINDOWS, 9);
            set_attack_value(attack, AG_SPRITE, sprite_get("nspecial3"));
            set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("nspecial3_hurt"));
            window = 7;
        }
        else
        {
            reset_attack_value(attack, AG_SPRITE);
            reset_attack_value(attack, AG_HURTBOX_SPRITE);
        }
        break;
}

created_smear = false;