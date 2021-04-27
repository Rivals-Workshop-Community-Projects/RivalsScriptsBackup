if (!custom_clone){
user_event(13);


if (hologram_is_alive && attack == AT_NSPECIAL){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_FSPECIAL && free){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_DSPECIAL && free){
    attack = AT_DSPECIAL_AIR;
}

}