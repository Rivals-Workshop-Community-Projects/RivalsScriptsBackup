//hit_player.gml

switch (my_hitboxID.attack) {
    case AT_DAIR:
        //counts as a melee hit and removes whifflag, but only if the opponent is stunned by it.
        if (opponent_is_in_hitstun()) {
            has_hit = true;
            has_hit_player = true;
        }
    break;
    
    case AT_NSPECIAL:
        //counts as a melee hit and removes whifflag, but only if the opponent is stunned by it AND peacock is still performing the nspecial animation.
        if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL && opponent_is_in_hitstun()) {
            has_hit = true;
            has_hit_player = true;
        }
    break;
    
    case AT_UAIR:
        if (my_hitboxID.hit_flipper == 9 && opponent_is_in_hitstun()) {
            hit_player_obj.old_vsp = -2;
            hit_player_obj.should_make_shockwave = false;
        }
    break;
    
    case AT_NAIR:
        //fall slower to make combo chains easier.
        if (my_hitboxID.hbox_num > 1) {
            if (old_vsp <= max_fall) old_vsp = min(old_vsp, 2);
        }
        else {
            if (old_vsp <= max_fall) old_vsp = min(old_vsp, 2);
            peacock_can_nair_cancel = true;
        }
    break;
    
    case AT_DSPECIAL:
        if (!instance_exists(peacock_article_doom_id)) break;
        switch (my_hitboxID.hbox_num) {
           case 1:
           case 2:
           case 3:
                var this_attack_hitbox_id = my_hitboxID;
                with (peacock_article_doom_id) {
                    if (hitbox_id == this_attack_hitbox_id) {
                        article_hitlag = max(article_hitlag, hitbox_id.hitpause);
                    }
                }
            break;
            case 4:
            case 5:
                if (opponent_is_in_hitstun()) {
                    peacock_article_doom_id.grabbed_player_id_array[hit_player_obj.player] = hit_player_obj;
                    peacock_article_doom_id.depth = -50;
                }
            break;
       }
    break;
}


#define opponent_is_in_hitstun

return (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND);