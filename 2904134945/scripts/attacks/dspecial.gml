#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DSPECIAL;

atk(a,AG_CATEGORY,2);
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_OFF_LEDGE,1);
atk(a,AG_SPRITE,sprite_get("dspecial"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("dspecial_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,12);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_absa_jump"));
win(a,1,AG_WINDOW_SFX_FRAME,6);

win(a,2,AG_WINDOW_TYPE,9);
win(a,2,AG_WINDOW_LENGTH,24);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,4);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,7);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,2);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_WIDTH,72);
hbox(a,1,HG_HEIGHT,132);
hbox(a,1,HG_PRIORITY,9);
hbox(a,1,HG_DAMAGE,2);
hbox(a,1,HG_ANGLE,45);
hbox(a,1,HG_ANGLE_FLIPPER,7);
hbox(a,1,HG_EFFECT,9);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_EXTRA_HITPAUSE,4);
hbox(a,1,HG_EXTENDED_PARRY_STUN,1);
hbox(a,1,HG_HITSTUN_MULTIPLIER,1.2);
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_ice_shatter_big"));
hbox(a,1,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
hbox(a,1,HG_PROJECTILE_MASK,-1);
hbox(a,1,HG_PROJECTILE_UNBASHABLE,1);
hbox(a,1,HG_PROJECTILE_IS_TRANSCENDENT,1);
hbox(a,1,HG_PROJECTILE_PLASMA_SAFE,1);
hbox(a,1,HG_PROJECTILE_VSPEED,0);
hbox(a,1,HG_PROJECTILE_HSPEED,0);
hbox(a,1,HG_PROJECTILE_DESTROY_EFFECT,29);