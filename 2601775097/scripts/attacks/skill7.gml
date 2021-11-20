// [7] POLARIS (rip guard aura)
atk = AT_USPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("guardaura"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("guardaura_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("guardaura_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("guardaura_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 11);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2")); //asset_get("sfx_frog_fspecial_charge_gained_2")

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0

windowNum ++; //windup 3
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed //10
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0

windowNum ++; //casting
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_2"));

windowNum ++; //cast end
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 14); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0

set_num_hitboxes(atk, 1)

/*
hitboxNum = 1; //light blast
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 6);
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2); //1
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 120);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 120);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 5);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50); //361
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 3); //0
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6); //12
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 4); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.4); //2
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
*/

hitboxNum = 1; //homing projectile
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 0);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 300); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 20);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 20);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 1);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 0); //4
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0); //0,5
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 0); //5
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0); //0.4
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_homing_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hitboxNum, HG_EFFECT, 9);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "50 MP (10 MP to activate)
Hitting foes with the skill active will burn mana");