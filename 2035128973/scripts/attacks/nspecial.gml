#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_NSPECIAL;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("ftiltAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_OFF_LEDGE,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("ftiltAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,16);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_003"));
	win(a,1,AG_WINDOW_SFX_FRAME,1);
	
	win(a,2,AG_WINDOW_TYPE,9);
	win(a,2,AG_WINDOW_LENGTH,1);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,asset_get("sfx_bubblepop"));
	win(a,2,AG_WINDOW_SFX_FRAME,1);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,3,AG_WINDOW_HAS_SFX,1);
	win(a,3,AG_WINDOW_SFX,sound_get("se_lucario_special_N06_s"));
	win(a,3,AG_WINDOW_SFX_FRAME,1);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,1);
	hbox(a,1,HG_WIDTH,1);
	hbox(a,1,HG_HEIGHT,1);
	hbox(a,1,HG_HITBOX_X,-30);
	hbox(a,1,HG_HITBOX_Y,-36);
	hbox(a,1,HG_PRIORITY,3);
	hbox(a,1,HG_DAMAGE,1);
	hbox(a,1,HG_ANGLE,50);
	hbox(a,1,HG_HITSTUN_MULTIPLIER,1);
	hbox(a,1,HG_BASE_KNOCKBACK,4);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_ANGLE_FLIPPER,9);
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_TYPE,2);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,1000);
	hbox(a,2,HG_WIDTH,1);
	hbox(a,2,HG_HEIGHT,1);
	hbox(a,2,HG_HITBOX_X,-30);
	hbox(a,2,HG_HITBOX_Y,-36);
	hbox(a,2,HG_PRIORITY,3);
	hbox(a,2,HG_DAMAGE,1);
	hbox(a,2,HG_ANGLE,50);
	hbox(a,2,HG_HITSTUN_MULTIPLIER,1);
	hbox(a,2,HG_BASE_KNOCKBACK,1);
	hbox(a,2,HG_HITBOX_GROUP,-1);
	hbox(a,2,HG_BASE_HITPAUSE,4);
	hbox(a,2,HG_HITPAUSE_SCALING,1);
	hbox(a,2,HG_PROJECTILE_HSPEED,4);
	hbox(a,2,HG_PROJECTILE_UNBASHABLE,1);
	hbox(a,2,HG_PROJECTILE_AIR_FRICTION,0);
	hbox(a,2,HG_PROJECTILE_WALL_BEHAVIOR,1);
	hbox(a,2,HG_PROJECTILE_GROUND_BEHAVIOR,1);
	hbox(a,2,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
	hbox(a,2,HG_PROJECTILE_DOES_NOT_REFLECT,1);
	hbox(a,2,HG_PROJECTILE_PARRY_STUN,1);
	hbox(a,2,HG_PROJECTILE_IS_TRANSCENDENT,1);
	hbox(a,2,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
	hbox(a,2,HG_PROJECTILE_MASK,-1);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
	hbox(a,2,HG_HIT_LOCKOUT,30);
}
else
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("nspecial"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("nspecial_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,11);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	
	win(a,2,AG_WINDOW_TYPE,9);
	win(a,2,AG_WINDOW_LENGTH,9);
	win(a,2,AG_WINDOW_ANIM_FRAMES,3);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,10);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,3,AG_WINDOW_HAS_SFX,1);
	win(a,3,AG_WINDOW_SFX,sound_get("se_lucario_special_N06_s"));
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,12);
	win(a,4,AG_WINDOW_ANIM_FRAMES,2);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
	win(a,4,AG_WINDOW_HSPEED,-2);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,9);
	hbox(a,1,HG_HITBOX_X,-26);
	hbox(a,1,HG_HITBOX_Y,-30);
	hbox(a,1,HG_PRIORITY,3);
	hbox(a,1,HG_DAMAGE,1);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_EXTRA_HITPAUSE,2);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_ANGLE_FLIPPER,4);
	hbox(a,1,HG_SDI_MULTIPLIER,2);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
	hbox(a,1,HG_IGNORES_PROJECTILES,1);
	
	hbox(a,2,HG_HITBOX_TYPE,2);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,4);
	hbox(a,2,HG_LIFETIME,100);
	hbox(a,2,HG_WIDTH,1);
	hbox(a,2,HG_HEIGHT,1);
	hbox(a,2,HG_HITBOX_X,30);
	hbox(a,2,HG_HITBOX_Y,-30);
	hbox(a,2,HG_PRIORITY,3);
	hbox(a,2,HG_DAMAGE,1);
	hbox(a,2,HG_ANGLE,50);
	hbox(a,2,HG_EFFECT,0);
	hbox(a,2,HG_BASE_KNOCKBACK,1);
	hbox(a,2,HG_KNOCKBACK_SCALING,1);
	hbox(a,2,HG_HITBOX_GROUP,-1);
	hbox(a,2,HG_BASE_HITPAUSE,1);
	hbox(a,2,HG_HITPAUSE_SCALING,1);
	hbox(a,2,HG_PROJECTILE_HSPEED,1);
	hbox(a,2,HG_PROJECTILE_WALL_BEHAVIOR,1);
	hbox(a,2,HG_PROJECTILE_GROUND_BEHAVIOR,1);
	hbox(a,2,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
	hbox(a,2,HG_PROJECTILE_MASK,-1);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
	hbox(a,2,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,2,HG_PROJECTILE_DESTROY_EFFECT,aurabig_effect);
}