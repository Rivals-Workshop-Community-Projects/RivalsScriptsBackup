var bobbleRNG = random_func( 0, 8, true );
if (bobbleRNG == 0) {
	otto_bobblehead_sprite = sprite_get("yoyo_bobblehead_funny");
} else {
	otto_bobblehead_sprite = sprite_get("yoyo_bobblehead");
}

var shouldQuit = 0;
if ("target" in self) {
	with (target) {
		if (state == PS_DEAD || state == PS_RESPAWN) {
			x = room_width/2
		}
		if (state_cat != SC_HITSTUN || state == PS_DEAD || state == PS_RESPAWN) {
			shouldQuit = 1;
		}
	}
	if (shouldQuit == 1) {
		target = noone;
	}
}

if (get_player_color( player ) == 2) {
	if (state == PS_SPAWN) {
		if (introTimer2 < 4) {
			introTimer2++;
		} else {
			introTimer2 = 0;
			introTimer++;
		}

		if (introTimer < 14) {
			draw_indicator = false;
		} else {
			draw_indicator = true;
		}
	} else {
		if (introTimer2 < 6) {
			introTimer2++;
		} else {
			introTimer2 = 0;
			introTimer++;
		}

		if (introTimer >= 26) {
			introTimer = 0;
		}
	}
} else if (get_player_color( player ) == 1) {
	if (state == PS_SPAWN) {
		if (introTimer2 < 4) {
			introTimer2++;
		} else {
			introTimer2 = 0;
			introTimer++;
			if (introTimer == 1) {
				colorManual = 1;
			}
			if (up_down) {
				if (attack_down) {
					colorManual = 2;
				} else if (special_down) {
					colorManual = 3;
				} else if (shield_down) {
					colorManual = 4;
				}
			} else if (left_down) {
				if (attack_down) {
					colorManual = 5;
				} else if (special_down) {
					colorManual = 6;
				} else if (shield_down) {
					colorManual = 7;
				}
			} else if (right_down) {
				if (attack_down) {
					colorManual = 8;
				} else if (special_down) {
					colorManual = 9;
				} else if (shield_down) {
					colorManual = 10;
				}
			} else if (down_down) {
				if (attack_down) {
					colorManual = 11;
				} else if (special_down) {
					colorManual = 12;
				} else if (shield_down) {
					colorManual = 13;
				}
			} else if (colorManual == 1 && up_down + down_down == 0 && left_down + right_down == 0) {
				if (attack_down) {
					colorManual = 14;
				} else if (special_down) {
					colorManual = 15;
				} else if (shield_down) {
					colorManual = 16;
				}
			}
			clear_button_buffer( PC_UP_STICK_PRESSED );
			clear_button_buffer( PC_DOWN_STICK_PRESSED );
			clear_button_buffer( PC_LEFT_STICK_PRESSED );
			clear_button_buffer( PC_RIGHT_STICK_PRESSED );
		}

		if (introTimer < 14) {
			draw_indicator = false;
		} else {
			draw_indicator = true;
		}
	}
} else {
	if (introTimer2 < 3) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}

	if (introTimer < 20) {
		draw_indicator = false;
	} else {
		draw_indicator = true;
	}
}

