image_index += .12;

hsp *= 0.95;
vsp *= 0.95;

if hsp >= 0{
    var move_dir = 1;
}
else{
    var move_dir = -1;
}

if place_meeting(x + (5 * move_dir), y - 5, asset_get("par_block")){
    x -= 5 * move_dir;
    hsp *= -1;
}
else if place_meeting(x, y + 10, asset_get("par_block")){
    y -= 5;
    vsp *= -1;
}
else if place_meeting(x, y - 10, asset_get("par_block")){
    y += 5;
    vsp *= -1;
}

if abs(hsp) <= 0.2 && abs(vsp) <= 0.2{
    instance_destroy(flowey_saveattack);
    hsp = 0;
    vsp = 0;
}
else{
    if !instance_exists(flowey_saveattack){
        flowey_saveattack = create_hitbox(AT_FSPECIAL, 4, round(x + hsp), round(y - 20 + vsp));
        for (var i = 0; i < array_length(flowey_saveattack.can_hit); i ++) if (i != player) flowey_saveattack.can_hit[i] = true;
    }
    if instance_exists(flowey_saveattack){
        with flowey_saveattack{
            spr_dir = other.spr_dir;
            prev_x = x;
            x = other.x + other.hsp + (spr_dir * 2);
            y = other.y + other.vsp - 21;
            flowey_save = player_id.flowey_save;
            var save_strength = 0.7 + abs(point_distance(0, 0, flowey_save.hsp, flowey_save.vsp));
            kb_angle = move_dir = 1? 45:135;
            damage = round(save_strength * 1.2);
            kb_value = round(save_strength * 0.8);
            kb_scale = round(save_strength * 0.1);
            hitpause = 6 + round(save_strength * 0.6);
            hitpause_growth = round(save_strength * 0.05);
        }
    }
}

// rainbow code
if get_player_color(player) == 3{
    trail_hue = make_color_rgb(get_color_profile_slot_r(3, 1), get_color_profile_slot_g(3, 1), get_color_profile_slot_b(3, 1));
    var flowey_rainbowtrail = [sprite_get("save_rainbow"), 1, 1/15, 0, 0, trail_hue, x, y, image_index, spr_dir];
    array_push(particles, flowey_rainbowtrail);
    if array_length(particles) > 0{
        for(var e = 0; e < array_length(particles); e++){
            particles[@e][@1] -= particles[@e][@2];
            particles[@e][@6] += particles[@e][@3];
            particles[@e][@7] += particles[@e][@4];
            particles[@e][@5] = trail_hue;
            if particles[@e][@1] <= 0{
                var tpart = particles;
                particles = [];
                for (var h = 0; h < array_length(tpart); h++){
                    if h != e{
                        array_push(particles, tpart[h]);
                    }
                }
            }
        }
    }
}

/*if !(player_id.attack == AT_USPECIAL && player_id.window == 2) || player_id.grabp = player_id.flowey_save{
    save_timer--;
}
if save_timer <= 0{
    instance_destroy(self);
}