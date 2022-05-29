set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_orc"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swish_heavy"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
// set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swish_heavy"));
// set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

// set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
// set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
// set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
// set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 161 );
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 70);

//Override that previouly was teh upgraded version, now it is the normal (yes it is a copy paste of attack_update.gml, I'm lazy, if you are reading this, pls dont judge)
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);