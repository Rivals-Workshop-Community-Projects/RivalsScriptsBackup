set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));

set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));


var cw = 1;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_JAB, cw, AG_WINDOW_SFX, asset_get("sfx_obstacle_hit"));

cw = 2;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 1);

cw = 3;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, cw, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_CANCEL_FRAME, 2);

cw = 4;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

cw = 5;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 6);

cw = 6;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, cw, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_CANCEL_FRAME, 4);

cw = 7;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 666);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));
set_window_value(AT_JAB, cw, AG_WINDOW_SFX_FRAME, 9);

cw = 8;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 69);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 12);


cw = 9;

set_window_value(AT_JAB, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, cw, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, cw, AG_WINDOW_ANIM_FRAME_START, 15);


set_attack_value(AT_JAB, AG_NUM_WINDOWS, cw);
set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 110);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hit_sprites[0]);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);

//set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hit_sprites[0]);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hit_sprites[1]);