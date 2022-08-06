set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialair"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecialair_hurt"));

//spinning
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("GliderSpin"));

//gliding
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0.5);

//turning
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0.5);

//firing
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 35);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, sound_get("FireBall"));

//start downward
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX, sound_get("GliderOpen"));

//pratfall
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX, sound_get("GliderOpen"));


set_num_hitboxes(AT_USPECIAL_2, 5);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Flip multihit 1");

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 92);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Flip multihit 2");

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Flip multihit 3");

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Flip multihit launcher");

set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Fire ball");

set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 180);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("fire_ball"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, sprite_get("fire_ball"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fire_ball_hurt"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_GRAVITY, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("FireBallHit"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, -18);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, 24);

set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "You can the aerial NSpecial (fire ball) during the glide. Can be cancelled into Dair and FSpecial. Using the dodge button results in pratfall. Turning the glider will decrease your height, and the decrease is bigger when the speed is smaller. The glider is a semisolid platform except when the kart is turning.");