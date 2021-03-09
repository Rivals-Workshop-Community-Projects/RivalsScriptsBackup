set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, (num_jabs * 3) + 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Hitboxes can't be in window 1.

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//Jabs
for (i = 0; i < (num_jabs - 1); i++) {
    set_window_value(AT_JAB, 2 + (i * 3), AG_WINDOW_TYPE, 0);
    set_window_value(AT_JAB, 2 + (i * 3), AG_WINDOW_LENGTH, 4);
    set_window_value(AT_JAB, 2 + (i * 3), AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_JAB, 2 + (i * 3), AG_WINDOW_ANIM_FRAME_START, 1);
    
    set_window_value(AT_JAB, 3 + (i * 3), AG_WINDOW_TYPE, 0);
    set_window_value(AT_JAB, 3 + (i * 3), AG_WINDOW_LENGTH, 4);
    set_window_value(AT_JAB, 3 + (i * 3), AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_JAB, 3 + (i * 3), AG_WINDOW_ANIM_FRAME_START, 2);
    
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_TYPE, 0);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_LENGTH, 20);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_ANIM_FRAME_START, 5);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_HAS_WHIFFLAG, 1);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_CANCEL_TYPE, 1);
    set_window_value(AT_JAB, 4 + (i * 3), AG_WINDOW_CANCEL_FRAME, 2);
}
set_window_value(AT_JAB, (num_jabs * 3) - 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, (num_jabs * 3) - 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, (num_jabs * 3) - 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_JAB, (num_jabs * 3) - 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, (num_jabs * 3) + 0, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, (num_jabs * 3) + 0, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, (num_jabs * 3) + 0, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, (num_jabs * 3) + 0, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
set_window_value(AT_JAB, (num_jabs * 3) + 1, AG_WINDOW_SFX_FRAME, 19);

// Snapped back
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, (num_jabs * 3) + 2, AG_WINDOW_CANCEL_FRAME, 16);

// I guess I need a dummy frame here?  Not sure what's up, but it'll crash without this
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, (num_jabs * 3) + 3, AG_WINDOW_CANCEL_FRAME, 16);

set_num_hitboxes(AT_JAB, num_jabs + 1);

for (i = 1; i <= (num_jabs); i++) {
    set_hitbox_value(AT_JAB, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_JAB, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_JAB, i, HG_WINDOW, i * 3);
    set_hitbox_value(AT_JAB, i, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_JAB, i, HG_LIFETIME, 4);
    set_hitbox_value(AT_JAB, i, HG_HITBOX_X, 10 + (14 * i));
    set_hitbox_value(AT_JAB, i, HG_HITBOX_Y, -43);
    set_hitbox_value(AT_JAB, i, HG_WIDTH, 33);
    set_hitbox_value(AT_JAB, i, HG_HEIGHT, 33);
    set_hitbox_value(AT_JAB, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_JAB, i, HG_DAMAGE, 2);
    set_hitbox_value(AT_JAB, i, HG_ANGLE, 45);
    set_hitbox_value(AT_JAB, i, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_JAB, i, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_JAB, i, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_JAB, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(AT_JAB, i, HG_ANGLE_FLIPPER, 6);
}

set_hitbox_value(AT_JAB, num_jabs + 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_WINDOW, (num_jabs * 3) + 2);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_DAMAGE, 12);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, num_jabs + 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_JAB, num_jabs + 1, HG_ANGLE_FLIPPER, 6);

// This is pretty neat - I've made a jab that can be performed a hardcoded
// maximum number of times.  It's not much, but doing a bunch of jabs then
// having the character smack himself in the face does make me laugh.