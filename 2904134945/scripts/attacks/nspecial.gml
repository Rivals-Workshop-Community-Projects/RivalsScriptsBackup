#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_NSPECIAL;

atk(a,AG_CATEGORY,2);
atk(a,AG_SPRITE,sprite_get("nspecial"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("nspecial_hurt"));
atk(a,AG_NUM_WINDOWS,9);
atk(a,AG_OFF_LEDGE,1);

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,9);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
win(a,1,AG_WINDOW_SFX_FRAME,3);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,110);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
win(a,2,AG_WINDOW_GOTO,9);

win(a,3,AG_WINDOW_TYPE,1); // early
win(a,3,AG_WINDOW_LENGTH,16);
win(a,3,AG_WINDOW_ANIM_FRAMES,4);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);

win(a,4,AG_WINDOW_TYPE,1); // early
win(a,4,AG_WINDOW_LENGTH,8);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,8);

win(a,5,AG_WINDOW_TYPE,1); // end
win(a,5,AG_WINDOW_LENGTH,6);
win(a,5,AG_WINDOW_ANIM_FRAMES,1);
win(a,5,AG_WINDOW_ANIM_FRAME_START,0);
win(a,5,AG_WINDOW_GOTO,10);

win(a,6,AG_WINDOW_TYPE,1); // perfect startup
win(a,6,AG_WINDOW_LENGTH,12);
win(a,6,AG_WINDOW_ANIM_FRAMES,3);
win(a,6,AG_WINDOW_ANIM_FRAME_START,9);
win(a,6,AG_WINDOW_HAS_SFX,1);
win(a,6,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
win(a,6,AG_WINDOW_SFX_FRAME,3);

win(a,7,AG_WINDOW_TYPE,1); // perfect
win(a,7,AG_WINDOW_LENGTH,15);
win(a,7,AG_WINDOW_ANIM_FRAMES,3);
win(a,7,AG_WINDOW_ANIM_FRAME_START,12);
win(a,7,AG_WINDOW_HAS_SFX,1);
win(a,7,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
win(a,7,AG_WINDOW_SFX_FRAME,3);

win(a,8,AG_WINDOW_TYPE,1); // perfect endlag
win(a,8,AG_WINDOW_LENGTH,18);
win(a,8,AG_WINDOW_ANIM_FRAMES,3);
win(a,8,AG_WINDOW_ANIM_FRAME_START,15);
win(a,8,AG_WINDOW_GOTO,10);

win(a,9,AG_WINDOW_TYPE,1); // miss
win(a,9,AG_WINDOW_LENGTH,4);
win(a,9,AG_WINDOW_ANIM_FRAMES,1);
win(a,9,AG_WINDOW_ANIM_FRAME_START,0);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,2);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_WINDOW_CREATION_FRAME,4);
hbox(a,1,HG_LIFETIME,120);
hbox(a,1,HG_HITBOX_X,28);
hbox(a,1,HG_HITBOX_Y,-32);
hbox(a,1,HG_WIDTH,32);
hbox(a,1,HG_HEIGHT,32);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,4);
hbox(a,1,HG_BASE_KNOCKBACK,8);
hbox(a,1,HG_KNOCKBACK_SCALING,0.6);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_EXTRA_HITPAUSE,6);
hbox(a,1,HG_ANGLE,50);
hbox(a,1,HG_HIT_SFX,sound_get("glass3"));
hbox(a,1,HG_PROJECTILE_SPRITE,sprite_get("nspecProj"));
hbox(a,1,HG_PROJECTILE_MASK,-1);
hbox(a,1,HG_PROJECTILE_HSPEED,has_rune("N")?24:6);
hbox(a,1,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,1,HG_VISUAL_EFFECT,spinfx);
hbox(a,1,HG_HIT_LOCKOUT,2);
hbox(a,1,HG_PROJECTILE_WALL_BEHAVIOR,2);
hbox(a,1,HG_PROJECTILE_GROUND_BEHAVIOR,2);

