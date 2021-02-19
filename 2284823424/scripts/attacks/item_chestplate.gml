set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, spr_nspecial_item_chestplate);
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NSPECIAL_AIR, AG_MUNO_ATTACK_NAME, "NSpecial: Thorns");



set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_MUNO_WINDOW_INVUL, -2);

if has_rune("O") set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 45);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);



set_num_hitboxes(AT_NSPECIAL_AIR, 0);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 200);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 200);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);

if has_rune("O") set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 8);