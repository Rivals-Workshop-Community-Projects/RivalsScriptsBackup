set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_launch"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, emblem_big);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("sfx_hit_magic_heavy"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -22);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);