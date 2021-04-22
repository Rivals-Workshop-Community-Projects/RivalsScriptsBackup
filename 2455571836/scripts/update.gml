// Muno template - [CORE] init, update

// DO NOT EDIT - Only edit user_event15.gml

if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}

if (state == AT_USPECIAL && window = 5 && !free){
    window = 6;
}

if state_cat != SC_HITSTUN
sandstarred = false;

/*with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        glace_Freeze = false;
		outline_color = [ 0, 0, 0 ];
    }
}

with (asset_get("oPlayer")) {
	if (glace_Freeze && glace_Freeze_ID == other.id && !hitpause) {
		glace_Freeze_TIMER -= 1;
		
		outline_color = [ 191, 235, 255 ];
		
		if (glace_Freeze_TIMER == 0){
		glace_Freeze = false;
		outline_color = [ 0, 0, 0 ];
		}
	}
}*/

if swallowed {
	swallowed = 0
		var ability_spr = sprite_get("glace_kirby")
		var ability_hurt = sprite_get("glace_kirby_hurt")
		var ability_icon = sprite_get("glace_kirby_icon")
		var ability_sb1 = sprite_get("nspecial_proj")
		var ability_sb1_hurt = sprite_get("nspecial_proj_hurt")
		var ability_sbsfx1 = sound_get("glace_snowball_throw")
		var ability_sbsfx2 = sound_get("glace_snowball_land")
		
	with enemykirby  {
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sbsfx1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -33);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -36);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sbsfx2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_sb1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_sb1_hurt);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 22);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

	newicon = ability_icon
	}
}

max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

user_event(14);