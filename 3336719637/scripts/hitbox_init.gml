//hitbox_init.gml
//hitbox_init works similarly to init.gml, we put all our hitbox variables in here, the ones that we will later use in hitbox_update.gml

//if the destroy effect isn't set, just make it the hit effect (no idea why this *isn't* a thing)
if (destroy_fx == 0) destroy_fx = hit_effect;

switch (attack){
    case AT_DSPECIAL: //shotgun blast
        initial_hsp = hsp;
        initial_vsp = vsp;
    break;
}