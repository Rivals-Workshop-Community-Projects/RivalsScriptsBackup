//hitbox
//hitbox_init.gml
explode_timer = -1;

if (attack == AT_DSPECIAL){
     proj_reflectable = 1 ;
     MorshuCanGrab = true;
     MattCanGrab = true;
}

if (attack == AT_NSPECIAL){
     no_absorb = 1 ;
}

if (attack == AT_USPECIAL){
     no_absorb = 1 ;
}