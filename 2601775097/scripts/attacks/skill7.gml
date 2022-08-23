// [7] POLARIS
var atk = AT_USPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill7"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill7_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("skill7_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("skill7_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 11);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0

window_num ++; //windup 3
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10); //controls speed //10
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0

window_num ++; //casting
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_2"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[7].mp_cost1);

window_num ++; //cast end
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0

set_num_hitboxes(atk, 1)

var hitbox_num = 1; //homing projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 300); //hitbox duration in frames
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 20);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80); //75
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 10); //7
//set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_skill7_proj"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7); //2