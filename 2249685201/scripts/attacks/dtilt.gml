set_attack_value(AT_DTILT, AG_CATEGORY, 0);
//set_attack_value(AT_DTILT, AG_SPRITE, asset_get("goat_dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_DTILT, AG_LANDING_LAG, 0);
//set_attack_value(AT_DTILT, AG_AIR_SPRITE, 0);
//set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, asset_get("goat_dtilt_hurt"));
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_jab1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);


set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);





set_num_hitboxes(AT_DTILT, 1);


global.absahits[AT_DTILT,100+0] = 1;

global.absahits[AT_DTILT,100+1] = 1;

global.absahits[AT_DTILT,100+2] = 2;

global.absahits[AT_DTILT,100+3] = 0;

global.absahits[AT_DTILT,100+4] = 6;

global.absahits[AT_DTILT,100+5] = 35;

global.absahits[AT_DTILT,100+6] = -20;

global.absahits[AT_DTILT,100+7] = 60;

global.absahits[AT_DTILT,100+8] = 40;

global.absahits[AT_DTILT,100+9] = 0;

global.absahits[AT_DTILT,100+10] = 1;

global.absahits[AT_DTILT,100+11] = 7;

global.absahits[AT_DTILT,100+12] = 30;

global.absahits[AT_DTILT,100+13] = 7;

global.absahits[AT_DTILT,100+14] = .45;

global.absahits[AT_DTILT,100+15] = 0;

global.absahits[AT_DTILT,100+16] = 7;

global.absahits[AT_DTILT,100+17] = .6;

global.absahits[AT_DTILT,100+18] = 21;

global.absahits[AT_DTILT,100+19] = 15;

global.absahits[AT_DTILT,100+20] = 25;

global.absahits[AT_DTILT,100+21] = sfx_absa_harderhit;

global.absahits[AT_DTILT,100+22] = 0;

global.absahits[AT_DTILT,100+23] = 0;

global.absahits[AT_DTILT,100+24] = 0;

global.zethit[AT_DTILT,100+25] = 2;

global.absahits[AT_DTILT,100+26] = 0;

global.absahits[AT_DTILT,100+27] = 0;

