
// UStrong spike is greatly enhanced
// (see also: attack_update.gml for timing, hit_player.gml for bonus sfx)
if (has_rune("D")) {
    set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 280);
    set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.5);
    set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
    set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.8);
    set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
}

// DTilt gains Mollo flashbang stun
if (has_rune("E")) {
    set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 13);
}

// Disable gravity during wall/drone grapple
if (has_rune("G")) {
    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
}

// Rune H: in-line in nspecial.gml and dspecial.gml