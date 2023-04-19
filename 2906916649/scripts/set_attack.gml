//set_attack



if(attack == AT_JAB){
PickledCritz = random_func( 0, 10, true);
if(PickledCritz == 7){
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_p"));
}else{
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
}
}



if(attack == AT_BAIR){
PickledCritz = random_func( 0, 10, true);
if(PickledCritz == 7 || InkTank <= MinInkTank){
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_pickled"));
    set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, pickledsplat);
    set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("bonk"));
}else{
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
    set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, Inksplode);
    set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("BombExplosion00"));
}
}


if(attack == AT_FSPECIAL){
PickledCritz = random_func( 0, 10, true);
if(PickledCritz == 7){
    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("bonk"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_pickled_proj"));
}else{
    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
}
}

/*
if(attack == AT_NSPECIAL){
   attack = AT_EXTRA_2;
    
}
*/