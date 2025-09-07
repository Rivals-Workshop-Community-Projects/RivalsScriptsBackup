var atk = AT_TAUNT;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, -1);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 18);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, sound_get("se_rockman_appear02"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 17);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 9);
set_window_value(atk, win, AG_WINDOW_LENGTH, 30);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 14);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 64);
set_hitbox_value(atk, hit, HG_WIDTH, 1);
set_hitbox_value(atk, hit, HG_HEIGHT, 1);
set_hitbox_value(atk, hit, HG_PRIORITY, 0);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("vfx_death"));
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(atk, hit, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(atk, hit, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_num_hitboxes(atk, hit);