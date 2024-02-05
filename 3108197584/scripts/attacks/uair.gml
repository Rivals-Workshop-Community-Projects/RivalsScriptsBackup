set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//1
var num = 1;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));
set_window_value(AT_UAIR, num, AG_WINDOW_VSPEED, -2);

//2
num++;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 13);

//3
num++;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 14);

//4
num++;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UAIR, num, AG_WINDOW_VSPEED, 5);

//5
num++;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 17);

//5
num++;
set_window_value(AT_UAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_UAIR, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, num);



set_num_hitboxes(AT_UAIR, 1);

var num = 1
set_hitbox_value(AT_UAIR, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, num, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, num, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, num, HG_HITBOX_Y, -110);
set_hitbox_value(AT_UAIR, num, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, num, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, num, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, num, HG_DAMAGE, 7 - 6*has_rune("C") + 7*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_UAIR, num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, num, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_UAIR, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, num, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USPECIAL_2, num, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, num, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, num, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, num, HG_DAMAGE, 9 - 8*has_rune("C") + 9*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_USPECIAL_2, num, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, num, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL_2, num, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, num, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USPECIAL_2, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, num, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITBOX_Y, -210);
set_hitbox_value(AT_USPECIAL_2, num, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, num, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, num, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, num, HG_DAMAGE, 7 - 6*has_rune("C") + 7*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_USPECIAL_2, num, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));