if (unpopped) {
    if (abs(hsp) > 2) {
        hsp *= 1 - (abs(hsp * 1.5) / 100.00);
    } else {
        hsp *= .98;
        hsp += -0.01 + random_func(random_index * 2, 2, false ) / 100.0
    }
    if (abs(vsp) > 2) {
        vsp *= 1 - (abs(vsp * 1.5) / 100.00);
    } else {
        vsp *= .98;
        vsp += -0.01 + random_func(random_index, 2, false ) / 100.0
    }
    
    with (asset_get("pHitBox")){
        var hit_before = player_id.has_hit;
        if (place_meeting(x, y, other.id) && (attack != AT_NSPECIAL || player_id != other.player_id) && !(player_id == other.player_id && (attack == AT_DSPECIAL || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG))){
            other.unpopped = false;
            player_id.has_hit = hit_before;

            other.hit = true;
        }
    }
    
    if (hit) {
        ignores_walls = true;
        sprite_index = sprite_get("bubblepop");
        mask_index = sprite_get("bubblepop");
        sound_play(asset_get("sfx_bubblepop"));
        life = lifetime - 8;
        hsp = 0;
        vsp = 0;
        
        hit = false;
    }
} //end unpopped
else {
    with(asset_get("oPlayer")) {
        if (place_meeting(x,y, other.id) && get_player_team(self) != get_player_team(other.player_id)) {
            if (!other.damaged) {
                
                take_damage(player, other.player_id, 1);
                
                if (hitpause && state_cat == SC_HITSTUN) {
                    hitstop += 6;
                }
                
                other.damaged = true;
            }
        }
    }
}

life++
if (life > lifetime) {
    instance_destroy(id);
}

//remove in plasma
with (asset_get("plasma_field_obj")){
    with (other.id){
        if (get_player_team(get_instance_player(other)) != get_player_team(player)){
            if (point_distance(x, y, get_instance_x(other), get_instance_y(other)) < 180){
                instance_destroy(id);
            }
        }
    }
}
