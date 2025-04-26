#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FSPECIAL;

atk(a,AG_CATEGORY,2);
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_SPRITE,sprite_get("fspecial"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("fspecial_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,8);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));

win(a,2,AG_WINDOW_TYPE,9);
win(a,2,AG_WINDOW_LENGTH,20);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,8);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,1);

set_num_hitboxes(a,0);

hbox(a,1,HG_HITBOX_TYPE,2);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_WINDOW_CREATION_FRAME,0);
hbox(a,1,HG_LIFETIME,24);
hbox(a,1,HG_HITBOX_X,40);
hbox(a,1,HG_HITBOX_Y,-32);
hbox(a,1,HG_WIDTH,22);
hbox(a,1,HG_HEIGHT,22);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,1);
hbox(a,1,HG_BASE_KNOCKBACK,4);
hbox(a,1,HG_KNOCKBACK_SCALING,0.1);
hbox(a,1,HG_EFFECT,12);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_ANGLE,45);
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_dust_knuckle"));
hbox(a,1,HG_PROJECTILE_SPRITE,sprite_get("snowball"));
hbox(a,1,HG_PROJECTILE_MASK,-1);
hbox(a,1,HG_PROJECTILE_HSPEED,6);
hbox(a,1,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,1,HG_VISUAL_EFFECT,hexfx);
hbox(a,1,HG_HIT_LOCKOUT,2);
hbox(a,1,HG_IGNORES_PROJECTILES,1);
hbox(a,1,HG_PROJECTILE_WALL_BEHAVIOR,2);
hbox(a,1,HG_PROJECTILE_GROUND_BEHAVIOR,2);
hbox(a,1,HG_PROJECTILE_DOES_NOT_REFLECT,1);
hbox(a,1,HG_PROJECTILE_PARRY_STUN,1);
hbox(a,1,HG_EXTENDED_PARRY_STUN,1);
hbox(a,1,HG_SDI_MULTIPLIER,1.2);
hbox(a,1,HG_HITSTUN_MULTIPLIER,0.8);