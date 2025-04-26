#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_DTHROW;

atk(a,AG_SPRITE,sprite_get("dtilt_boneless"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HURTBOX_SPRITE,sprite_get("dtilt_boneless_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,4);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,9);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,3);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_HITBOX_X,48);
hbox(a,1,HG_HITBOX_Y,-6);
hbox(a,1,HG_WIDTH,80);
hbox(a,1,HG_HEIGHT,20);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,3);
hbox(a,1,HG_SHAPE,2);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,8);
hbox(a,1,HG_ANGLE,95);
hbox(a,1,HG_BASE_KNOCKBACK,8);
hbox(a,1,HG_KNOCKBACK_SCALING,.2);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,.4);
hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,20);
hbox(a,1,HG_VISUAL_EFFECT,303);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium3"));