hbox(a,2,HG_HITBOX_TYPE,2);
hbox(a,2,HG_WINDOW,7);
hbox(a,2,HG_WINDOW_CREATION_FRAME,0);
hbox(a,2,HG_LIFETIME,60);
hbox(a,2,HG_HITBOX_X,30);
hbox(a,2,HG_HITBOX_Y,-36);
hbox(a,2,HG_WIDTH,32);
hbox(a,2,HG_HEIGHT,32);
hbox(a,2,HG_PRIORITY,2);
hbox(a,2,HG_DAMAGE,0);
hbox(a,2,HG_BASE_KNOCKBACK,8);
hbox(a,2,HG_KNOCKBACK_SCALING,0.6);
hbox(a,2,HG_BASE_HITPAUSE,1);
hbox(a,2,HG_EXTRA_HITPAUSE,10);
hbox(a,2,HG_ANGLE,60);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_icehit_heavy2"));
hbox(a,2,HG_PROJECTILE_SPRITE,sprite_get("flash"));
hbox(a,2,HG_PROJECTILE_ANIM_SPEED,0.3);
hbox(a,2,HG_PROJECTILE_MASK,-1);
hbox(a,2,HG_PROJECTILE_HSPEED, has_rune("N")?18:2);
hbox(a,2,HG_PROJECTILE_AIR_FRICTION,0.015);
hbox(a,2,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,2,HG_VISUAL_EFFECT,302);
hbox(a,2,HG_PROJECTILE_WALL_BEHAVIOR,2);
hbox(a,2,HG_PROJECTILE_GROUND_BEHAVIOR,2);
hbox(a,2,HG_PROJECTILE_IS_TRANSCENDENT,1);
hbox(a,2,HG_IGNORES_PROJECTILES,1);

hbox(a,3,HG_HITBOX_TYPE,2);
hbox(a,3,HG_LIFETIME,19);
hbox(a,3,HG_WIDTH,96);
hbox(a,3,HG_HEIGHT,96);
hbox(a,3,HG_PRIORITY,2);
hbox(a,3,HG_DAMAGE,1);
hbox(a,3,HG_BASE_KNOCKBACK,8);
hbox(a,3,HG_KNOCKBACK_SCALING,0.6);
hbox(a,3,HG_BASE_HITPAUSE,6);
hbox(a,3,HG_ANGLE,90);
hbox(a,3,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
hbox(a,3,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
hbox(a,3,HG_PROJECTILE_MASK,-1);
hbox(a,3,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,3,HG_VISUAL_EFFECT,302);
hbox(a,3,HG_PROJECTILE_IS_TRANSCENDENT,1);
hbox(a,3,HG_HITSTUN_MULTIPLIER,0.7);

hbox(a,4,HG_HITBOX_TYPE,2);
hbox(a,4,HG_LIFETIME,19);
hbox(a,4,HG_WIDTH,160);
hbox(a,4,HG_HEIGHT,160);
hbox(a,4,HG_PRIORITY,2);
hbox(a,4,HG_DAMAGE,7);
hbox(a,4,HG_BASE_KNOCKBACK,10);
hbox(a,4,HG_KNOCKBACK_SCALING,1.0);
hbox(a,4,HG_BASE_HITPAUSE,12);
hbox(a,4,HG_ANGLE,45);
hbox(a,4,HG_HIT_SFX,sound_get("flakeIce"));
hbox(a,4,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
hbox(a,4,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
hbox(a,4,HG_PROJECTILE_MASK,-1);
hbox(a,4,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,4,HG_VISUAL_EFFECT,304);
hbox(a,4,HG_PROJECTILE_IS_TRANSCENDENT,1);
hbox(a,4,HG_PROJECTILE_PARRY_STUN,1);
hbox(a,4,HG_EXTENDED_PARRY_STUN,1);