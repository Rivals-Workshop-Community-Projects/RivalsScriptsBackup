atk = AT_DAIR;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

window_num = 1; //windup jump
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sfx_plunge_start);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -10);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

window_num ++; //fall
set_window_value(atk, window_num, AG_WINDOW_TYPE, 10);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 18);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1);
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sfx_plunge_loop);

window_num ++; //pre-land frame for the sound
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sfx_plunge_end);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1);

window_num ++; //landing
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14); //18
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //15
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(atk, 2);

hitbox_num = 1; //meteor
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_phys1);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sfx_swordhit_heavy1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);

hitbox_num ++; //landing hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 150);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10); //8
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6); //5
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9); //0.6
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_phys3);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_kragg_spike")); //save for later