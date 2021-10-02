var at = AT_UTILT

set_attack_value(at, AG_SPRITE, sprite_get("utilt"));
set_attack_value(at, AG_NUM_WINDOWS, 4);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(at, ig, AG_WINDOW_SFX_FRAME, 2);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 4);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 4);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 2);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 8);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(at, 2);
ig = 1;

set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, ig, HG_LIFETIME, 3);
set_hitbox_value(at, ig, HG_HITBOX_X, -25);
set_hitbox_value(at, ig, HG_HITBOX_Y, -44);
set_hitbox_value(at, ig, HG_WIDTH, 60);
set_hitbox_value(at, ig, HG_HEIGHT, 60);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 5); // raised damage to better reward most likely to land strike
set_hitbox_value(at, ig, HG_ANGLE, 85);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 7); // raised kb to 5 from 3/4 (can't remember LOL)
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .3); // raised kb scaling to .4 from .3
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 5); // raised hitpause to 5 to match kb
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .4); // added hp scaling
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("thud"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 2);

ig++;

set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 3);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 3);
set_hitbox_value(at, ig, HG_HITBOX_Y, -60);
set_hitbox_value(at, ig, HG_WIDTH, 90);
set_hitbox_value(at, ig, HG_HEIGHT, 90);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 5); // raised damage to better reward most likely to land strike
set_hitbox_value(at, ig, HG_ANGLE, 85);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 7); // raised kb to 5 from 3/4 (can't remember LOL)
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .3); // raised kb scaling to .4 from .3
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 5); // raised hitpause to 5 to match kb
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .4); // added hp scaling
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("thud"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 2);