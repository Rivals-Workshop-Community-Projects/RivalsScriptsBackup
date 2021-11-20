// [3] PHOTON BLAST
atk = AT_DTHROW;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("photonblast"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("photonblast_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);
set_attack_value(atk, AG_LANDING_LAG, 10);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //charge 1 (window 2)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, max_charge_time); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

windowNum ++; //charge 2 (window 3)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, max_charge_time*0.75); //controls speed //30
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

windowNum ++; //charge 3 (window 4)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, max_charge_time*0.5); //controls speed //20
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

windowNum ++; //released attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 0);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_success"));

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 7);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(atk, 1)

hitboxNum = 1; //blast
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 5); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 3); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -41);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 202);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 202);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 9); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 10);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 8); //15
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 3);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "40 MP");