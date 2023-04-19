set_attack_value(AT_DAIR_2, AG_CATEGORY, 0);
set_attack_value(AT_DAIR_2, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR_2, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));

set_window_value(AT_DAIR_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_DAIR_2, 1 );

set_hitbox_value(AT_DAIR_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DAIR_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DAIR_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR_2, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR_2, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DAIR_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
//set_hitbox_value(AT_DAIR_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));