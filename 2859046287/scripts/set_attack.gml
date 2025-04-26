///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
//this script runs at on the first frame of an attack, sort of like an init.gml but for attack_update.gml

is_attacking = true; //attack check - it's always PS_ATTACK_GROUND or PS_ATTACK_AIR in set_attack

switch (attack)
{
    case AT_FTILT: //reset my_grab_id
        my_grab_id = noone;
        break;
    case AT_DSTRONG: //reset hitbox values to use the multihit values again
        reset_hitbox_value(attack, 1, HG_WIDTH);
		reset_hitbox_value(attack, 1, HG_HEIGHT);
        reset_hitbox_value(attack, 1, HG_HITBOX_X);
		reset_hitbox_value(attack, 1, HG_DAMAGE);
		reset_hitbox_value(attack, 1, HG_ANGLE);
		reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(attack, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(attack, 1, HG_HIT_SFX);
		
		reset_hitbox_value(attack, 2, HG_HITBOX_X);
        break;
    case AT_BAIR: //because the landing lag changes based on if we used the tap/hold, we reset it here just in case
        reset_attack_value(attack, AG_LANDING_LAG);
        break;
    case AT_FSPECIAL: //trigger the once per airtime check
        can_fspec = false;
        break;
    case AT_DSPECIAL: //transitions to window 6 (teleport startup) when the article exists
        if (instance_exists(artc_dspec)) window = 6;
        break;
    case AT_TAUNT: //reset taunt ending duration AND redirect to taunt 2 if down is held
    	reset_window_value(attack, 7, AG_WINDOW_LENGTH);
        if (down_down) attack = AT_TAUNT_2;
        break;
}

if (attack == AT_TAUNT && up_down) attack = AT_INTRO;