if (get_player_color( player ) == 1) {
	if (colorManual == 1) {
		set_color_profile_slot(1, 0, 81, 137, 215);
		set_color_profile_slot(1, 1, 203, 219, 252);
	} else if (colorManual == 2) {
		set_color_profile_slot(1, 0, 172, 50, 50);
		set_color_profile_slot(1, 1, 242, 170, 176);
	} else if (colorManual == 3) {
		set_color_profile_slot(1, 0, 79, 99, 93);
		set_color_profile_slot(1, 1, 130, 238, 42);
	} else if (colorManual == 4) {
		set_color_profile_slot(1, 0, 138, 75, 193);
		set_color_profile_slot(1, 1, 255, 255, 255);
	} else if (colorManual == 5) {
		set_color_profile_slot(1, 0, 236, 123, 3);
		set_color_profile_slot(1, 1, 228, 25, 59);
	} else if (colorManual == 6) {
		set_color_profile_slot(1, 0, 35, 35, 35);
		set_color_profile_slot(1, 1, 118, 66, 138);
	} else if (colorManual == 7) {
		set_color_profile_slot(1, 0, 118, 66, 138);
		set_color_profile_slot(1, 1, 91, 110, 255);
	} else if (colorManual == 8) {
		set_color_profile_slot(1, 0, 95, 205, 228);
		set_color_profile_slot(1, 1, 172, 50, 50);
	} else if (colorManual == 9) {
		set_color_profile_slot(1, 0, 60, 55, 105);
		set_color_profile_slot(1, 1, 153, 229, 80);
	} else if (colorManual == 10) {
		set_color_profile_slot(1, 0, 251, 242, 54);
		set_color_profile_slot(1, 1, 172, 50, 50);
	} else if (colorManual == 11) {
		set_color_profile_slot(1, 0, 106, 114, 162);
		set_color_profile_slot(1, 1, 193, 154, 62);
	} else if (colorManual == 12) {
		set_color_profile_slot(1, 0, 254, 100, 171);
		set_color_profile_slot(1, 1, 150, 100, 255);
	} else if (colorManual == 13) {
		set_color_profile_slot(1, 0, 253, 184, 0);
		set_color_profile_slot(1, 1, 156, 59, 188);
	} else if (colorManual == 14) {
		set_color_profile_slot(1, 0, 70, 70, 70);
		set_color_profile_slot(1, 1, 180, 180, 180);
	} else if (colorManual == 15) {
		set_color_profile_slot(1, 0, 23, 20, 75);
		set_color_profile_slot(1, 1, 0, 200, 250);
	} else if (colorManual == 16) {
		set_color_profile_slot(1, 0, 200, 70, 75);
		set_color_profile_slot(1, 1, 132, 126, 135);
	}
}

if (state == PS_IDLE && attack == AT_NSPECIAL) {
	attack = AT_JAB;
}

if (comboBuffer > 0) {
    comboBuffer -= 1;
} else if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    currentCombo = baseCombo;
}

if (baseCombo > 0 && comboBuffer == 0) {
	comboBuffer = 1;
}

if (currentCombo < 4) {
	set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 5);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7.5);
	set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.95);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.7);
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_may_whip2"));
	
	set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 69);
	
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
	
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.95);
	set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 69);
	
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7.5);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.85);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
	
	set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 69);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 9 + (2 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7.5 + (0.5 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5 + (0.1 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 18 + (2 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 11 + (2 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8.5 + (0.5 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6 + (0.1 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 18 + (2 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 11);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .65);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .2);
	set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
} else {
	set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 22);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.8);
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 12);
	set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, cool_effect);			
	}
	
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .8);
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
	
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 15);
	set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 17);
	set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .9);
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, cool_effect);			
	}

	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 18);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
		
	set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 5);
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, cool_effect);			
	}
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10 + (3 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7.5 + neutralBCharge);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8 + (0.1 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 25 + (4 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_may_whip1"));
		
	set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 12 + (3 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8.5 + neutralBCharge);
	set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8 + (0.1 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 25 + (4 * neutralBCharge));
	set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_may_whip1"));
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_may_whip2"));

	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .45);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 8);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, cool_effect);			
	}
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 8);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 8);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, 3);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5.5);
	set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
	
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .55);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 127);
	if (get_player_color( player ) == 4) {
		set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 148);			
	} else if (get_player_color( player ) == 3) {
		set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 115);			
	} else if (get_player_color( player ) == 2) {
		set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, cool_effect);
	}
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
}

if (state == PS_RESPAWN) {
	spr_dir = 1;
	neutralBStored = 0;
	comboCount = 0;
	comboBuffer = 0;
	baseCombo = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if (attack == AT_USPECIAL && !free && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window > 3) {
	set_state (PS_PRATLAND);
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || !free) {
	move_cooldown[AT_USPECIAL] = 0;
	pratfallMode = 0;
	framesUntilPratfall = 0;
}

if (neutralBStored) {
	neutralBStoreVisTimer += 0.5;
	if (neutralBStoreVisTimer > 19) {
		neutralBStoreVisTimer = 0;
	}
}

if (move_cooldown[AT_USPECIAL] == 0) {
	if (free) {
		uSpecialLag = 0;
	}
}
if (!free) {
	pratfallMode = 0;
	framesUntilPratfall = 0;
}
if ((state == PS_LAND || state == PS_LANDING_LAG) && state_timer > 0 && uSpecialLag > 0) {
	state_timer -= 1;
	uSpecialLag -= 1;
}
if (state == PS_WAVELAND && state_timer > 0 && uSpecialLag > 0) {
	state_timer -= 1;
	uSpecialLag -= 2;
}

if (pratfallMode == 1) {
	framesUntilPratfall -= 1;
	if (neutralBStored == false) {
		move_cooldown[AT_NSPECIAL] = 5;
	}
	if (framesUntilPratfall < 0 && framesUntilPratfall > -1000 && (state_cat == SC_AIR_NEUTRAL)) {
		set_state(PS_PRATFALL);
		framesUntilPratfall = -69420;
	}
}

if (pratfallMode == 1) {
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 16);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 19);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 18);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 14);
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 18);
} else {
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
}

