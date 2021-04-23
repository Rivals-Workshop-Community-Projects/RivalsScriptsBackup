//
timer++;

can_deal_damage = false;
if hit_cooldown > 0 {
    can_deal_damage = true;
}

var was_hit = false;
var collision = place_meeting(x, y, pHitBox);
if collision {
    var hitbox = instance_place(x, y, pHitBox);
    if hitbox != current_hitbox {
        current_hitbox = hitbox;
        was_hit = true;
        
        if hit_cooldown == 0 {
            hitbox.player_id.has_hit = true;
            hitbox.player_id.hitpause = true;
            hitbox.player_id.hitstop_full = 6;
            hitbox.player_id.hitstop = 6;
            hitbox.player_id.old_vsp = hitbox.player_id.vsp;
            hitbox.player_id.old_hsp = hitbox.player_id.hsp;
        }
    }
}

if was_hit && hit_cooldown == 0 {
    if colour == "white" {
        colour = "yellow"
    } else {
        colour = "white";
    }
    hit_cooldown = 30;
    sound_play(sound_get("leg_hit"));
}


if colour == "white" {
    image_index = 0;
    hsp = 0;
} else {
    image_index = 1;
    move_timer++;
    hsp = dcos(((move_timer mod 360) + 90)*legtime) * legspeed * -image_xscale;
}

vsp = 3;

user_event(1);