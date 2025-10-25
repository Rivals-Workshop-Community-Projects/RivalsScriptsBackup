var atk = AT_TAUNT_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ascension"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));
set_attack_value(atk, AG_CATEGORY, 2);

//dark eyes
set_window_value(atk, num, AG_WINDOW_LENGTH, 80);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);

//blink
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, num, AG_WINDOW_SFX, 0);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 5);

//spread arms
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

//spread arms and raise
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_VSPEED, -1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);

//raise more
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 150);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_VSPEED, -1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);

//stop in the air
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 200);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);

//ow
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_TYPE, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);

//ow fall
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 300);
set_window_value(atk, num, AG_WINDOW_TYPE, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_VSPEED, -2);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED, -4);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 2);

//on the ground
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 300);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);