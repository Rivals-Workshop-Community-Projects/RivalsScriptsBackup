//hit_player - called when one of your hitboxes hits a player

if(my_hitboxID.kb_scale > 0 && chak_exists){
    with(pHitBox){
        if(player == other.player && attack == AT_FSPECIAL && hbox_num == 2 && 
        sprite_index == sprite_get("fspec3_proj")){
            hit_priority = 0;
        }
    }
}