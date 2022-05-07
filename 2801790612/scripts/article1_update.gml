switch(state) {
    case PS_IDLE:
        if (state_timer < 3) {
            sprite_index = spr_imp;
        }
        if (explode == true) {
            sprite_index = spr_exp;
            image_index = explode_timer / 2;
        }
        else {
            sprite_index = spr_idle;
        }

        if (free) {
            if (vsp < 5) {
                vsp = 5;
            }
            else if (state_timer % 4 == 0) {
                vsp += 0.2;
            }
        }
        else {
            if (!now_grounded) {
                spawn_hit_fx( x, y, 13 );
                sound_play(player_id.sfx_pepsi_bounce);
                now_grounded = true;
            }
            vsp = 0;
        }
    break;
}

if (free) {
    if (air_time < 6) {
        if (!instance_exists(sbox)) {
            with (player_id)
                other.sbox = create_hitbox(AT_DSPECIAL, 5, other.x, other.y + 5);
        }
        air_time += 1;
    }
    else {
        instance_destroy(sbox);
    }

    if (!instance_exists(hbox)) {
        with (player_id)
            other.hbox = create_hitbox(AT_DSPECIAL, 4, other.x, other.y - 15);
    }
}
else {
    if (instance_exists(hbox)) instance_destroy(hbox);
    if (instance_exists(sbox)) instance_destroy(sbox);
}

if (instance_exists(hbox)) {
    with (hbox) {
        if (player_id == other.player_id) {
            if (attack == AT_DSPECIAL && hbox_num == 4) {
                y = other.y - 15;
            }
        }
    }
}
if (instance_exists(sbox)) {
    with (sbox) {
        if (player_id == other.player_id) {
            if (attack == AT_DSPECIAL && hbox_num == 5) {
                y = other.y + 5;
            }
        }
    }
}

//if (free && !instance_exists(hbox)) {
//    with (player_id)
//        other.hbox = create_hitbox(AT_DSPECIAL, 4, other.x, other.y - 27);
//} 
//else if (!free && instance_exists(hbox)) {
//    instance_destroy(hbox);
//}
//else (instance_exists(hbox)) {
//    with (hbox) {
//        if (player_id == other.player_id) {
//            if (attack == AT_DSPECIAL && hbox_num == 4) {
//                //x_pos = ((other.x) - other.player_id.x);
//                y = other.y - 24;
//                //hsp = other.hsp;
//                //vsp = other.vsp;
//            }
//        }
//    }
//}

if (launch) {
    var new_instance = create_hitbox(AT_DSPECIAL, 1, x, y);
    player_id.bounce_count = 0;
    new_instance.spr_dir = player_id.spr_dir;
    player_id.hsp -= 3 * player_id.spr_dir;
    destroy = true;
}

if (explode) {
    if (explode_timer < 6) {
        explode_timer += 1;
    }
    else {
        spawn_hit_fx(x, y, player_id.vfx_pepsi_burst);
        var new_instance_one = create_hitbox(AT_DSPECIAL, 2, x, y);
        new_instance_one.spr_dir = player_id.spr_dir;
        new_instance_one = noone;
        var new_instance_two = create_hitbox(AT_DSPECIAL, 3, x, y);
        new_instance_two.spr_dir = player_id.spr_dir;
        new_instance_two = noone;
        sound_play(player_id.sfx_pepsi_crash);
        destroy = true;
    }
    
}

if (y > room_height) {
    destroy = true;
}

if (destroy) {
    if (instance_exists(hbox)) instance_destroy(hbox);
    player_id.pepsimachine = noone;
    instance_destroy();
    exit;
}

state_timer ++;
y += vsp;