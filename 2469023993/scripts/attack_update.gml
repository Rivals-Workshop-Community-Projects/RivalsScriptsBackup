//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//swift mode value changes
if swift_mode = true{
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj_2"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_FSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 17);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 17);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 8);
	set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 3);
	set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 6);
	set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 12);
	set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 13);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 15);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
	set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
	set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, -16);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 38);
	set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 6);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 38);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 38);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 6);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 38);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 38);
	set_hitbox_value(49, 1, HG_DAMAGE, 57);
	set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 20);
	set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
	set_window_value(49, 3, AG_WINDOW_HSPEED, 50);
	set_hitbox_value(49, 2, HG_HITBOX_X, 250);
	set_hitbox_value(49, 2, HG_WIDTH, 500);
	set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -0.5);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("suairEX"));
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("kickEX"));
	set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("slamEX"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("spinEX"));
	set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_end"));
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("clapEX"));
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
	set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 301);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 5);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, boxFX);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 40);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	if (window == 2 && attack == AT_USPECIAL && window_timer < 40){
		super_armor = true;
	}
	if (window == 2 && attack == AT_USPECIAL && window_timer > 40){
		super_armor = false;
	}
	if (attack == AT_FSTRONG){
		if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_ori_dsmash_skitter_sein"))
		}
	}

	if (attack == AT_DSTRONG){
		if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_ori_dsmash_skitter_sein"))
		}
		if (window == 3 && window_timer == 2){
		sound_play(asset_get("sfx_ori_dsmash_skitter_sein"))
		}
	}

	if (attack == AT_USTRONG){
		if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_ori_dsmash_skitter_sein"))
		}
	}
}

if swift_mode = false{
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3.75);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5.75);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5.5);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 2);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
	set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 2);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 9);
	set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 4);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
	set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
	set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 15);
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 112);
	set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 111);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 2);
	set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(49, 1, HG_DAMAGE, 35);
	set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_window_value(49, 3, AG_WINDOW_HSPEED, 40);
	set_hitbox_value(49, 2, HG_HITBOX_X, 225);
	set_hitbox_value(49, 2, HG_WIDTH, 450);
	set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("suair"));
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
	set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
	set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start"));
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
	set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_sein_fstrong"));
	set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
	set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, -1);
	set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 3);
	set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 303);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 4);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, smallboxFX);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	if (window == 2 && attack == AT_USPECIAL && window_timer < 20) super_armor = true;
	if (window == 2 && attack == AT_USPECIAL && window_timer > 20) super_armor = false;
	//sounds on strongs
	if (attack == AT_FSTRONG){
		if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_ori_dsmash_skitter_alone"))
		}
	}

	if (attack == AT_DSTRONG){
		if (window == 2 && window_timer == 2){
		sound_play(asset_get("sfx_ori_dsmash_skitter_alone"))
		}
		if (window == 3 && window_timer == 3){
		sound_play(asset_get("sfx_ori_dsmash_skitter_alone"))
		}
	}

	if (attack == AT_USTRONG){
		if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_ori_dsmash_skitter_alone"))
		}
	}
}

//dspecial and super armor bs

if (attack == AT_DSPECIAL) {
    can_fast_fall = false;
	can_move = false;
    if (window == 3 && window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false && !free) {
        iasa_script();
        set_state(PS_IDLE);
    }
	if (window == 3 && window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false && free) {
        iasa_script();
        set_state(PS_IDLE_AIR);
    }
}

if (window == 1 && attack == AT_DSPECIAL) super_armor = false;
if (window == 2 && attack == AT_DSPECIAL) super_armor = true;
if (window == 3 && attack == AT_DSPECIAL) super_armor = false;
if (window == 4 && attack == AT_DSPECIAL && window_timer > 10) super_armor = false;
	


	
if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 60;
	move_cooldown[AT_FSPECIAL] = 20;
	move_cooldown[AT_USPECIAL] = 5;
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
	move_cooldown[AT_NSPECIAL] = 20;
	nitrus = 1;
}

if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 20;
	move_cooldown[AT_FSTRONG] = 10;
	move_cooldown[AT_DSTRONG] = 10;
	move_cooldown[AT_USTRONG] = 10;
	move_cooldown[AT_FSPECIAL] = 10;
	move_cooldown[AT_NSPECIAL] = 20;

}

if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	can_wall_jump = false;
	can_jump = false;
	move_cooldown[AT_FSPECIAL] = 40;
	move_cooldown[AT_USPECIAL] = 5;
	move_cooldown[AT_FSTRONG] = 20;
	move_cooldown[AT_DSTRONG] = 20;
	move_cooldown[AT_USTRONG] = 20;
	move_cooldown[AT_NSPECIAL] = 20;
}

