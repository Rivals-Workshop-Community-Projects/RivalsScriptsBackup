 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
    
if (my_hitboxID.attack == AT_FSPECIAL) {
    create_hitbox(AT_DSPECIAL , 1 , x , y - 110 );  
    x = hit_player_obj.x 
    y = hit_player_obj.y
}

if (my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_FTHROW) {
    parry_lag = 90;
}


voicecd = 90
dmhit = 0
halo = 0

if zvoice != 0 {
 sound_stop(zvoice)
}