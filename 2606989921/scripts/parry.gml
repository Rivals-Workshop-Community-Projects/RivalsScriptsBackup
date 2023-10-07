if (!has_parried)
{
    var sub = create_hitbox(AT_JAB, 2, x + 15*spr_dir, y);
    msg_launch_substitute(enemy_hitboxID, sub);

    has_parried = true;

    if (msg_multiparry == 0) && (random_func_2(1, 8, true) == 0)
    {
        msg_multiparry = 8 + random_func_2(2, 24, true);
    }

    //multiparry glitch
    //melee only: projectiles could get reflected and not connect...
    if (msg_multiparry > 0) && (enemy_hitboxID.type == 1)
    {
        msg_multiparry--;

        sub.hitpause_timer = 2;
        sub.old_hsp *= (1.8 + msg_multiparry * 0.02);
        sub.old_vsp *= (2 + msg_multiparry * 0.02);
        if (msg_multiparry > 0)
        {
            has_parried = false;
            enemy_hitboxID.can_hit[player] = true;
            can_be_hit[enemy_hitboxID.player] = 2
            perfect_dodged = false;
            invincible = false;
            invince_time = 0;
        }
    }
}

//prevent vfx overlap
msg_fakeout_parry_timer = 0;

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_launch_substitute(hitbox, substitute) // Version 0
    substitute.hitpause_timer = get_hitstop_formula(SUBS_DAMAGE, hitbox.damage,
        hitbox.hitpause, hitbox.hitpause_growth, hitbox.extra_hitpause);
    substitute.length = 10 + get_hitstun_formula(SUBS_DAMAGE, SUBS_ADJ, 2,
        hitbox.damage, hitbox.kb_value, hitbox.kb_scale);

    var kb = get_kb_formula(SUBS_DAMAGE, SUBS_ADJ, 1,
        hitbox.damage, hitbox.kb_value, hitbox.kb_scale);

    kb = max(kb, SUBS_MIN_LAUNCH);

    var angle = get_hitbox_angle(hitbox) - 12 + random_func_2(7, 24, true)

    substitute.old_hsp = lengthdir_x(kb, angle);
    substitute.old_vsp = lengthdir_y(kb, angle);
    substitute.hitstop = true;

    has_parried = true;

#macro SUBS_DAMAGE 60

#macro SUBS_ADJ 1.4

#macro SUBS_MIN_LAUNCH 7
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion