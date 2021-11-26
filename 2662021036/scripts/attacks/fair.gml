set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 11); // 6
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_COOLDOWN, 12);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10); // 4
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1); // 4
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("vileplume_venoshock_blast"));

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3); // 8
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 9); // 8
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361); // 30
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10); // 6
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1); // .25
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, large_poison_hit);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361); // 30
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10); // 6
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1); // .25
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, large_poison_hit);

