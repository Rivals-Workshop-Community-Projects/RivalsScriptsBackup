#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_FTHROW;

atk(a,AG_SPRITE,sprite_get("ftilt_boneless"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HURTBOX_SPRITE,sprite_get("ftilt_boneless_hurt"));

win(a,1,AG_WINDOW_LENGTH,8);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy1"));
win(a,1,AG_WINDOW_SFX_FRAME,2);

win(a,2,AG_WINDOW_LENGTH,4);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_LENGTH,11);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,50);
hbox(a,1,HG_HITBOX_Y,-34);
hbox(a,1,HG_WIDTH,70);
hbox(a,1,HG_HEIGHT,50);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,8);
hbox(a,1,HG_ANGLE,40);
hbox(a,1,HG_BASE_KNOCKBACK,7.5);
hbox(a,1,HG_KNOCKBACK_SCALING,0.9);
hbox(a,1,HG_BASE_HITPAUSE,9);
hbox(a,1,HG_HITPAUSE_SCALING,0.9);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_medium"));
hbox(a,1,HG_VISUAL_EFFECT,aurabig_effect);

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_LIFETIME,4);
hbox(a,2,HG_HITBOX_X,98);
hbox(a,2,HG_HITBOX_Y,-34);
hbox(a,2,HG_WIDTH,50);
hbox(a,2,HG_HEIGHT,30);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,5);
hbox(a,2,HG_ANGLE,50);
hbox(a,2,HG_BASE_KNOCKBACK,7);
hbox(a,2,HG_KNOCKBACK_SCALING,0.4);
hbox(a,2,HG_BASE_HITPAUSE,7);
hbox(a,2,HG_HITPAUSE_SCALING,0.4);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
hbox(a,2,HG_VISUAL_EFFECT,aura_effect);