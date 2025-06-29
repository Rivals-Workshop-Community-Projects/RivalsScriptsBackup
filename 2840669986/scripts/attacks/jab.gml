set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, 1);
set_attack_value(AT_JAB, AG_MUNO_ATTACK_NAME, "Jab: Sweep");
set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC, "Hold the attack button to repeatedly swipe the broom.
Can be canceled with a jump on hit.");

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3 - (jabRune));
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sfx_star_allies_cleaning_swipe_3);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12 - (jabRune * 4));
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3,AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 1+windRune);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 84);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);

if (windRune){
//windbox (ignore this)
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 86);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("there is none"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
}