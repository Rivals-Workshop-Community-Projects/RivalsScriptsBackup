// [4] ACCEL BLITZ
atk = AT_NSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("accelblitz"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("accelblitz_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5); //teleport = 5 windows
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

windowNum = 1; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //hold
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 1); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //movement buffer (3)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //casting
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //casting end
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1); // teleport = 7
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(atk, 2)

hitboxNum = 1; //accel blitz activate
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //teleport = window 3
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 1); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 60);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);

hitboxNum ++; //accel blitz deactivate
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 1); //hitbox duration in frames
//set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "10 MP");