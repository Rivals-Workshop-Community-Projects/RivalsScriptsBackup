

///#args attack // this line makes code editors not freak out for some reason

trick_fall = false;
jc_buff = false;
jce_loop = 0;
uspec_buff = false;
dist_range = 150;
fspec_charge = 0;

sound_stop(sound_get("motivated"));

grabbed_player = noone;

switch(attack){
    
    case AT_NSPECIAL:
    case AT_DSPECIAL:
    case AT_USPECIAL:
    case AT_FSPECIAL:
    if (free && move_cooldown[attack] == 0){
    vsp = -4;
    
    hsp /= 2;
    }
        jc_pointblank = false;
        


    break;
    
    case AT_FAIR:
    
    if (move_cooldown[attack] > 0)
    attack = AT_NAIR;
    
    break;
    
}





