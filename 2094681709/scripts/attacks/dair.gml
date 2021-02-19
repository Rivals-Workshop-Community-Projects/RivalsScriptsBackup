set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));


set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_mobile_gear_deploy"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("rev1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_DAIR,4);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -28);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3.25);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -28);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -28);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X,-28);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 120);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);


set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_VSPEED, .25); 
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, .25); 
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, .25); 
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_VSPEED, -4); 