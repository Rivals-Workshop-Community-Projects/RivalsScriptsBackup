switch (pig_state) {
    case 0:
        // adjust to match desired animation speed
        rip = false;
        image_index = pig_state_timer / 4;
        if (pig_state_timer = 1) {
        sound_play(sound_get( "pigoink" ));
        }
        if (pig_state_timer > 20) {
            if (free) switch_state(2);
            else switch_state(1);
        }
        break;
    case 1:
        image_index = pig_state_timer / 6;
        hsp = 0
        if (free && pig_state_timer > 4) {
            switch_state(2);
        }
        
        if (called) {
            to_move_x = player_id.x + 4 * spr_dir;
            to_move_y = player_id.y + 4;
            to_move_angle = point_direction(x, y, player_id.x, player_id.y);
            if (to_move_x < x) spr_dir = -1;
            else spr_dir = 1;
            switch_state(3);
        }
    
        break;
    case 2:
        image_index = pig_state_timer / 4;
        hsp = 0.1
        if (pig_state_timer > 180) {
            destroy = true;
        }
            if (!free && just_hit = false) {
                switch_state(1);
            }
            else 
            vsp += 0.25;
            hsp += 0.1 * spr_dir;
            if (just_hit = true && !free) {
                    switch_state(6);
            }
            else 
            vsp += 0.25;
            hsp += 0.1 * spr_dir;
            break;

    case 3:
        image_index = pig_state_timer / 5;
        if (pig_state_timer > 24) switch_state(4);
        break;
    case 4:
        image_index = pig_state_timer / 4;
        hsp = lengthdir_x(charge_speed, to_move_angle)
        vsp = lengthdir_y(charge_speed, to_move_angle)
        var dist = point_distance(x, y, to_move_x, to_move_y)
        if (!instance_exists(hbox)) {
            with (player_id) {
                other.hbox = create_hitbox(AT_DSPECIAL, 1, other.x + 10 * spr_dir, other.y - 36);
                with (other.hbox){
                if was_parried = true{
                    switch_state(6);
                }
                }
            }
        }
        else {
            hbox.x = x + 10 * spr_dir;
            hbox.y = y - 36;
        }
        if (dist < 15) {
            if (instance_exists(hbox)) instance_destroy(hbox);
            hsp = 0;
            vsp = 0;
            called = false;
            switch_state(1);
        }
        image_index = pig_state_timer / 4;
        if (pig_state_timer > 40) {
            if (pig_state_timer > 40 && free){
                switch_state(2);
                called = false;
            }
            else if (!free) {
                switch_state(6);
                called = false;
            }
        }
        break;
    case 5:
        image_index = pig_state_timer / 4;
        pig_hit += 1;
        just_hit = true;
        if (pig_state_timer > 15) {
            vsp += 0.2
            if (pig_state_timer > 39 && free){
                switch_state(2);
            }
            else if (pig_state_timer > 39 && !free) {
                switch_state(6);
            }
        }
        break;
    case 6:
        image_index = pig_state_timer / 8;
        hsp = 0.05
        just_hit = false;
        if (pig_state_timer = 1){
        sound_play(sound_get( "pigflo" ));
        }
        if (pig_state_timer > 250) {
            called = false;
            switch_state(1);
        }
        break;
    case 7:   //taunt
        image_index = pig_state_timer / 2;
        //pig_state_timer = 0;
        //hsp = 0;

    if (pig_state_timer > 70){
         pig_state_timer = 0;
        switch_state(1);
    }

        break;
    case 8:
        image_index = pig_state_timer / 8;
        if (pig_state_timer > 70) {
            destroy = true;
        }
        break;
}

if (pig_hit = 117){
    pig_hit = 0;
    switch_state(8);
}

if (destroy) {
    player_id.move_cooldown[AT_DSPECIAL] = 650;
    rip = true;
    sound_play(sound_get( "pigout" ));
    instance_destroy();
    exit;
}


pig_state_timer++;

#define switch_state(state_num)
pig_state = state_num;
pig_state_timer = 0;
if (state_num == 0) sprite_index = spr_spawn;
if (state_num == 1) sprite_index = spr_idle;
if (state_num == 2) sprite_index = spr_fall;
if (state_num == 3) sprite_index = spr_charge;
if (state_num == 4) sprite_index = spr_attack;
if (state_num == 5) sprite_index = spr_hit;
if (state_num == 6) sprite_index = spr_land;
if (state_num == 7) sprite_index = spr_taunt;
if (state_num == 8) sprite_index = spr_die;
image_index = 0;