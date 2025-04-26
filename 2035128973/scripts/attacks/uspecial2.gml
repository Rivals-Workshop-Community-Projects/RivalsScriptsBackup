#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_USPECIAL_2;

atk(a,AG_CATEGORY,2);
atk(a,AG_SPRITE,sprite_get("uspecial_boneless"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_OFF_LEDGE,1);
atk(a,AG_AIR_SPRITE,sprite_get("uspecial_boneless"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("uspecial_boneless_hurt"));
atk(a,AG_USES_CUSTOM_GRAVITY,1);

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,12);
win(a,1,AG_WINDOW_ANIM_FRAMES,4);
win(a,1,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
win(a,1,AG_WINDOW_CUSTOM_AIR_FRICTION,0);
win(a,1,AG_WINDOW_CUSTOM_GROUND_FRICTION,0);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_absa_concentrate"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,14);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,4);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,5);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,7);

win(a,4,AG_WINDOW_TYPE,7);
win(a,4,AG_WINDOW_LENGTH,4);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,8);
win(a,4,AG_WINDOW_HAS_SFX,1);

set_num_hitboxes(a,0);

hbox(a,1,HG_HITBOX_TYPE,2);
hbox(a,1,HG_WINDOW,0);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_Y,-30);
hbox(a,1,HG_WIDTH,60);
hbox(a,1,HG_HEIGHT,60);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,6);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,6);
hbox(a,1,HG_KNOCKBACK_SCALING,.2);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_HITPAUSE_SCALING,.2);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
hbox(a,1,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
hbox(a,1,HG_PROJECTILE_MASK,-1);
hbox(a,1,HG_PROJECTILE_GROUND_BEHAVIOR,1);
hbox(a,1,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
hbox(a,1,HG_PROJECTILE_PLASMA_SAFE,1);
hbox(a,1,HG_PROJECTILE_DOES_NOT_REFLECT,1);
hbox(a,1,HG_PROJECTILE_UNBASHABLE,1);
hbox(a,1,HG_PROJECTILE_IS_TRANSCENDENT,1);
hbox(a,1,HG_PROJECTILE_PARRY_STUN,1);
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_HIT_LOCKOUT,1);
hbox(a,1,HG_EXTENDED_PARRY_STUN,1);
hbox(a,1,HG_EFFECT,12);
hbox(a,1,HG_HITSTUN_MULTIPLIER,0.7);
hbox(a,1,HG_DRIFT_MULTIPLIER,1.1);