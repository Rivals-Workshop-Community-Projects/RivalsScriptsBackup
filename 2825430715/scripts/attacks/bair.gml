set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);


set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_BAIR,2);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -26);
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 84);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -26);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));