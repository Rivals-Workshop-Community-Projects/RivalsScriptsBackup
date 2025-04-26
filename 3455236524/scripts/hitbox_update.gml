if (attack == AT_NSPECIAL){
    if (hbox_num == 3){
        with (pHitBox){
            if (player != other.player && type == 2 && hit_priority > 0 && hsp != 0){
                if (place_meeting(x,y,other)){
                    other.player_id.nspecial_proj = true;
                    other.player_id.nspecial_hsp = hsp;
                    other.player_id.nspecial_damage = damage;
                    other.player_id.nspecial_kb_value = kb_value;
                    other.player_id.nspecial_kb_scale = kb_scale;
                    destroyed = true;
                }
            }
        }
    }
}