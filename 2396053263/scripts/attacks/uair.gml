set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 15);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1); //sweetspot
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 92);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hit_uair);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1); //sweetspot but again
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 53);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hit_uair);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1); //spikespot
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, 2);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 33);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_GROUNDEDNESS, 2); //only hits aerial opponents
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 240);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));