lifetime++

// done like this instead of lerp so we have a little more granular control
var hsp_dec = abs(lengthdir_x(decel, throw_angle))
var vsp_dec = abs(lengthdir_y(decel, throw_angle))
hsp = max(abs(hsp) - hsp_dec, 0) * sign(hsp)
vsp = max(abs(vsp) - vsp_dec, 0) * sign(vsp)

image_angle = -hsp * -5

// super subtle so it doesn't mess with people too much
if !hitstop {
    draw_y_offset = sin(lifetime / 10) * 4
    draw_x_offset = lerp(draw_x_offset, 0, 0.3)
}

if instance_exists(lantern_hitbox) {
    lantern_hitbox.x = x + hsp
    lantern_hitbox.y = y + vsp
    if hsp != 0 {
        lantern_hitbox.hitbox_timer = 0
    }
}

// hit detection
// doing this instead of making the article hittable since that enables hitpause on literally everything
// we don't wanna do that since we ONLY wanna handle the fspecial
with (pHitBox) {
    if "i_am_coldwin" not in player_id {
        continue
    }
    if !(player_id.i_am_coldwin && attack == AT_FSPECIAL && hbox_num == 1) {
        continue
    }
    if player_id.nspecial_lantern_has_hooked {
        continue
    }
    if place_meeting(x, y, other) {
        other.hitstop = 5
        other.draw_x_offset = -10 * spr_dir
        lantern_collision = true
        player_id.nspecial_lantern_has_hooked = true
    }
}

if recall {
    recall_timer--
    if recall_timer <= 0 {
        player_id.nspecial_lantern_active = false
        instance_destroy(self)
    } else {
        x = lerp(x, player_id.x, 0.4)
        y = lerp(y, player_id.y - player_id.char_height/2, 0.4)
    }
}