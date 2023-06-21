set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3); 

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FAIR, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FAIR, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FAIR, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 37);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.6);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 70);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 140);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 290);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.8);
