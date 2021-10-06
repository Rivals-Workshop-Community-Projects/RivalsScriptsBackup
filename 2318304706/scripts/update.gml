muno_event_type = 1;
user_event(14);

blinkTimer += 0.5;

if (fsmashOut < 0) {fsmashOut++;}
if (dairOut < 0) {dairOut++;}
if (whirlOut < 0) {whirlOut++;}
if (flashOut < 0) {flashOut++;}
if (blastOut < 0) {blastOut++;}

if (has_rune("G")) {
	if (fsmashOut < 0) {fsmashOut=0;}
	if (dairOut < 0) {dairOut=0;}
	if (whirlOut < 0) {whirlOut=0;}
	if (flashOut < 0) {flashOut=0;}
	if (blastOut < 0) {blastOut=0;}
}

//print_debug(string(fps_real));

if (introTimer < 6) {
	if (introTimer2 < 3) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
} else {
	if (introTimer2 < 4) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
}
//this increments introTimer every few frames, depending on the number entered

if (state == PS_SPAWN && taunt_pressed && usingAltGBeamControl == 0) {
	usingAltGBeamControl = 1;
	sound_play(sound_get("smrpg_yoshi"));	
}

if (introTimer < 12) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if (state == PS_SPAWN && introTimer == 0 && introTimer2 == 1 && drm == false) {
	soul = spawn_hit_fx(x, y-300, introSoul);		
} else if (instance_exists(soul) && state == PS_SPAWN) {
	soul.y += 24;
}
if (state == PS_SPAWN && introTimer == 4 && introTimer2 == 0 && drm == false) {
	spawn_hit_fx(x, y-40, introSoulFX);	
	sound_play(sound_get("smrpg_battlestart"));
}

if (whirlOut == 1) {
	with (whirl) {
		if (state == 1 && player_id.special_pressed && instance_exists(hb) && gotParried == 0) {
			instance_destroy(hb);
			//print_debug("detonating for real!");
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (player_id.x, player_id.y-30, player_id.empoweredFX);
			stars.depth = -12;
			state = 3;
			state_timer = 0;
			detonating = false;
		}
	}
}

if (!free) {
	numFlashes = 2;
}

if (state == PS_WALL_JUMP) {
	numFlashes = 2;
}

with (pHitBox) {
    if (player_id == other.id) {
		hboxShape = -2;
		with (other) {
			if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) != 0) {
				other.hboxShape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
			}
		}
		
		switch(hboxShape) {
			case 0: 
				sprite_index = other.shape_circle;
				break;
			case 1: 
				sprite_index = other.shape_rect;
				break;
			case 2:
				sprite_index = other.shape_roundrect;
				break;
			default:
				break;
		}
    }
}

////////////////////////////////////////
//STEAM DESCRIPTION LOL//
////////////////////////////////////////
//  idk if these still get reset  //
// but better safe than sorry  //
////////////////////////////////////////
/*
Geno from Super Mario RPG joins the battle! Armed with E-rated munitions and powerful magic, Geno is a formidable trapper.

NSPECIAL is Geno Beam. Hold the special button to charge, and release to fire. The charge can be stored with shield. Be careful not to overcharge!
FSPECIAL is Geno Whirl. This move hurls a disc of pure starlight forward, and can be angled up or down. This move is very weak, but by pressing B again, the disc detonates with a very strong sweetspot.
USPECIAL is Geno Flash. This move causes Geno to transform his body into a cannon and launch a multihitting fireball. This move can be angled. In the air, the fireball is shot down, and the recoil acts as a recovery.
DSPECIAL is Geno Blast. This move acts as Geno's stage control. Geno fires off a bolt of white magic into the air, which will detonate into several beams of colored light after a short duration. Press DSPECIAL again to detonate it early, which will cause it to only fire one beam.

Geno's mechanic is Timed Hits. Press the button again with good timing, and additional effects happen. The moves that can be Timed are Geno's specials, strongs, JAB2, DATTACK and DAIR. In training mode, turn hitboxes on and go frame-by-frame to see exactly when timed hits are accepted, as a special indicator will show up.
Timed Hit Effects:
- Jab 2 (Finger Shot): Press A right as the last projectile is about to be shot for more damage and knockback.
- Dash Attack (Geno Boost): Press A right as Geno is about to move forward for more range.
- DAir (Rocket Punch): Press A right as the projectile reaches its max distance to cause it to explode for more damage, knockback and range.
- UStrong (Hand Cannon): Press A or Smash right as the projectile is about to fire to instead fire three projectiles like a shotgun.
- FStrong (Double Punch): Press A or Smash right as the projectile reaches its max distance to cause it to explode for more damage, knockback and range.
- DStrong (Star Gun): Press A or Smash right as the last burst is about to come out for more damage, knockback and range.
- NSpecial (Geno Beam): Store or release the charge when 3 stars show. Do not overcharge!
- FSpecial (Geno Whirl): Press B right before the projectile comes in contact with an enemy for extreme damage.
- USpecial [Air] (Geno Flash): Press B right before the cannon fires for more recoil (further recovery)
- DSpecial (Geno Blast): Press Down B at any actionable time to detonate the blast early, which will make it only fire one beam. Doing this right when the blast is about to detonate naturally will make it shoot seven (normally four)

Credit to Kibo for the victory theme (https://www.youtube.com/c/KiboOfficial/featured), plus Sounds' Resource for the SMRPG SFX
*/

//////////////////////
//RUNE STUFF//
//////////////////////

if (has_rune("A")) {
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
} else {
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 45);
}

if (has_rune("B")) {
	set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
} else {
	set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
	set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
}

if (has_rune("C")) {
	set_window_value(AT_USPECIAL_2, 13, AG_WINDOW_TYPE, 1);
} else {
	set_window_value(AT_USPECIAL_2, 13, AG_WINDOW_TYPE, 7);
}
if (state == PS_RESPAWN || state == PS_HITSTUN || state == PS_WALL_JUMP || !free) {
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_USPECIAL_2] = 0;
}

if (drm == 1) {
	set_state(PS_PARRY);
	state_timer = 1;
	window_timer = 1;
	window = 1;
	knockback_adj = 2;
	gravity_speed = .2;
	air_friction = .01;
	air_accel = 0;
	max_djumps = 0;
	has_walljump = false;
	has_airdodge= false;	
	char_height = 22;
} else if (drm == 2) {
	set_state(PS_DEAD);
}

if (drm == 0 && url != 2318304706) {
	drm = 1;
}