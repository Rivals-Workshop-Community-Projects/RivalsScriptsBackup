set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//startup (charge)
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("shotgunload"));

//shot
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, -7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("shotgunshot"));

/* leftover
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//startup (charge)
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//start
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);

//active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);

//chomp
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 1);
*/

set_num_hitboxes(AT_FSTRONG, 5);

//small
var n = 1;
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, n, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, n, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, n, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, n, HG_LIFETIME, 9);

set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, n, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, n, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, n, HG_SHAPE, 0);

set_hitbox_value(AT_FSTRONG, n, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, n, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, n, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, n, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, n, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, n, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, n, HG_HIT_LOCKOUT, 40);
set_hitbox_value(AT_FSTRONG, n, HG_HIT_SFX, sound_get("enemy_kill"));

//projectiles, 2 - up, 3 - right, 4 - down
n++;

while(n<5)
{
	set_hitbox_value(AT_FSTRONG, n, HG_HIT_LOCKOUT, 40);
	set_hitbox_value(AT_FSTRONG, n, HG_PRIORITY, 1);
	set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_FSTRONG, n, HG_WINDOW, 2);
	set_hitbox_value(AT_FSTRONG, n, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_FSTRONG, n, HG_LIFETIME, 60);

	set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_X, 90);
	set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_Y, -40 + (n-3)*20);
	set_hitbox_value(AT_FSTRONG, n, HG_WIDTH, 30);
	set_hitbox_value(AT_FSTRONG, n, HG_HEIGHT, 30);
	set_hitbox_value(AT_FSTRONG, n, HG_SHAPE, 0);

	set_hitbox_value(AT_FSTRONG, n, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSTRONG, n, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSTRONG, n, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_FSTRONG, n, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FSTRONG, n, HG_HITPAUSE_SCALING, 0.3);

	//projectile stuff
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_HSPEED, 7 + 2*(n==3));
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_VSPEED, 5*(n-3));

	set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_ANIM_SPEED, 3);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_AIR_FRICTION, 0);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_PARRY_STUN, true);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_FSTRONG, n, HG_PROJECTILE_UNBASHABLE, true);
	set_hitbox_value(AT_FSTRONG, n, HG_HIT_SFX, sound_get("enemy_kill"));
	n++;
}
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 340);

//long
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, n, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, n, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, n, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, n, HG_LIFETIME, 9);

set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSTRONG, n, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, n, HG_WIDTH, 180);
set_hitbox_value(AT_FSTRONG, n, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, n, HG_SHAPE, 2);

set_hitbox_value(AT_FSTRONG, n, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, n, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, n, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, n, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, n, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, n, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, n, HG_HIT_LOCKOUT, 40);
set_hitbox_value(AT_FSTRONG, n, HG_HIT_SFX, sound_get("enemy_kill"));

//munophone
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_MISC_ADD, "Going up");
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_MISC_ADD, "Going forward");
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_MISC_ADD, "Going down");
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_MISC_ADD, "Only on full Charge");
