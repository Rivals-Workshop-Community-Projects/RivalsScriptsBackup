set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_throw"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

for (var hbox_num = 0; hbox_num < 5; hbox_num += 1) {

set_hitbox_value(AT_FAIR, hbox_num, HG_MUNO_HITBOX_NAME, hbox_num<4? "Multihit "+string(hbox_num) : "Launcher");
set_hitbox_value(AT_FAIR, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, hbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, hbox_num, HG_WINDOW_CREATION_FRAME, -2 + 2*hbox_num);
set_hitbox_value(AT_FAIR, hbox_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, hbox_num, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, hbox_num, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FAIR, hbox_num, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, hbox_num, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, hbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, hbox_num, HG_DAMAGE, hbox_num<4? 1 : 2);
set_hitbox_value(AT_FAIR, hbox_num, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, hbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, hbox_num, HG_KNOCKBACK_SCALING, hbox_num<4? 0 : 0.5);
set_hitbox_value(AT_FAIR, hbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, hbox_num, HG_VISUAL_EFFECT, hbox_num<4? 303 : 302 );
set_hitbox_value(AT_FAIR, hbox_num, HG_VISUAL_EFFECT_X_OFFSET, hbox_num<4? 0 : 32);
set_hitbox_value(AT_FAIR, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, hbox_num, HG_HIT_SFX, hbox_num<4? sound_get("ssb_sword_light") : sound_get("ssb_sword_med"));
set_hitbox_value(AT_FAIR, hbox_num, HG_ANGLE_FLIPPER, hbox_num<4? 9 : 0);
set_hitbox_value(AT_FAIR, hbox_num, HG_HIT_PARTICLE_NUM, hbox_num<4? 1 : 2);
if hbox_num = 4 set_hitbox_value(AT_FAIR, hbox_num, HG_MUNO_HITBOX_MISC, "Group -1");
}

set_num_hitboxes(AT_FAIR, hbox_num);