//article2_update, bullet

if (_init == 0) {
    _init = 1;
    //h_box = create_hitbox(AT_NSPECIAL,1,x,y);
    //spr_dir = player_id.spr_dir
    /*with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state < 2) {
            state = 2;
            state_timer = 0;
            //sprite_index = sprite_get("shot");
        }
        
    }*/
    with obj_article1 {
        if player_id == other.player_id {
            other.gun = id;
        }
    }
    //print_debug(string([x,y]));
    if gun != noone && gunmade {
        vel_dir = gun.image_angle;
        image_angle = vel_dir;
    }
    if spr_dir == -1 vel_dir += 180;
    visible = true;
    
}


/*if state_timer < sprite_size_time {
    image_xscale = state_timer/sprite_size_time;
}*/


if (state == 0) { //building
    state_timer++;
    image_index = state_timer*anim_speed;
    vsp = -dsin(vel_dir)*vel_max;
    hsp = dcos(vel_dir)*vel_max;
    collis_obj = instance_place(x,y,oPlayer);
    if collis_obj != noone && collis_obj != player_id  && !collis_obj.invincible {
        create_hitbox(AT_NSPECIAL,1,x,y);
        state = 2;
    }
    /*with h_box {
        x = other.x+(dcos(other.vel_dir)*other.vel_max);
        y = other.y-(dsin(other.vel_dir)*other.vel_max);
    }*/
    if state_timer > stay_time {
        state = 2;
    }
}

/*var stay_time = 10; //5
var hitlock = 10;
if (state == 1) {
    stay_timer++;
    hit_op = 0;
}*/

if (state == 2) {
    instance_destroy();
    exit;
}
