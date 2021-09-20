//AI init

//====> ATTACK DISTRIBUTION #######################################################

only_attack_mode = false;
only_attack = AT_NSPECIAL;

if (!only_attack_mode)
{
    far_up_attacks = [
        AT_USPECIAL, 
        AT_NSPECIAL
    ]
    far_down_attacks = [
        AT_NSPECIAL
    ]
    far_side_attacks = [
        AT_NSPECIAL, 
        AT_FSPECIAL
    ]
    mid_side_attacks = [
        AT_NSPECIAL, 
        AT_DATTACK, 
        42, 
        AT_FSPECIAL
    ]
    close_up_attacks = [
        AT_UTILT, 
        AT_USTRONG, 
        AT_USPECIAL
    ]
    close_down_attacks = [
        AT_JAB, 
        AT_DSTRONG, 
        AT_DAIR
    ]
    close_side_attacks = [
        AT_NAIR, 
        AT_FTILT, 
        AT_UTILT, 
        AT_DTILT, 
        AT_FAIR, 
        AT_BAIR, 
        AT_USPECIAL, 
        AT_DATTACK, 
        42
    ]
    neutral_attacks = [
        AT_JAB, 
        AT_FTILT, 
        AT_UTILT, 
        AT_DTILT
    ]
}
else {
    far_up_attacks = [
        only_attack
    ]
    far_down_attacks = [
        only_attack
    ]
    far_side_attacks = [
        only_attack
    ]
    mid_side_attacks = [
        only_attack
    ]
    close_up_attacks = [
        only_attack
    ]
    close_down_attacks = [
        only_attack
    ]
    close_side_attacks = [
        only_attack
    ]
    neutral_attacks = [
        only_attack
    ]
}

//====> CONSTANTS #######################################################

//DATTACK
c_dattack_cool = 10;

//NSPECIAL
c_nspecial_chargeFor = 6;

//====> VARIABLES #######################################################

//DATTACK
dattack_cool = 0;

//NSPECIAL
nspecial_aiFlag = false;

//END