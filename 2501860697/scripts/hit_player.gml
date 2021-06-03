     
        if (attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 2) {    
       var k = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, fspecial_fx1);
       k.depth = depth - 1;
        }
        
    if (attack == AT_FAIR){
    if my_hitboxID.hbox_num == 2 {
            sound_play(asset_get("sfx_blow_heavy1"));
        
    }
}    
    