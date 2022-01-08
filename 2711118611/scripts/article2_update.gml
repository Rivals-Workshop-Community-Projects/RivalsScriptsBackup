if (player_id.sword_three != noone && other_sword == noone) {
    other_sword = player_id.sword_three;
}
else if (player_id.sword_three == noone && other_sword != noone) {
    other_sword = noone;
}

if (hsp > -hsp_cap && hsp < hsp_cap && destroy != true) {
    hsp -= hsp_mod;
}

if (!instance_exists(hbox) && state_timer < 5) {
    with (player_id)
        other.hbox = create_hitbox(AT_NSPECIAL, 1, other.x + (7 * spr_dir), other.y - 27);
} 
else if (!instance_exists(hbox)) { destroy = true; }
else (instance_exists(hbox)) {
    with (hbox) {
        if (player_id == other.player_id) {
            if (attack == AT_NSPECIAL && hbox_num == 1) {
                //x_pos = ((other.x) - other.player_id.x);
                //y_pos = ((other.y-24) - other.player_id.y);
                hsp = other.hsp;
                vsp = other.vsp;
            }
        }
    }
}

if (x < 0 || x > room_width) {
    destroy = true;
}

if (hit_wall) {
    destroy = true;
}

if (other_sword != noone) {
    if (point_distance(self.x, self.y, other_sword.x, other_sword.y) < 7 && !bounced && hsp * spr_dir > 0 && abs(hsp) < 14) {
        spawn_hit_fx( other_sword.x, other_sword.y -16, player_id.large_hit );
        sound_play(player_id.sfx_weaponswitch)
        hsp = 14 * spr_dir;
        bounced = true;
    }
}

if (destroy) {
    if (sprite_index != spr_des) {
        image_index = 0;
        state_timer = 0;
    }
    sprite_index = spr_des
    if (instance_exists(hbox)) instance_destroy(hbox);
    player_id.sword_one = noone;
    hsp = 0;
    if (destroy_timer < 18) {
        destroy_timer += 1;
    }
    else {
        instance_destroy();
        exit;
    }
    
}

if (caught) {
    player_id.sword_one = noone;
    if (instance_exists(hbox)) instance_destroy(hbox);
    instance_destroy();
    exit;
}

image_index = state_timer / 3;
state_timer++;