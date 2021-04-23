//
timer++;

if was_hit {
    hit_timer++;
}

var hitbox = instance_place(x, y, pHitBox);
if hitbox != noone && hitbox.player_id != player_id {
    was_hit = true;
} else {
    was_hit = false;
}

if timer == 1 {
    vsp = armvsp;
    spr_dir = dir;
}

can_deal_damage = false;
if !slider_hit {
    can_deal_damage = true;
}

if was_hit {
    switch hit_timer {
        case 1:
        sound_play(sound_get("leg_hit"))
        break;
    }
}

if slider_hit {
    if x - 210 > room_width/2 + box_width/2 || x + 210 < room_width/2 - box_width/2 {
        hsp = 0;
    } else {
        hsp += 0.6*dir;
    }
}