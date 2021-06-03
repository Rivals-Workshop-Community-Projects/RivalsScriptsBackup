//throws if holding house
if holding_house_is {
    if joy_pad_idle {
        set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow_lv"+string(holding_house_level)));
        attack = AT_NTHROW;
    } else if ((left_down or left_pressed) or (right_down or right_pressed)) {
        if (left_down or left_pressed) {
            spr_dir = -1;
        } else if (right_down or right_pressed){
            spr_dir = 1;
        }
        set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nthrow_lv"+string(holding_house_level)));
        attack = AT_FTHROW;
    } else if (up_down or up_pressed) {
        set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow_lv"+string(holding_house_level)));
        attack = AT_UTHROW;
    }   else if (down_down or down_pressed) {
        set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow_lv"+string(holding_house_level)));
        attack = AT_DTHROW;
    }
}

//nspecial house pickup/shine setting
if attack == AT_NSPECIAL {
    should_pickup = false;
    should_shine = false;
    with(obj_article1) {
        if player_id == other.id && point_distance(x,y,other.x,other.y) < 75 {
            if !(state == -1 or state == 2 or state == 5 or state == 6) {
                other.should_pickup = true;
                other.pickup_house = self;
            }
        }
    }
    if !should_pickup && houses_amount_rn >= houses_amount_max {
        should_shine = true
    }
    if should_pickup {
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
        window = 4
    } else if should_shine {
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 9);
        window = 7
    } else {
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
    }
}

//uspecial window reset
if attack == AT_USPECIAL {
    set_attack_value(AT_USPECIAL,AG_NUM_WINDOWS,6)
}

//reset
if attack == AT_FSPECIAL {
    set_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS,3)
    
    //reset house hit hitboxes
    reset_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING);
    
    //reset grab variables
    consume_house = noone;
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}


//user_event(13); no munophono for now