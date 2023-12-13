//set_attack
/*
if attack == AT_NSPECIAL {
    attack = 49;
}
*/

throwing_wt = false;
picking_wt = false;

height_timer = 0;

if attack == AT_DSPECIAL {
    //wt pickup
    if !holding_wt {
        with obj_article1 {
            if player_id == other.id && !other.has_picked_up {
                if near_player && !other.picking_wt && id == player_id.wt_closest {
                    with other {
                        if !free {
                            attack = AT_DTILT;
                            window_timer = 0;
                            window = 1;
                            picking_wt = true;
                            destroyID = other.id;
                            if (other.x - x)*spr_dir < 0 {
                                spr_dir *= -1;
                            }
                        } else {
                            move_cooldown[AT_DSPECIAL] = 0;
                            attack = AT_DSPECIAL;
                            window_timer = 0;
                            window = 1;
                            picking_wt = true;
                            hold_colour = other.colour;
                            instance_destroy(other.id);
                        }
                    }
                    exit;
                }
            }
        }
    }
    
    //take out/put away
    if window_timer == 0 && move_cooldown[AT_DSPECIAL] == 0 {
        if holding_wt && !picking_wt {
            window = 2;
            holding_wt = false;
        } else if num_wt < num_wt_max {
            window = 1;
            hold_colour = next_colour;
            holding_wt = true;
        }
    }
    
    //honk
    if move_cooldown[AT_DSPECIAL] != 0 && sprite_index == sprite_get("crouch") && image_index == 2 {
        attack = AT_DSPECIAL_2;
        window_timer = 0;
        window = 1;
    }
    
}

if holding_wt {
    if attack == AT_FSTRONG {
        attack = AT_FTILT;
        throwing_wt = true;
    }
    
    if attack == AT_USTRONG {
        attack = AT_UTILT;
        throwing_wt = true;
    }
    
    if attack == AT_DSTRONG {
        attack = AT_DTILT;
        throwing_wt = true;
    }
    
    if aerial_throws && state == PS_ATTACK_AIR && (up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) {
        throwing_wt = true;
    }
}

if attack == AT_TAUNT && holding_wt {
    var wt = instance_create(x + 30*spr_dir, y - 30, "obj_article1");
        wt.player_id = id;
        wt.hsp = 0;
        wt.vsp = 4;
        wt.spr_dir = spr_dir;
        wt.colour = hold_colour;
        wt.sprite_index = sprite_get("wt_" + hold_colour);
    holding_wt = false;
    
    var hitbox = create_hitbox(AT_DSPECIAL, 1, x + 30*spr_dir, y - 10);
        hitbox.wt = wt.id;
}

draw_non = true;

//munophone
//user_event(13);