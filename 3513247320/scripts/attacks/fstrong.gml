var atk = AT_FSTRONG;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 18);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 8);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 22);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 25);
set_hitbox_value(atk, hit, HG_WIDTH, 25);
set_hitbox_value(atk, hit, HG_HEIGHT, 25);
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 10);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("bullet_small"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_ORANGE_SMALL);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 30);
set_hitbox_value(atk, hit, HG_WIDTH, 45);
set_hitbox_value(atk, hit, HG_HEIGHT, 30);
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 10);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("bullet_medium"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 6); // 9
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_ORANGE_SMALL);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 50);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 3);
set_hitbox_value(atk, hit, HG_ANGLE, 361);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("bullet_large"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 12); // 9
set_hitbox_value(atk, hit, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_SMALL);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_WIDTH, 140);
set_hitbox_value(atk, hit, HG_HEIGHT, 140);
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE, 361);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_SMALL);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_mol_uspec_ready"));
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_WIDTH, 140);
set_hitbox_value(atk, hit, HG_HEIGHT, 140);
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 6);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_num_hitboxes(atk, hit);