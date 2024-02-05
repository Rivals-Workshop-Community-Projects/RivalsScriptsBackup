set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, 1);

//1 startup
var num = 1;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, num, AG_WINDOW_SFX, sound_get("sfx_gunload"));

//2 aim
num++;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 3);

//3 fire
num++;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 6);

//4 endlag
num++;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 7);

//5 loopable endlag
num++;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 10);

//6 endlag
num++;
set_window_value(AT_JAB, num, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, num, AG_WINDOW_ANIM_FRAME_START, 11);

set_attack_value(AT_JAB, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_JAB, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, num, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, num, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, num, HG_HITBOX_X, 80);
set_hitbox_value(AT_JAB, num, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, num, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, num, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, num, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, num, HG_DAMAGE, 2 - has_rune("C") + 2*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_JAB, num, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_JAB, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, num, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_JAB, num, HG_FORCE_FLINCH, 1);

set_num_hitboxes(AT_JAB, 1);