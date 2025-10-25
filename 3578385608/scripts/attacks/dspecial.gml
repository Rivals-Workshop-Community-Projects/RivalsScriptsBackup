var atk = AT_DSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 0);

//1 startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);

//2 spawn table
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//3 start cooking
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 10);

////cooking loop
//4 hold option
num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 13);
//5 pressed option
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, num, AG_WINDOW_GOTO, 4);

//6 cooking end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//7 cooking success
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//8 call jesse
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//9 start meth cooking
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 35);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 36);

//10 cooking meth loop
num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 43);

//11 cooking meth end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 45);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 53);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1; //meth
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("dspecial_meth"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_meth_hurt"));
set_hitbox_value(atk, num, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, num, HG_LIFETIME, 600);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 30);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 0);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get(""));

num++; //table swing open
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, 50);
set_hitbox_value(atk, num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, num, HG_WIDTH, 120);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_num_hitboxes(atk, 2);