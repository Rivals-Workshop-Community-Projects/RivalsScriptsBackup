
if(random_func(1,10,true) > 6){
    if(voice_enabled == true){
        sound_play( sound_get(hit[random_func(0, 5, true)]));
    }
sound_play( sound_get("Damage00"));   
}


if(get_player_damage( player ) >= 50 && random_func(1,10,true) > 4){
if (abs(old_hsp) > 6 || abs(old_vsp) > 6){
    
    spawn_hit_fx(x - 20 * spr_dir, y, Inksplode);
}else{
    
    spawn_hit_fx(x - 20 + (random_func( 40, -40, true) * spr_dir), y + random_func( 60, -60, true), Inksplat);
    if(voice_enabled == true){
        sound_play( sound_get(hit[random_func(4, 7, true)]));
    }
}
}

