#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_FSPECIAL_AIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("fair_boneless"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,4);
atk(a,AG_HURTBOX_SPRITE,sprite_get("fair_boneless_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,5);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_VSPEED,-1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
win(a,1,AG_WINDOW_SFX_FRAME,2);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,8);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,8);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,17);
hbox(a,1,HG_HITBOX_Y,-35);
hbox(a,1,HG_WIDTH,65);
hbox(a,1,HG_HEIGHT,70);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,6);
hbox(a,1,HG_ANGLE,70);
hbox(a,1,HG_ANGLE_FLIPPER,6);
hbox(a,1,HG_BASE_KNOCKBACK,6);
hbox(a,1,HG_KNOCKBACK_SCALING,0.4);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_HITPAUSE_SCALING,0.4);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));