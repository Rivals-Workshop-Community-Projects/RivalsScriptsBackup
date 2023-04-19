// koopa hit
var hb = enemy_hitboxID;
var hpo = hit_player_obj;

var stage_hit = (hb.orig_player_id == obj_stage_main.id)

if (stage_hit && hb.hbox_num == 1)
|| "owner" in hb && hb.owner == self
|| `hit_${id}` in hb {
    exit; // prevents self-hits and getting hit multiple times by hbox group -1
}
else if stage_hit && hb.hbox_num == 2
&& !(state == PS_BURIED || state == PS_DASH) {
    queued_state = PS_DEAD;
    is_hittable = false;
}
else {
    last_hit_player = hit_player;
    last_hpo = hpo;
    variable_instance_set(hb, `hit_${id}`, true);
}

// sfx
sound_play(hb.sound_effect, false, noone, 0.8, 1);

// hit fx
var fx_x = lerp(x, hb.hit_effect_x + hb.x, 0.5);
var fx_y = lerp(y - 28, hb.hit_effect_y + hb.y, 0.5);
// can't spawn fx from stage object???
var fx_owner = (hpo.object_index == obj_stage_main) ? self : hpo;
with fx_owner { 
    var fx = spawn_hit_fx(fx_x, fx_y, hb.hit_effect);
    fx.depth = other.depth - 1;
    fx.hit_angle = point_direction(hb.x, hb.y, other.x, other.y-28);
    if fx.hit_fx == 303 { spr_dir = 1; }
}

// calculate stuff
var hstop = min(floor( hb.hitpause + hb.hitpause_growth * 0.05 ), 20);
var hangle = get_hitbox_angle(hb) - 13 + random_func_2(x%200, 27, true);
var hkb = floor(hb.kb_value * 1.1 + 65 * hb.kb_scale * 0.12 * 0.8);
var hstun = floor(hb.kb_value * 4 + 65 * hb.kb_scale * 0.4);
if hb.force_flinch && !free {
    hangle = (abs(angle_difference(hangle, 0)) <= 90) ? 0 : 180;
    hkb = 4;
    hstun = 18;
}

// apply hitpause/knockback/hitstun to self
var hit_by_block = (stage_hit && hb.attack == 8);
if queued_state != PS_DEAD {
    if (state == PS_BURIED || state == PS_DASH) {
        state = PS_FROZEN; // dummy state
        if hit_by_block {
            queued_state = PS_HITSTUN;
            hitstop = hstop;
            hitstun_full = hstun;
            hitstun = hstun;
            hsp = 0;
            vsp = 0;
            old_hsp = lengthdir_x(hkb, hangle);
            old_vsp = (free) ? lengthdir_y(hkb, hangle) : -1*abs(lengthdir_y(hkb, hangle));
        }
        else {
            queued_state = PS_DASH;
            var temp_dir = sign(lengthdir_x(1, hangle));
            if stage_hit && hb.hbox_num == 2 { // if hit by shell
                spr_dir = temp_dir;
                last_hit_player = 0;
                hb.owner.spr_dir = -temp_dir;
                hb.owner.last_hit_player = 0;
            }
            else if temp_dir != 0 { spr_dir = temp_dir; }
            destroy_ouchbox();
            sound_play(sound_get("die"))
        }
    }
    else if hkb > 0 {
        state = PS_FROZEN; // dummy state
        if hit_by_block {
            state = PS_FROZEN // dummy state
            queued_state = PS_BURIED;
            vsp = -4;
            hsp = 0;
        }
        else if !free && hangle == clamp(hangle, 215, 325) { // bury if spiked into ground
            queued_state = PS_BURIED;
            destroy_ouchbox();
        }
        else { // otherwise
            queued_state = PS_HITSTUN;
            hitstop = hstop;
            hitstun_full = hstun;
            hitstun = hstun;
            hsp = 0;
            vsp = 0;
            old_hsp = lengthdir_x(hkb, hangle);
            old_vsp = (free) ? lengthdir_y(hkb, hangle) : -1*abs(lengthdir_y(hkb, hangle));
            spr_dir = (sign(old_hsp) == 0) ? -hpo.spr_dir : -sign(old_hsp);
        }
    }
}

// prevent trades
if instance_exists(ouchbox) {
    ouchbox.can_hit = can_hit_default;
    ouchbox.can_hit[last_hit_player] = 0;
}

// do stuff to the enemy/enemy hitbox
if hpo.object_index != obj_stage_main {
    if hb.type == 1 { // physical
        // apply hitpause to opponent
        with hpo if !hitpause {
            has_hit = true;
            hitpause = true;
            hitstop_full = hstop;
            hitstop = hstop;
            old_hsp = hsp;
            old_vsp = vsp;
        }
    }
    else if hb.type == 2 { // projectile
        if !hb.enemies {
            hb.destroyed = true;
        }
    }
}

#define destroy_ouchbox
if instance_exists(ouchbox) { instance_destroy(ouchbox); }