if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
}

if (attack == AT_FSTRONG){
	move_cooldown[AT_FSTRONG] = 20;
	move_cooldown[AT_DSTRONG] = 20;
	move_cooldown[AT_USTRONG] = 20;
	move_cooldown[AT_FSPECIAL] = 20;
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_USPECIAL] = 10;
}

if (attack == AT_DSTRONG){
	move_cooldown[AT_FSTRONG] = 20;
	move_cooldown[AT_DSTRONG] = 20;
	move_cooldown[AT_USTRONG] = 20;
	move_cooldown[AT_FSPECIAL] = 20;
	move_cooldown[AT_USPECIAL] = 10;
	move_cooldown[AT_NSPECIAL] = 20;
}

if (attack == AT_USTRONG){
	move_cooldown[AT_FSTRONG] = 20;
	move_cooldown[AT_DSTRONG] = 20;
	move_cooldown[AT_USTRONG] = 20;
	move_cooldown[AT_FSPECIAL] = 30;
	move_cooldown[AT_USPECIAL] = 10;
	move_cooldown[AT_NSPECIAL] = 30;
}
if (attack == AT_USPECIAL){
    if (window == 2){
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= 0;
            vsp *= 0;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
		if swift_mode = false{
			var max_speed = 4.5;
		}
		if swift_mode = true{
			var max_speed = 6;
		}
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
		if (window == 2 && window_timer > 45 && shield_pressed || window_timer > 45 && attack_pressed || window_timer > 45 && special_pressed){
            window = 3;
			window_timer = 2;
			sound_play(sound_get("shadowrefresh"))
        }
    }
}

if (attack == AT_USPECIAL){
	if window == 3 && window_timer == 3 && !hitpause {
        destroy_hitboxes();
	}
}


if (attack == AT_TAUNT_2) {
	if window == 1 {
        if window_timer == 1 && down_down && training{
			user_event(0);
			move_cooldown[AT_TAUNT] = 666;
		}
	}
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 30;
	move_cooldown[AT_FSPECIAL] = 45;
	move_cooldown[AT_FSTRONG] = 30;
	move_cooldown[AT_DSTRONG] = 30;
	move_cooldown[AT_USTRONG] = 30;
 	move_cooldown[AT_USPECIAL] = 30;
}


if (attack == 49){
	can_move = false;
	can_fast_fall = false;
}


if (radio == 1){
	if (attack == AT_FSPECIAL){
		if (window == 1 && window_timer == 1){
			if (swift_mode = false){
				sound_play(sound_get("FIRE"))
			}
			else if (swift_mode = true){
				sound_play(sound_get("goodbye"))
			}
		}
	}
	
	if (attack == AT_USPECIAL){
		if (window == 1 && window_timer == 2){
			if (swift_mode = false){
				sound_play(sound_get("atk12"))
			}
			else if (swift_mode = true){
				sound_play(sound_get("atk9"))
			}
		}
	}
	if (attack == AT_DSPECIAL){
		if (window == 1 && window_timer == 2){
			sound_play(sound_get("atk13"))
		}
		if (window == 4 && window_timer == 3 ){
			sound_play(sound_get("atk7"))
		}
		if (window == 4 && window_timer == 5 ){
			sound_play(sound_get("xionatk1"))
		}
		if (window == 5 && window_timer == 6 ){
			sound_play(sound_get("GETEM"))
		}
	}
	if (attack == AT_FSTRONG){
		if (window == 2 && window_timer == 1){
			if (swift_mode = false){
				sound_play(sound_get("atk8"))
			}
			else if (swift_mode = true){
				sound_play(sound_get("takethis"))
			}
		}
	}
	if (attack == AT_DSTRONG){
		if (window == 2 && window_timer == 1){
			if (swift_mode = false){
				sound_play(sound_get("atk6"))
			}
			else if (swift_mode = true){
				sound_play(sound_get("ITSOVER"))
			}
		}
	}
	if (attack == AT_USTRONG){
		if (window == 2 && window_timer == 1){
			if (swift_mode = false){
				sound_play(sound_get("atk20"))
			}
			else if (swift_mode = true){
				sound_play(sound_get("URDONE"))
			}
		}
	}
	if (attack == AT_TAUNT){
		if (window == 1 && window_timer == 3 ){
			sound_play(sound_get("atk2"))
		}
		if (window == 2 && window_timer == 12 ){
			sound_play(sound_get("imhere"))
		}
		if (window == 3 && window_timer == 6 ){
			sound_play(sound_get("thx"))
		}
	}
	if (attack == AT_TAUNT_2){
		if (window == 1 && window_timer == 1 ){
			sound_play(sound_get("comeon"))
		}
	}
}
