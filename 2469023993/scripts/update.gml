if used_fspecial{
	move_cooldown[AT_FSPECIAL] = 15;
}

if !free or state == PS_WALL_JUMP or state == PS_WALL_TECH {
	used_fspecial = false;
}


if swift_mode = true{
	move_cooldown[AT_DSPECIAL] = 30;
	move_cooldown[AT_TAUNT] = 10;
	move_cooldown[AT_TAUNT_2] = 10;
	swift_timer++;
	walk_speed = 4;
	wave_land_adj = 1.5;
	dash_speed = 9;
	dash_anim_speed = .35;
	initial_dash_speed = 9.25;
	air_dodge_speed = 8.5;
	air_max_speed = 7;
	air_accel = 0.45;
	jump_speed = 9.75;
	djump_speed = 9.75;
}

if swift_timer > 666{
	swift_mode = false;
}

if swift_mode = false{
	walk_speed = 3.5;
	wave_land_adj = 1.35;
	dash_speed = 7.75;
	dash_anim_speed = .3;
	initial_dash_speed = 8.25;
	air_dodge_speed = 7.5;
	air_max_speed = 6;
	air_accel = 0.35;
	jump_speed = 10.5;
	djump_speed = 10.5;
}

if swift_timer = 666{
	sound_play(sound_get("swiftoff"));
	sound_stop(sound_get("swifton"));
}

if swift_mode = true{
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_NSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 8);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 15);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 7);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 5);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 11);
	set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 11);
	set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
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
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
}

if swift_mode = false{
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6.25);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6.25);
	set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5.5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5.5);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 5);
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
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 9);
	set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 4);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
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
	set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_sein_fstrong_hit_final"));
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
	set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
}

with(asset_get("oPlayer")) {
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
}
if state == PS_AIR_DODGE or state == PS_PARRY_START or state == PS_PARRY or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_GROUND or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD or state == PS_WALL_TECH{
	can_swift = false;
	} else{
	can_swift = true;
}

if swallowed {
    swallowed = 0
    var ability_spr = sprite_get("kirbothrow");
	var ability_hurt = sprite_get("kirbothrow_hurt");
	var box_proj = sprite_get("nspecial_proj");
	var ability_sfx = sound_get("shadowfling");
	var ability_sfx2 = sound_get("shadowrefresh");
	var myicon = sprite_get("kirbyicon");
	
	with enemykirby {
		newicon = myicon;
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 21);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_end"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sfx);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sfx2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 14);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 11);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FINAL_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.65);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 127);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, box_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, box_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .64);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
	}
}
