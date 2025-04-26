#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_USPECIAL_GROUND;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("uair_boneless"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,5);
atk(a,AG_HURTBOX_SPRITE,sprite_get("uair_boneless_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,5);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
win(a,1,AG_WINDOW_SFX_FRAME,3);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,9);
win(a,2,AG_WINDOW_ANIM_FRAMES,3);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
win(a,2,AG_WINDOW_VSPEED,-1);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,9);
win(a,3,AG_WINDOW_ANIM_FRAMES,3);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_WINDOW_CREATION_FRAME,3);
hbox(a,1,HG_LIFETIME,3);
hbox(a,1,HG_HITBOX_X,2);
hbox(a,1,HG_HITBOX_Y,-56);
hbox(a,1,HG_WIDTH,70);
hbox(a,1,HG_HEIGHT,70);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,6);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,8);
hbox(a,1,HG_KNOCKBACK_SCALING,0.35);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,0.35);
hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-16);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
hbox(a,1,HG_ANGLE_FLIPPER,6);
hbox(a,1,HG_VISUAL_EFFECT,303);