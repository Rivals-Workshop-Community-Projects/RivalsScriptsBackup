//actual code stuff
//if axes hit the opponent, return
if ((my_hitboxID.attack == AT_FTILT) or (my_hitboxID.attack == AT_FSPECIAL)) && (my_hitboxID.player_id == self) {
    my_hitboxID.ayaka_axe_timer = 20;
}

if (my_hitboxID.attack == AT_FSPECIAL_RED) {
    my_hitboxID.ayaka_axe_timer = 58;
}
if (my_hitboxID.attack == AT_FSPECIAL_BLUE) {
    my_hitboxID.ayaka_axe_timer = 46;
}
if (my_hitboxID.attack == AT_FSPECIAL_GREEN) {
    my_hitboxID.ayaka_axe_timer = 22;
}

//hitbox gamefeel code
//here you can add extra sounds for when you hit someone
//cause base cast sfx by itself is doo doo
switch(my_hitboxID.attack) {
    case AT_JAB:
        if my_hitboxID.hbox_num < 4 {
            //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.15,0.8);
            //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.4,1.25);
        } else {
            //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.85,0.8);
            //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.75,1.35);
        }
        break;
    case AT_DATTACK:
        sound_play(asset_get("sfx_blow_medium2"));
        //sound_play(asset_get("sfx_ell_nair"),false,noone,0.55,1.75);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.45,0.8);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.75,1.25);
        break;
    case AT_FTILT:
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.45,0.8);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.75,1.65);
        break;
    case AT_FSPECIAL:
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.45,0.8);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.75,1.65);
        break;
    case 46: //green fspec
        sound_play(asset_get("sfx_blow_medium1"));
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.45,0.8);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.75,1.65);
        break;
    case AT_DTILT:
        sound_play(asset_get("sfx_blow_weak2"));
        //sound_play(asset_get("sfx_ell_nair"),false,noone,0.55,1.75);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.3,0.7);
        //sound_play(asset_get("sfx_ice_back_air"),false,noone,0.7,1.2);
        break;
    case AT_UTILT:
        break;
    case AT_NAIR:
        break;
    case AT_FAIR:
        break;
    case AT_DAIR:
        sound_play(asset_get("sfx_blow_heavy1"));
        break;
    case AT_BAIR:
        sound_play(asset_get("sfx_blow_heavy2"));
        break;
    case AT_UAIR:
        if(my_hitboxID.hbox_num == 2) sound_play(asset_get("sfx_blow_medium1"));
        break;
    case AT_FSTRONG:
        sound_play(sound_get("sfx_sharphit_l"));
        break;
    case AT_DSTRONG:
        sound_play(asset_get("sfx_blow_heavy1"));
        break;
    case AT_USTRONG:
    if(my_hitboxID.hbox_num == 3) sound_play(asset_get("sfx_blow_heavy1"));
        break;
    case AT_NSPECIAL:
        break;
    case AT_DSPECIAL:
        break;
    case AT_USPECIAL:
        break;
}