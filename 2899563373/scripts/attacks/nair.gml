set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("sfx_staffspin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//im not gonna sugarcoat it
set_num_hitboxes(AT_NAIR, 8);

//set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
//ground-only init hitbox
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

//normal hits
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 73);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 73);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9); //10 is a bit better for dragdowns but is way less consistent overall
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 2); //2?
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 0.7);

//wait what am i doing i can just do this
for(var i = 1; i <= 5; i++){
set_hitbox_value(AT_NAIR, 2 + i, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2 + i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2 + i, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2 + i, HG_WINDOW_CREATION_FRAME, 3 * i);
set_hitbox_value(AT_NAIR, 2 + i, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2 + i, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 2 + i, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2 + i, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, sound_get("sfx_magichit_medium1"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 2);