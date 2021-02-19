switch(my_hitboxID.attack){
    case AT_NSPECIAL:
        if (my_hitboxID.sprite_index == spr_ball) with(my_hitboxID){
            if !("dont_bounce" in self){
                bouncing_foe = true;
                hsp = 0;
                vsp = -7;
                hitpause_timer = other.hit_player_obj.hitstop - (hbox_num == 8 ? 44 : 0);
                in_hitpause = true;
                hitbox_timer = ("from_ustrong" in self || player != orig_player) ? length - 30 : 0;
                if ("melee_ustrong" in self){
                    y -= 40;
                }
                bouncing_dthrow = false;
            }
            else{
                hitbox_timer = length;
            }
        }
        sound_play(sfx_ball_hit_added);
        if (my_hitboxID.hbox_num == 8){
            sound_play(asset_get("sfx_absa_kickhit"));
            sound_play(asset_get("sfx_absa_concentrate"));
            hit_player_obj.otto_8ball_hitstop_fix = true;
            hit_player_obj.otto_8ball_hitstop_amt = my_hitboxID.hitpause + my_hitboxID.extra_hitpause;
            my_hitboxID.has_hit_somebody_already = true;
        }
        break;
    case AT_EXTRA_1:
        my_hitboxID.hitpause_counter = hit_player_obj.hitstop;
        with(my_hitboxID.article_owner){
            if bike_fresh_hitbox{
                should_hurt = true;
                bike_fresh_hitbox = false;
            }
        }
        break;
    case AT_USTRONG:
        if ball_charge{
            hit_player_obj.orig_knock = ease_linear(19, 12, clamp(y - hit_player_obj.y, 0, fixed_char_height), fixed_char_height);
        }
}