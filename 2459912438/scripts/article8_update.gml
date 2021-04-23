//
timer++;

if was_hit {
    hit_timer++;
}

if !was_hit {
    var hitbox = place_meeting(x, y, pHitBox);
    if hitbox {
        var hitbox_instance = instance_place(x, y, pHitBox);
        if hitbox_instance.player_id != player_id {
            was_hit = true;
            if hit_timer == 0 {
                hitbox_instance.player_id.has_hit = true;
                hitbox_instance.player_id.hitpause = true;
                hitbox_instance.player_id.hitstop_full = 6;
                hitbox_instance.player_id.hitstop = 6;
                hitbox_instance.player_id.old_vsp = hitbox.player_id.vsp;
                hitbox_instance.player_id.old_hsp = hitbox.player_id.hsp;
            }
        }
    }
}

if timer == 1 {
    vsp = minivsp;
    hsp = minihsp;
}

can_deal_damage = false;
if !was_hit {
    can_deal_damage = true;
}

if throw_hearts && !was_hit {
    throw_timer++;
    var index = floor(throw_timer/6);
    if index < 10 {
        image_index = index;
    } else {
        image_index = 0;
    }
    
    if throw_timer == 32 {
        var player_nearest = noone;
        var min_dist = 10000000;
        with oPlayer {
            if !is_dead && point_distance(x, y, other.x, other.y) < min_dist {
                min_dist = point_distance(x, y, other.x, other.y);
                player_nearest = id;
            }
        }
        
        var angle_to_player = point_direction(x, y, player_nearest.x, player_nearest.y);
        var heart = instance_create(x, y, "obj_stage_article", 9);
            heart.vsp = -dsin(angle_to_player) * 2;
            heart.hsp = dcos(angle_to_player) * 2;
    }
}

switch hit_timer {
    case 1:
    image_alpha = 0;
    hsp = 0;
    vsp = 0;
    sound_play(sound_get("burst"))
    break;
    
    case 30:
    instance_destroy();
    exit;
    break;
}

if timer > 550 {
    instance_destroy();
}