if (currentCombo == 1) {
	if (comboCounterPlaceholder > 5) {
		comboCounterPlaceholder = 5;
	}
} else if (currentCombo > 3) {
	if (get_player_color(player) == 2) {
		if (comboCounterPlaceholder > 24) {
			comboCounterPlaceholder -= 24;
		}
	} else {
		if (comboCounterPlaceholder > 9) {
			comboCounterPlaceholder -= 9;
		}
	}
} else {
	if (comboCounterPlaceholder > 7) {
		comboCounterPlaceholder = 7;
	}
}

if (get_player_color(player) == 2 && currentCombo > 3) {
	comboCounterPlaceholder += 0.3;
} else {
	comboCounterPlaceholder += 0.5;
}

hue+=4;
if (hue>255) {
	hue-=255; 
}
color_rgb=make_color_rgb( 255, 0, 255 ); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot( 15 , 1 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();

if (get_player_color( player ) == 4 || get_player_color( player ) == 3 || get_player_color( player ) == 2) {
	if (outlineDirection == 0) {
		outlineR += 8.5;
		outlineG += 3.2;
		outlineB += 3.2;
	} else {
		outlineR -= 8.5;
		outlineG -= 3.2;
		outlineB -= 3.2;
	}
	if (outlineR > 250) {
		outlineDirection = 1;
	} else if (outlineR < 5) {
		outlineDirection = 0;
	}
} else {
	if (outlineDirection == 0) {
		outlineR += 3.2;
		outlineG += 5.2;
		outlineB += 8.5;
	} else {
		outlineR -= 3.2;
		outlineG -= 5.2;
		outlineB -= 8.5;
	}
	if (outlineB > 250) {
		outlineDirection = 1;
	} else if (outlineB < 5) {
		outlineDirection = 0;
	}
}

if (neutralBStored == 1) {
	outline_color = [ outlineR, outlineG, outlineB ];
} else {
	outline_color = [ 0, 0, 0 ];
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10;
    trummelcodecsprite1 = sprite_get("yoyotattle");
    trummelcodecsprite2 = sprite_get("yoyotattle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Whoa, that's Yoyo!";
    trummelcodecline[page,2] = "One of the Rock Hard";
    trummelcodecline[page,3] = "Gladiators from Hyun's ";
    trummelcodecline[page,4] = "Dojo!!";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "lol why does he have";
    trummelcodecline[page,2] = "a toy";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "That may look like a";
    trummelcodecline[page,2] = "toy, but it's secretly ";
    trummelcodecline[page,3] = "got a lot of punch ";
    trummelcodecline[page,4] = "behind it!";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Yoyo's yoyo builds up ";
    trummelcodecline[page,2] = "kinetic energy as it's ";
    trummelcodecline[page,3] = "swung, and can explode ";
    trummelcodecline[page,4] = "with enough power.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "his name is yoyo. ";
    trummelcodecline[page,2] = "and he uses a yoyo";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Not very original, huh? ";
    trummelcodecline[page,2] = "Is it a nickname? Or did ";
    trummelcodecline[page,3] = "his parents predict the";
    trummelcodecline[page,4] = "future?";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Anyway, if Yoyo builds up ";
    trummelcodecline[page,2] = "a combo of 5 or more  ";
    trummelcodecline[page,3] = "hits, his next strong  ";
    trummelcodecline[page,4] = "move gets boosted.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Can't let our guard down ";
    trummelcodecline[page,2] = "against this one, he can ";
    trummelcodecline[page,3] = "make comebacks happen ";
    trummelcodecline[page,4] = "like no other.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Are we gonna keep talking ";
    trummelcodecline[page,2] = "or get to fighting? :P";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Oh, guess I was rambling,";
    trummelcodecline[page,2] = "wasn't I? ";
    trummelcodecline[page,3] = "Alright, let's go!";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "You're on! >:O";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}

if (swallowed) {
	swallowed = 0;
	var abilityspr = sprite_get("kirbyability");
	var abilityhurtspr = sprite_get("kirbyability_hurt");
	with enemykirby {
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, abilityspr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, abilityspr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, abilityhurtspr);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 10);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 46);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 23);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 15);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 1);
		
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 419);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 1);

		set_num_hitboxes(AT_EXTRA_3, 5);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 55);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1999);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_GROUNDEDNESS, 1);

		set_hitbox_value(AT_EXTRA_3, 5, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 10);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 55);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 75);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 85);
		set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 0);
		set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITSTUN_MULTIPLIER, 1999);
		set_hitbox_value(AT_EXTRA_3, 5, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_EXTRA_3, 5, HG_GROUNDEDNESS, 2);

		set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, 30);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 55);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 75);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 60);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITSTUN_MULTIPLIER, 1999);
		set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 3, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_EXTRA_3, 4, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 50);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, 40);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 55);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 75);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 4);
		set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 0);
		set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 13);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITSTUN_MULTIPLIER, 1999);
		set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 4, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 30);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 55);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 80);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 2);
	}
}


