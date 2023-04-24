set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

//Startup
set_window_value(AT_USPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

//Charge Hold
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Startup
set_window_value(AT_USPECIAL, 3, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_anthem_uspecial1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);

//Startup (120 - 60)
set_window_value(AT_USPECIAL, 4, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_anthem_uspecial2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);

//Active
set_window_value(AT_USPECIAL, 5, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//Endlag
set_window_value(AT_USPECIAL, 6, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 10);

//Startup (60 - 30)
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_anthem_uspecial2"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_INVINCIBILITY, 1);

//Active
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 13);

//Endlag
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 14);

//Endlag 2
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.12);

var startup = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)

set_num_hitboxes(AT_USPECIAL, 0);

set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Sweetspot (Uncharged)");
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_ACTIVE, string(startup));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, hfx_sweetspot);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Sourspot (Uncharged)");
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, string(startup));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, hfx_small_up);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Sweetspot (Full Charge)");
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_ACTIVE, string(startup));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, hfx_sweetspot);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
set_hitbox_value(AT_USPECIAL, 3, HG_EFFECT, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_NAME, "Sourspot (Full Charge)");
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_ACTIVE, string(startup));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, hfx_small_up);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 10);