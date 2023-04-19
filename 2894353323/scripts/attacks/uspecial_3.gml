set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_3"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_3_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_MUNO_ATTACK_NAME, "USpecial 3");

set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);

//Charge
set_window_value(AT_USPECIAL_GROUND, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.02);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_USPECIAL_GROUND, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL_GROUND, 4, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

var startup = get_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH) + 16;
var active = get_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH) - 16;
set_attack_value(AT_USPECIAL_GROUND, AG_MUNO_ATTACK_MISC_ADD, "Can be cancelled from frame " + string (startup) + "-" + string(startup + active) + "on hit.");

set_num_hitboxes(AT_USPECIAL_GROUND, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_MUNO_HITBOX_NAME, "Sweetpsot");
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_MUNO_HITBOX_NAME, "Sourspot / Lingering");
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 6);
