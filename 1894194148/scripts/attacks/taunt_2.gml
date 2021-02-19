//AR taunt 2
//messiah nari

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ar_hurtbox"));

//ats   ati   ata   atw   ath   atr
//0-0:1 1-1:1 2-3:2 4-5:2 6-6:1 7-8:2

//oldtaunt total = 75

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("wmn1"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 58); //70
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 10); //78
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 8); //86
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, sound_get("wmn2"));

set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 34); //120
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 12); //132
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);





















