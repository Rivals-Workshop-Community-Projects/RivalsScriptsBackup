set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

for (var hbox_num = 0; hbox_num < 5; hbox_num += 1) {

set_hitbox_value(AT_DAIR, hbox_num, HG_MUNO_HITBOX_NAME, "Multihit "+string(hbox_num));
set_hitbox_value(AT_DAIR, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, hbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, hbox_num, HG_WINDOW_CREATION_FRAME, -3 + 3*hbox_num);
set_hitbox_value(AT_DAIR, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, hbox_num, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, hbox_num, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, hbox_num, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, hbox_num, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, hbox_num, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, hbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, hbox_num, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, hbox_num, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, hbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, hbox_num, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, hbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, hbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, hbox_num, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, hbox_num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, hbox_num, HG_HIT_PARTICLE_NUM, 2);

set_num_hitboxes(AT_DAIR, hbox_num);
}