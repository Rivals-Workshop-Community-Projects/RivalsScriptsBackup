set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10); //was 15
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 7); //was 10
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,4);

//Aerial sweet
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 34);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .62);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx3"), 20));
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Aerial sour
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx3"), 20));
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//Grounded sweet
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 34);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Grounded sour
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx3"), 20));
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

