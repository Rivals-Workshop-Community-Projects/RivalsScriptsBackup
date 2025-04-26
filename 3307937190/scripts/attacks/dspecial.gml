atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //cartridge
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 60);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 20);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_ink1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("dspecial_red"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++; //EXTRA HITBOX!
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 20);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);

set_num_hitboxes(atk, 0);