if ("enemykirby" in self && enemykirby != undefined) { //if kirby is in a match & swallowed
	with oPlayer { //Run through all players
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_EXTRA_3 && get_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES) == 419)) {		
			if (window == 1) {
				downBStart = get_player_damage(player);
				super_armor = false;
			}
			if (window == 2) {
				super_armor = true;
				if (hitpause) {	
					var shortest_dist = 9999;
					var shortest_id = noone;
			
					with (asset_get("oPlayer")) {
						if (player != other.player) {
							var curr_dist = point_distance(x,y,other.x,other.y);
							if (curr_dist < shortest_dist) {
								shortest_dist = curr_dist;
								shortest_id = id;
							}
						}
					}

					if (shortest_id.x < x) {
						spr_dir = -1;
					} else {
						spr_dir = 1;
					}
		
					set_player_damage( player, downBStart )
					window = 4;
					window_timer = 0;
				}
			}
			if (window == 3) {
				super_armor = false;
				if (window_timer == 20) {
					set_state( PS_IDLE );
				}
			}
			if (window == 4 && window_timer == 42) {
				x = x + (120 * spr_dir);
				set_state( PS_IDLE );
			}
			can_fast_fall = false;
		}
		if (get_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES) == 419 && current_ability == 16) {
			if (has_hit == true) {
				if (comboBuffer > 0) {
					currentCombo += 1;
				}
				
				if (attack == AT_DAIR && currentCombo > 0) {
					if (window_timer > 2 && window_timer < 9) {
						currentCombo -= 1;
					}
				}
				if (attack == AT_FAIR && currentCombo > 0) {
					if (window_timer > 9 && window_timer < 17) {
						currentCombo -= 1;
					}
				}
				if (attack == AT_NAIR && currentCombo > 0) {
					if (window_timer > 5 && window_timer < 11) {
						currentCombo -= 1;
					}
				}
				if (attack == AT_USPECIAL && currentCombo > 0) {
					if (window_timer > 3 && window_timer < 11) {
						currentCombo -= 1;
					}
				}
				
				if (currentCombo < 5) {
					comboBuffer = 75 + (5 * currentCombo);
				} else {
					comboBuffer = 105;
				}
				has_hit = false;
			}
			if (comboBuffer < 0) {
				currentCombo = 0;
			}
			comboBuffer -= 1;
			
			if (currentCombo < 4) {
				set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
				set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
				set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
				set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
				set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
				set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.05);
				set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
				set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
				set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
				set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
				set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
				set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
				set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ice_nspecial_hit_ground"));

				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
				set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
				set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
				set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
				set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .3);
				set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 3);
				set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.06);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

				set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.06);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 0);
				set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
			} else {
				set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 13);
				set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .95);
				set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
				set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
				set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 13);
				set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7.5);
				set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
				set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15);
				set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
				set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 15);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 11);
				set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
				set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
				set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ice_nspecial_hit_ground"));

				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 16);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.5);
				set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
				set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 8);
				set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.65);
				set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .3);
				set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

				set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 12);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.15);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
				set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
				set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 130);
				set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			}
			
			if (currentCombo == 1) {
				if (comboCounterPlaceholder > 5) {
					comboCounterPlaceholder = 5;
				}
			} else if (currentCombo > 3) {
				if (comboCounterPlaceholder > 9) {
					comboCounterPlaceholder -= 9;
				}
			} else {
				if (comboCounterPlaceholder > 7) {
					comboCounterPlaceholder = 7;
				}
			}
			comboCounterPlaceholder += 0.5;
		}
	}
}
