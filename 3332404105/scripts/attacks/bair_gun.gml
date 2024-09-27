set_attack_value(AT_DTHROW, AG_CATEGORY, 1);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("bair_gun"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, get_attack_value(AT_BAIR, AG_HAS_LANDING_LAG));
set_attack_value(AT_DTHROW, AG_LANDING_LAG, get_attack_value(AT_BAIR, AG_LANDING_LAG));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("bair_gun_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, get_window_value(AT_BAIR, 1, AG_WINDOW_TYPE));
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sfx_gunload);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME));

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, get_window_value(AT_BAIR, 2, AG_WINDOW_TYPE));
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, get_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START));

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, get_window_value(AT_BAIR, 4, AG_WINDOW_TYPE));
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH));
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, get_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START));
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, get_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG));

set_num_hitboxes(AT_DTHROW, 3);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, get_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE));
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, get_hitbox_value(AT_BAIR, 1, HG_WINDOW));
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, get_hitbox_value(AT_BAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, get_hitbox_value(AT_BAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, get_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, get_hitbox_value(AT_BAIR, 1, HG_WIDTH));
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, get_hitbox_value(AT_BAIR, 1, HG_HEIGHT));
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, get_hitbox_value(AT_BAIR, 1, HG_PRIORITY));
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, get_hitbox_value(AT_BAIR, 1, HG_DAMAGE));
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, get_hitbox_value(AT_BAIR, 1, HG_ANGLE));
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, get_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, get_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE));
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, get_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, get_hitbox_value(AT_BAIR, 1, HG_HIT_SFX));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, get_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, -44);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_SPRITE, sprite_get("bullet"));
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_HSPEED, -9);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_VSPEED, -15);

set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, get_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE));
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, get_hitbox_value(AT_BAIR, 3, HG_WINDOW));
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, get_hitbox_value(AT_BAIR, 3, HG_LIFETIME));
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, get_hitbox_value(AT_BAIR, 3, HG_HITBOX_X));
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, -get_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y));
set_hitbox_value(AT_DTHROW, 3, HG_WIDTH, get_hitbox_value(AT_BAIR, 3, HG_WIDTH));
set_hitbox_value(AT_DTHROW, 3, HG_HEIGHT, get_hitbox_value(AT_BAIR, 3, HG_HEIGHT));
set_hitbox_value(AT_DTHROW, 3, HG_PRIORITY, get_hitbox_value(AT_BAIR, 3, HG_PRIORITY));
set_hitbox_value(AT_DTHROW, 3, HG_DAMAGE, get_hitbox_value(AT_BAIR, 3, HG_DAMAGE));
set_hitbox_value(AT_DTHROW, 3, HG_ANGLE, get_hitbox_value(AT_BAIR, 3, HG_ANGLE));
set_hitbox_value(AT_DTHROW, 3, HG_BASE_KNOCKBACK, get_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_DTHROW, 3, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_DTHROW, 3, HG_BASE_HITPAUSE, get_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE));
set_hitbox_value(AT_DTHROW, 3, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_BAIR, 3, HG_EXTRA_HITPAUSE));
set_hitbox_value(AT_DTHROW, 3, HG_HITPAUSE_SCALING, get_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_DTHROW, 3, HG_VISUAL_EFFECT, get_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT));
set_hitbox_value(AT_DTHROW, 3, HG_VISUAL_EFFECT_X_OFFSET, get_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET));
set_hitbox_value(AT_DTHROW, 3, HG_VISUAL_EFFECT_Y_OFFSET, get_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET));
set_hitbox_value(AT_DTHROW, 3, HG_HIT_SFX, get_hitbox_value(AT_BAIR, 3, HG_HIT_SFX));
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_GROUP, get_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP));