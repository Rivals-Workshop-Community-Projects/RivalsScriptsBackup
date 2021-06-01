//hit

if(attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    sound_stop(asset_get( "sfx_ell_hover" ));
}

move_cooldown[AT_FSPECIAL] = 0