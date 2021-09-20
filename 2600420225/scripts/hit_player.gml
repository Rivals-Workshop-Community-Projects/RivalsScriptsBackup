if(level <= 16 && my_hitboxID.attack != AT_USPECIAL_GROUND && my_hitboxID.attack != AT_NSPECIAL_2 && my_hitboxID.attack != AT_NSPECIAL_AIR && my_hitboxID.attack != AT_FSPECIAL_2 && my_hitboxID.attack != AT_FSPECIAL_AIR && my_hitboxID.attack != AT_USPECIAL_2 ){
    if(hit_counter >= 9){
    hit_counter = 0;
    level++;
    sound_play(sound_get("item_acquisition"));
    popup_timer = 0;
    }else{
    hit_counter++;
    }
}
is_shinesparking = false;
charging_timer = 0;

is_shinesparking = false;