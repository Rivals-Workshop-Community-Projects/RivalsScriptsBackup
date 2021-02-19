set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("newdtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("newdtilt_hurt"));

//startup
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);

//fire + hitbox
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 16); //20
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
//fire sound
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_boss_fireball"));

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 2); 
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 122);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 3);




