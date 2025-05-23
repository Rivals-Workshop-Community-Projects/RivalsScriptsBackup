#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_NSPECIAL_AIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("nair_boneless"));
atk(a,AG_NUM_WINDOWS,5);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,5);
atk(a,AG_HURTBOX_SPRITE,sprite_get("nair_boneless_hurt"));

win(a,1,AG_WINDOW_LENGTH,5);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_spin"));
win(a,1,AG_WINDOW_SFX_FRAME,3);

win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);

win(a,3,AG_WINDOW_LENGTH,2);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,3);

win(a,4,AG_WINDOW_LENGTH,4);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,4);

win(a,5,AG_WINDOW_LENGTH,8);
win(a,5,AG_WINDOW_ANIM_FRAMES,1);
win(a,5,AG_WINDOW_ANIM_FRAME_START,5);
win(a,5,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,4);
hbox(a,1,HG_HITBOX_X,8);
hbox(a,1,HG_HITBOX_Y,-30);
hbox(a,1,HG_WIDTH,82);
hbox(a,1,HG_HEIGHT,50);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_SHAPE,2);
hbox(a,1,HG_DAMAGE,3);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,5);
hbox(a,1,HG_KNOCKBACK_SCALING,.2);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_EXTRA_HITPAUSE,1);
hbox(a,1,HG_HITPAUSE_SCALING,.2);
hbox(a,1,HG_VISUAL_EFFECT,aura_effect);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
hbox(a,1,HG_ANGLE_FLIPPER,10);

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_HITBOX_GROUP,-1);
hbox(a,2,HG_WINDOW,4);
hbox(a,2,HG_LIFETIME,4);
hbox(a,2,HG_HITBOX_X,8);
hbox(a,2,HG_HITBOX_Y,-30);
hbox(a,2,HG_WIDTH,92);
hbox(a,2,HG_HEIGHT,60);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_SHAPE,2);
hbox(a,2,HG_DAMAGE,5);
hbox(a,2,HG_ANGLE,45);
hbox(a,2,HG_BASE_KNOCKBACK,9);
hbox(a,2,HG_KNOCKBACK_SCALING,.6);
hbox(a,2,HG_BASE_HITPAUSE,9);
hbox(a,2,HG_HITPAUSE_SCALING,.6);
hbox(a,2,HG_VISUAL_EFFECT,aurabig_effect);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_medium"));
hbox(a,2,HG_ANGLE_FLIPPER,6);