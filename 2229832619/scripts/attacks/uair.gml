set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);//10
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//fas   fan   faa   fah   far
//0-0:1 1-1:1 2-2:1 3-3:1 4-5:2

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);//8//7
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);//3
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("swing5"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 3);

//aerial
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 88);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 66);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);//6//5
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 64);//67
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5.5); //5//4
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.65); //0.9//0.78
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8.5); //8
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.7);//0.6
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit4"));

//grounded
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 88);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 66);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 8);//6
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);//78
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8.5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit4"));

//body hit
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);//6//5
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);//67//58
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5.5); //5//4
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.5); //0.9
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6); //8
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.5);//0.6
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


