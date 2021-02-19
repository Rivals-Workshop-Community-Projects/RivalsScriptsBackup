set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("batit_proj"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, sprite_get("batit_proj"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, leafHitHfx);
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, leafBreakHfx);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));