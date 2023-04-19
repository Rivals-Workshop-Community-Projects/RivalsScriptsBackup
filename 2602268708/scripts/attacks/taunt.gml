set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_blank"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sm64_warp"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 25);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("sm64_warp"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 1);

//CHUCKSTER
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt_chuckster"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_EXCLUDE, true);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("sms_text_open"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("sms_chuckster"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 44);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("sms_text"));
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, sound_get("sms_text_close"));

//OLD CHUCKYA
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("taunt_self"));
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_EXCLUDE, true);
set_attack_value(AT_NTHROW, AG_USES_CUSTOM_GRAVITY, true);

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("smb2_pluck"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sound_get("sm64_woosh"));
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, -5.4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
