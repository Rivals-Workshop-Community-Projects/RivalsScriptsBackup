// [3] PHOTON BLAST
var atk = AT_DTHROW;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill3"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill3_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);
set_attack_value(atk, AG_LANDING_LAG, 10);

var charge_time = 40;

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);

window_num ++; //charge 1 (window 2)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, charge_time);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[3].mp_cost1);

window_num ++; //charge 2 (window 3)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, charge_time*0.75); //30
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[3].mp_cost2);

window_num ++; //charge 3 (window 4)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, charge_time*0.5); //20
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[3].mp_cost2);

window_num ++; //released attack
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(atk, 1)

var hitbox_num = 1; //blast
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 202);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 202);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 9);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10); //level 1 = 10 | level 2 = 7, 7 | level 3 = 7, 7, 7
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10); //8
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6); //0.2
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);