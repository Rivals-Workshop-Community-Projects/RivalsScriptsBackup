set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("ground"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 12);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3); 

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 8, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DTILT, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DTILT, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 12, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_DTILT, 5); 

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 8);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .8);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 8);
set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 15);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .8);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -130);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 140);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .8);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 200);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .8);

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 5, HG_EFFECT, 15);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 60);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -100);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 280);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, .8);