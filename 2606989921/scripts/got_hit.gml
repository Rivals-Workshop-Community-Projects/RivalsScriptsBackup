//Reapply damage from previous life
if (msg_exploded_damage != 0)
{
    take_damage( player, -1, msg_exploded_damage );
    msg_exploded_damage = 0;
}

//ACE grab setup
msg_acemilate(attack, hit_player_obj.attack, enemy_hitboxID);

//==========================================================
// attempt to apply the fix to negative damage premptively (see article1_update)
if (msg_last_known_damage < 0) && (get_player_damage(player) == 0)
{
    var new_damage = floor(msg_last_known_damage + enemy_hitboxID.damage);
    set_player_damage(player, new_damage);
    msg_last_known_damage = new_damage;
}
//==========================================================

if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)
&& (state_cat == SC_HITSTUN)
{
    if (attack == AT_FSTRONG && strong_charge > 0 && strong_charge < 60)
    {
        //interrupted: start charging passively >:]
        msg_fstrong_interrupted_timer = strong_charge;
        sound_play(sound_get("cometpunch"));
    }
    else if (attack == AT_UTILT)
    {
        //hit on top half: trigger glitch
        if !collision_rectangle(x-15, y, x+15, y-80, enemy_hitboxID, true, true)
        {
            y -= 80;
            msg_air_tech_active = true;
        }
    }
}

//===================
// VFXing
hurt_img = GET_RNG(6, 0x0F);
if (hurt_img > msg_num_hurt_spr) hurt_img = 153;
if (GET_RNG(5, 0x01) == 1) && (hit_player_obj.sprite_index != -1)
{
    var g = noone;
    with (hit_player_obj) g = msg_get_garbage();
    msg_unsafe_garbage = g;
}
msg_unsafe_effects.shudder.impulse = floor(abs(hitstop_full));

//corrupt 'M 
var hurt_rng = min(abs(get_player_damage(player)) * 0.25, 64)
             + min(1.5 * abs(enemy_hitboxID.damage), 64);
if (msg_stability_mode) hurt_rng = 0;

if (hurt_rng > GET_RNG(21, 0x7FF))
{
    var should_fix = !msg_is_local;
    //reroll breakage statuses
    sound_play(sound_get("krr"));
    msg_persistence.stage_request_breaking = GET_RNG(16, 0x01) * (!msg_is_local ? 0 : 1);
    msg_persistence.music_request_breaking = GET_RNG(17, 0x01) * (!msg_is_local ? 0 : 1);
    msg_persistence.sound_request_breaking = GET_RNG(18, 0x01) * (!msg_is_local ? 0 : 60);
}

if (hurt_rng > GET_RNG(24, 0xFF))
{
    //roll for player corruption
    switch(GET_RNG(10, 0x07))
    {
        default:
        case  0:
            sound_play(sound_get("krr"));
            msg_unsafe_effects.altswap.trigger = true;
        break;
        case  1:
        case  2:
            msg_unsafe_effects.blending.impulse = 1;
            msg_unsafe_effects.blending.gameplay_timer = min(360, 30 * hitstun_full);
        break;
        case  3:
        case  4:
            msg_unsafe_effects.quadrant.impulse = 1;
            msg_unsafe_effects.quadrant.gameplay_timer = min(360, 30 * hitstun_full);
        break;
        case  5:
            sound_play(sound_get("clicker_static"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
        case  6:
            sound_play(sound_get("jacobs_ladder"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
        case  7:
            sound_play(sound_get("079-B"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_acemilate(index_source, other_source, hbx) // Version 0
    var scrombled_index1 = (((msg_broken_grab_seed << 1) ^ index_source) % 64)
    var scrombled_index2 = (((scrombled_index1 << 1) ^ other_source) % 64)
    msg_broken_grab_seed = (((scrombled_index2 << 1) ^ hbx.attack + 1) % 64)
    var scan_indexes = [index_source, scrombled_index1, scrombled_index2, msg_broken_grab_seed];
    msg_broken_grab_seed *= msg_broken_grab_seed;

    for (var i = 0; i < 4; i++)
    {
        var idx = HG_DAMAGE, stat = 1, cap = 5;
        switch (scan_indexes[i] % 16)
        {
            default:
            case  0: idx = HG_BASE_HITPAUSE;      stat = hbx.hitpause;        cap = 20;    break;
            case  1: idx = HG_HITPAUSE_SCALING;   stat = hbx.hitpause_growth; cap = 2;     break;
            case  2: idx = HG_VISUAL_EFFECT;      stat = hbx.hit_effect;      cap = noone; break;
            case  3: idx = HG_SDI_MULTIPLIER;     stat = hbx.sdi_mult;        cap = 3;     break;
            case  4: idx = HG_TECHABLE;           stat = hbx.can_tech;        cap = 3;     break;
            case  5: idx = HG_HIT_SFX;            stat = hbx.sound_effect;    cap = noone; break;
            case  6: idx = HG_ANGLE_FLIPPER;      stat = hbx.hit_flipper;     cap = 12;    break;
            case  7: idx = HG_EXTRA_HITPAUSE;     stat = hbx.extra_hitpause;  cap = 30;    break;
            case  8: idx = HG_HIT_LOCKOUT;        stat = hbx.no_other_hit;    cap = 50;    break;
            case  9: idx = HG_HITSTUN_MULTIPLIER; stat = hbx.hitstun_factor;  cap = 3;     break;
            case 10: idx = HG_DRIFT_MULTIPLIER;   stat = hbx.dumb_di_mult;    cap = 3;     break;
            case 11: idx = HG_DAMAGE;             stat = hbx.damage;          cap = 50;    break;
            case 12: idx = HG_ANGLE;              stat = hbx.kb_angle;        cap = 361;   break;
            case 13: idx = HG_BASE_KNOCKBACK;     stat = hbx.kb_value;        cap = 16;    break;
            case 14: idx = HG_KNOCKBACK_SCALING;  stat = hbx.kb_scale;        cap = 2;     break;
            case 15: idx = HG_EFFECT;             stat = hbx.effect;          cap = 20;    break;
        }

        var base = get_hitbox_value(AT_NTHROW, MSG_GRAB_BROKEN_HITBOX, idx);
        set_hitbox_value(AT_NTHROW, MSG_GRAB_BROKEN_HITBOX, idx, (cap == noone) ? stat : ((base + stat) % cap));
    }

#define msg_get_garbage // Version 0
    // create a garbage entry out of a sprite currently in use.
    {
        return { spr: sprite_index,
                 scale: small_sprites + 1,
                 width: abs(sprite_width),
                 height: sprite_height,
                 x_offset: abs(sprite_xoffset),
                 y_offset: sprite_yoffset
               }
    }

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion