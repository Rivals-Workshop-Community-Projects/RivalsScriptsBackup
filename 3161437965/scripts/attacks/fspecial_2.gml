set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_CANT_SAVE_ATTACK, true);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 50);//100
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 150);//150
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 100);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 99);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("sfx_deal_damage"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 240);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 240);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("sfx_hurt_strong"));