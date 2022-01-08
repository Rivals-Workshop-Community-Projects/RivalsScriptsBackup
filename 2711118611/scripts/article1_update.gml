
switch (state) {
    case PS_IDLE:
        image_index = state_timer / 12;
        //sprite_index = spr_idle;

        if (free) {
            sprite_index = spr_air;
        }

        if (!free && impact_time < 4) {
            sprite_index = spr_imp;
            impact_time ++;
        }
        else if (impact_time >= 4) {
            sprite_index = spr_idle;
        }
        break;
    default:
        setState(PS_IDLE);
        break;
}

if (!instance_exists(hbox)) {
    with (player_id)
        other.hbox = create_hitbox(AT_DSPECIAL, 1, other.x, other.y - 27);
} 
else (instance_exists(hbox)) {
    with (hbox) {
        if (player_id == other.player_id) {
            if (attack == AT_DSPECIAL && hbox_num == 1) {
                //x_pos = ((other.x) - other.player_id.x);
                y = other.y - 24;
                //hsp = other.hsp;
                //vsp = other.vsp;
            }
        }
    }
}


if (free){
    if (vsp < 5) {
        vsp = 5;
    }
    else if (state_timer % 4 == 0) {
        vsp += 0.2;
    }
}
else {
    vsp = 0;
    if (instance_exists(hbox)) instance_destroy(hbox);
}

if (y > room_height) {
    destroy = true;
}

if (destroy) {
    if (instance_exists(hbox)) instance_destroy(hbox);
    player_id.sword_three = noone;
    instance_destroy();
    exit;
    
}


state_timer++;
y += vsp;

#define setState(n_s)

state = n_s;
state_timer = 0;
image_index = 1;