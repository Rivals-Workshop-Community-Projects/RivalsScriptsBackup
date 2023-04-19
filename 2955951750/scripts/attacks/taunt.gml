set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("fry_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 24);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_TAUNT, 1, HG_GROUNDEDNESS, 1); //ground only
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, weakhit);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 10);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_TAUNT, 2, HG_GROUNDEDNESS, 2); //air only
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, weakhit);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));