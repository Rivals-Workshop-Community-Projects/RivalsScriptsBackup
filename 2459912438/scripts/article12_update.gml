//
timer++;

if was_hit {
    hit_timer++;
    if hit_timer == 1 {
        arm_id.slider_hit = true;
        sound_play(sound_get("burst"))
    }
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

y = arm_id.y + arm_id.vsp;
x = ((arm_id.x - arm_id.spawnx) + sliderx) + dsin(360*(timer/60)/slider_period)*slider_speed;

if !was_hit {
    if timer mod 30 < 25 {
        image_index = 1;
    } else {
        image_index = 0;
    }
} else {
    image_index = 2;
}