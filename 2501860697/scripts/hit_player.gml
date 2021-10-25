if (my_hitboxID.attack == AT_FSPECIAL_AIR && (my_hitboxID.hbox_num == 2))
{
    my_hitboxID.is_exploding = true;
}
     
    
if (attack == AT_FAIR){
    if my_hitboxID.hbox_num == 2 {
            sound_play(asset_get("sfx_blow_heavy1"));
        
    }   
}else if (attack == AT_UAIR){
    if my_hitboxID.hbox_num == 2 {
            sound_play(asset_get("sfx_blow_medium2"));
        
    }   
} 

/*
if (attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 2){
        var k = spawn_hit_fx(hit_player_obj.x + 40, hit_player_obj.y - 30, fspecial_fx1);
       k.depth = depth - 1;
}
*/