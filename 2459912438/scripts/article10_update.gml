//
timer++;

if was_hit {
    hit_timer++;
}

var collision = place_meeting(x, y, pHitBox);
if collision {
    var hitbox = instance_place(x, y, pHitBox);
    if hitbox.player_id != player_id && destructable {
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
    vsp = blockvsp;
    hsp = blockhsp;
}

var dont_dmg = false;
if !destructable {
    with obj_stage_article {
        if get_article_script(id) == 7 {
            if exploded {
                if place_meeting(x, y, other) && point_distance(x, y, other.x, other.y) < 100 {
                    instance_destroy(other);
                    exit;
                }
            }
        }
    }
} else {
    with obj_stage_article {
        if get_article_script(id) == 7 {
            if was_hit && place_meeting(x, y, other) && point_distance(x, y, other.x, other.y) < 100 {
                dont_dmg = true;
            }
        }
    }
}

can_deal_damage = false;
if !was_hit && !dont_dmg {
    can_deal_damage = true;
}

if timer == 1 && !destructable {
    image_index = 1;
}

if was_hit {
    switch hit_timer {
        case 1:
        image_alpha = 0;
        hsp = 0;
        vsp = 0;
        sound_play(sound_get("burst"))
        break;
        
        case 30:
        instance_destroy();
        break;
    }
}

