#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_USPECIAL;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("walkturnAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_OFF_LEDGE,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("walkturnAcc_hurt"));
	atk(a,AG_USES_CUSTOM_GRAVITY,1);
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,10);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HSPEED_TYPE,1);
	win(a,1,AG_WINDOW_VSPEED_TYPE,1);
	win(a,1,AG_WINDOW_HSPEED,0);
	win(a,1,AG_WINDOW_VSPEED,0);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,1,AG_WINDOW_CUSTOM_AIR_FRICTION,0);
	win(a,1,AG_WINDOW_CUSTOM_GROUND_FRICTION,0);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,15);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_HSPEED_TYPE,1);
	win(a,2,AG_WINDOW_VSPEED_TYPE,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("se_lucario_special_H02"));
	
	win(a,3,AG_WINDOW_TYPE,7);
	win(a,3,AG_WINDOW_LENGTH,1);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_HAS_SFX,1);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,10);
	hbox(a,1,HG_HITBOX_Y,-33);
	hbox(a,1,HG_WIDTH,120);
	hbox(a,1,HG_HEIGHT,120);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,8);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,9);
	hbox(a,1,HG_KNOCKBACK_SCALING,1);
	hbox(a,1,HG_BASE_HITPAUSE,20);
	hbox(a,1,HG_VISUAL_EFFECT,3);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_forsburn_reappear_hit"));
	hbox(a,1,HG_ANGLE_FLIPPER,1);
	hbox(a,1,HG_HITBOX_GROUP,-1);
}
else
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("uspecial"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_OFF_LEDGE,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("uspecial_hurt"));
	
	win(a,1,AG_WINDOW_LENGTH,12);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
	win(a,1,AG_WINDOW_SFX_FRAME,10);
	
	win(a,2,AG_WINDOW_LENGTH,3);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
	
	win(a,3,AG_WINDOW_LENGTH,18);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,3);
	
	set_num_hitboxes(a,0);
	
	hbox(a,1,HG_HITBOX_TYPE,2);
	hbox(a,1,HG_LIFETIME,120);
	hbox(a,1,HG_HITBOX_X,-26);
	hbox(a,1,HG_HITBOX_Y,-53);
	hbox(a,1,HG_WIDTH,50);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,4);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,5);
	hbox(a,1,HG_KNOCKBACK_SCALING,.2);
	hbox(a,1,HG_BASE_HITPAUSE,5);
	hbox(a,1,HG_HITPAUSE_SCALING,.2);
	hbox(a,1,HG_VISUAL_EFFECT,301);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	hbox(a,1,HG_PROJECTILE_SPRITE,sprite_get("boneProj"));
	hbox(a,1,HG_PROJECTILE_COLLISION_SPRITE,sprite_get("boneProj_mask"));
	hbox(a,1,HG_PROJECTILE_MASK,-1);
	hbox(a,1,HG_PROJECTILE_GRAVITY,.25);
	hbox(a,1,HG_PROJECTILE_WALL_BEHAVIOR,2);
	hbox(a,1,HG_PROJECTILE_PARRY_STUN,1);
	hbox(a,1,HG_PROJECTILE_DESTROY_EFFECT,301);
	hbox(a,1,HG_EXTENDED_PARRY_STUN,1);
}