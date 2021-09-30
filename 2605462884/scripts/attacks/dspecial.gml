set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_BODY_CELL, 38);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("click"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_BODY_CELL, 38);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 3, AG_BODY_CELL, 38);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL, 4, AG_BODY_CELL, 39);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_BODY_CELL, 9);


set_num_hitboxes(AT_DSPECIAL, 1); 

//boost 4 - crumble jump
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 300);//350
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 300);//350
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//boost 3 - me roll moving
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 60);//52
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 60);//52
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//boost 2 - harmful heat (old)
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 1600);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 1600);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));

//alt (current, polite)
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 1600);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 1600);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));







