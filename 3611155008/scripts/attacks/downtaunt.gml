var atk = AT_TAUNT_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("taunthacking"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(atk, num, AG_WINDOW_LENGTH, 75);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX, sound_get("CharSFX_Hack_Signature"));

set_attack_value(atk, AG_NUM_WINDOWS, num);