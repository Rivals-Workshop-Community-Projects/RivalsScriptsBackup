#region //  Knockdown State
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("knockdown"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 9);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("wren_crouchbox"));

// Knocked down
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_land"));

// On ground
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Normal Get-up
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_GOTO, 12);

// Get-up attack (start-up)
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 2);

// Get-up attack (active)
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 2);

// Get-up attack (endlag)
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_GOTO, 12);

// Get-up special (start-up)
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 2);

// Get-up special (active)
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAME_START, 2);

// Get-up special (endlag)
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_GOTO, 12);

set_num_hitboxes(AT_EXTRA_1, 0);
#endregion

#region //  Shield
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("shield"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("wren_hurtbox"));
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY, 1);

// Shield Up
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 2);

// Shield Held
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Shield Drop
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_GOTO, 12);

// Shield Break (Launch)
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));

// Shield Break (Loop)
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_CUSTOM_GRAVITY, .2);

// Spot Dodge (Start)
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAME_START, 9);

// Spot Dodge (Active)
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAME_START, 10);

// Spot Dodge (Recover)
set_window_value(AT_EXTRA_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 8, AG_WINDOW_ANIM_FRAME_START, 11);
#endregion

#region //  Ledge
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 12);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("wren_hurtbox"));
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

// Grabbing Ledge
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Hanging from Ledge
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Get-up
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Attack (start-up)
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Attack (active)
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Attack (endlag)
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Special (start-up)
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Special (active)
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Special (endlag)
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Roll (start-up)
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Roll (active)
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAME_START, 4);

// Get-up Roll (endlag)
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_ANIM_FRAME_START, 4);
#endregion