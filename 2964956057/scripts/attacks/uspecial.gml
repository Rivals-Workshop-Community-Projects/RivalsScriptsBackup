var atk = AT_USPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 8:12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, -0.1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_activate"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_deactivate"));

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

set_num_hitboxes(atk, hitbox_num);