atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7); //10
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sfx_slash_medium1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hitbox_num = 1; //sweetspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 92);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -8);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9); //0.7
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sfx_swordhit_heavy1);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_phys3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++; //sourspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 54);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 55); //70
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sfx_swordhit_weak3);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_phys2);