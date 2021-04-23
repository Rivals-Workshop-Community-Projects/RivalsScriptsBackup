//
timer++;

if was_hit {
    hit_timer++;
}

var collision = place_meeting(x, y, pHitBox);
if collision {
    var hitbox = instance_place(x, y, pHitBox);
    if hitbox.player_id != player_id {
        was_hit = true;
        if hit_timer == 0 {
            hitbox.player_id.has_hit = true;
            hitbox.player_id.hitpause = true;
            hitbox.player_id.hitstop_full = 6;
            hitbox.player_id.hitstop = 6;
            hitbox.player_id.old_vsp = hitbox.player_id.vsp;
            hitbox.player_id.old_hsp = hitbox.player_id.hsp;
        }
    }
}

if timer == 1 {
    vsp = bombspeed;
}

can_deal_damage = false;
if !was_hit || exploded {
    can_deal_damage = true;
}

switch hit_timer {
    case 6:
    case 18:
    sound_play(sound_get("prebomb"));
    image_index = 1;
    break;
    
    case 12:
    case 24:
    image_index = 0;
    break;
    
    case 30:
    exploded = true;
    sprite_index = sprite_get("bomb_explode");
    mask_index = sprite_get("bomb_explode_hurt");
    sound_play(sound_get("bomb_explode"));
    break;
}

if exploded {
    explode_timer++;
}

if floor(explode_timer/2) == 7 {
    instance_destroy();
}