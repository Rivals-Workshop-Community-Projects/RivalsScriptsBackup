// Update - Honestly I hate working on this character
// I suck at programming and Siren's mechanics are way too ambitious for my pea sized brain
// However because people like her I'm going to continue to support her
// But god damn my code sucks and I get pokes about bugs every day that are very clearly bad / Siren breaking bugs
// This sucks... I hope my future characters are more well liked and not stupidly complex

// No Parry Stun on Jab
	if(attack == AT_JAB && was_parried){
		was_parried = false;
	}
// No Parry Stun on Jab End

// Stops Meter from going below locking point 
	if (meterLock == 1 && ncharge < 30) {
		ncharge = 30;
	}

	if (meterLock == 2 && ncharge < 60){
		ncharge = 60;
	}

	if (meterLock == 3 && ncharge < 90){
		ncharge = 90;
	}

	if (meterLock == 4 && ncharge < 120){
		ncharge = 120;
	}
// Lock Point End

// Minion Delay Spawn Timer (adds cooldown to when a minion can be spawned)
	if (mchargeTimer != 0){ // Starts at 600 frames
		mchargeTimer = mchargeTimer - 1;
	}

	// Once chargetimer reaches 1 Nspecial can be canceled again
	if (mchargeTimer == 1){
		mcharge = 0;
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 2);
	}
// Minion Timer End

// Gets the initial Percent Siren has before she gets hit
	Init_Percent = get_player_damage(player); // Used to Calculate Meter Damage
// Init End

// Training Mode Meter Gain
	if (attack == AT_TAUNT && get_training_cpu_action() != CPU_FIGHT && window_timer == 1 && state_timer == 1){
		
		if (meterLock == 3 && ncharge > 90){
			meterLock = 4;
			ncharge = 120;
			morePower = 4;
		}
		
		if (meterLock <= 3 && ncharge <= 90){
			meterLock = meterLock + 1;
			ncharge = ncharge + 30;
			morePower = morePower + 1;
		}	
		
	}
// TM Meter Gain End

// Adjusts Air Speed during Uspecial
	if (state == PS_PRATFALL && attack == AT_USPECIAL || attack == AT_USPECIAL && state == PS_ATTACK_AIR){
		air_max_speed = 4;
	}
	else{
		air_max_speed = 7;
	}
// Uspecial Air Speed End

// Laser Beam / Nspecial
	if (nTrigger == 1 && ncharge >= 120 && attack == AT_NSPECIAL){ // Heals Siren's Health when Laserbeam is activated
		set_player_damage(player,  get_player_damage(player) - floor(superCharge));
		if (get_player_damage(player) < 0){
			set_player_damage(player, 0);
		}
	}

	if(nTrigger == 1 && ncharge > 0){ // Activates when laserbeam is activated
		ncharge = ncharge - 2;	// Slowly depletes meter
		stunTrigger = 0;
		fTrigger = 0;
	}

	// Laser Beam Parry
	if (attack == AT_NSPECIAL && was_parried && ncharge >= 120){
		stunTrigger = 0;
		fTrigger = 0;
		ncharge = 0;
		nTrigger = 0;
	}

	// Increases damage of Laserbeam over time + Takes Damage
	if (ncharge >= 120){
		if (get_player_damage(player) < 999){
			take_damage(player, -1, 1);
			BEAM = BEAM + .25;
			superCharge = superCharge + .5;
		}
		set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, BEAM);
		set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_DSPECIAL, 21, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, floor(BEAM/2));
	}
// Laser Beam / Nspecial End

// Glitch effect for when low on meter
	if (ncharge <= 1 || ncharge >= 30 && ncharge <= 32 || ncharge >= 60 && ncharge <= 63 || ncharge >= 90 && ncharge <= 95){
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialX"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialX"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialX"));
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecialX"));
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2X"));

		if (fTrigger == 0){
		set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairX"));
		}	

		if (fTrigger == 1){
		set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairtwoX"));
		}
	}
// Glitch End

// Meter Locking Mechanic
	if (state_timer == 1 || attack == AT_NSPECIAL || has_hit_player){
		//locking meter mechanic
		if (ncharge >= 30 && ncharge <= 59 && meterLock = 0 && Deplete == 0 && nTrigger == 0) {
			meterLock = 1;
			morePower = 1;
		}

		if (ncharge >= 60 && ncharge <= 89 && meterLock = 1) {
			meterLock = 2;
			morePower = 2;
		}

		if (ncharge >= 90 && ncharge <= 119 && meterLock = 2) {
			meterLock = 3;
			morePower = 3;
		}

		if (ncharge >= 120 && meterLock = 3) {
			meterLock = 4;
			morePower = 4;
		}
	}
// Meter Lock End

// Secondary Fspecial Effects Off
	if (can_attack || !free) {
		fTrigger = 0;
	}
// Fspecial Effects End

// Meter Depletion for when a charge move is used
	if (Deplete == 1 && ncharge > 0){
		meterLock = 0;
		morePower = 0;
		ncharge = ncharge - 1;
	}
// Meter Depletion End

// Meter Gain Modifiers 
	if (attack == AT_NSPECIAL || has_hit_player){
		
		if (ncharge <= 120 && nTrigger != 1){
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 2);
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9999);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);			
		}
		
		if (ncharge <= 29) {

			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);

			set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);

		}

		if (ncharge >= 30 && ncharge <= 59 && meterLock == 1) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);

		}

		if (ncharge >= 60 && ncharge <= 89 && meterLock == 2) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);

			set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);

		}

		if (ncharge >= 90 && ncharge <= 119) && meterLock == 3 {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);

			set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);

		}

		if (ncharge >= 120 && meterLock == 4) {

			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);

			set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 3);
			
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 60);
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 0);
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 1);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
		}
	}
// Meter Gain Modifier End

// Events that don't have to check every frame
if (state_timer == 1){


	// Nspecial Initial Animation
	if (attack != AT_NSPECIAL && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)){
		if (meterLock <= 1) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialstart"));
		}
			if (meterLock >= 2 && meterLock < 4) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialstartE"));
		}
	}	
	// Nspecial Animation End

	// Determines stats when meter goes to 0 or less
	if (ncharge <= 0){
		BEAM = 15;
		superCharge = 0
		ncharge = 0;
	}
	
	if (ncharge <= 0){
		nTrigger = 0;
		stunTrigger = 0;
		Deplete = 0;
		meterLock = 0;
		morePower = 0;
	}
	// 0 or Less Meter End
	
	// Visual Modifier Based on Meter
	//I wanna cry, 5/21/2020 at 9:36pm and I don't wanna finish this character lmao
	if (meterLock <= 1 && attack != AT_NSPECIAL) {
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"))
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialstart"));
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
		
		if (fTrigger == 0){
		set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialair"));
		}
	}
	if (meterLock >= 2 && meterLock < 4 && attack != AT_NSPECIAL) {
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrongE"));
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialE"));
		set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecialE"));
		set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecialE"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialE"));
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2E"));
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairE"));
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtiltE"));
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongE"));
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialE"));
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattackE"));
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dairE"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bairE"));
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utiltE"));
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongE"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialE"));
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecialE"));
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uairE"));
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nairE"));
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jabE"));
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftiltE"));
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntE"));

		if (fTrigger == 0){
		set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairE"));		
		}
	}
	if (meterLock >= 4 && attack != AT_NSPECIAL) {
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrongX"));
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialX"));
		set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecialX"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialX"));
		set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecialX"));
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2X"));
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairX"));
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtiltX"));
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongX"));
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialX"));
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattackX"));
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dairX"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bairX"));
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utiltX"));
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongX"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialX"));
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecialX"));
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uairX"));
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nairX"));
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jabX"));
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftiltX"));
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntX"));
	
		if (fTrigger == 0){
		set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairX"));
		}
	}
	// Meter Visual End
	
	// Aerial Forward Special Modifier
	if (fTrigger == 1 && stunTrigger < 3) {

		if (meterLock <= 1) {
			set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairtwo"));
		}
		if (meterLock >= 2 && meterLock < 4) {
			set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairtwoE"));

		}
		if (meterLock >= 4) {
			set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialairtwoX"));

		}
		
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, -5);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, -5);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 4);

		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -5);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, -2);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 1.25);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 6.25);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 5);
		
		set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, -1.5);
		set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_HSPEED, .5);
		set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_VSPEED, 3.5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_PROJECTILE_HSPEED, 1.5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_PROJECTILE_VSPEED, 3.5);
		set_hitbox_value(AT_EXTRA_2, 4, HG_PROJECTILE_HSPEED, 2.5);
		set_hitbox_value(AT_EXTRA_2, 4, HG_PROJECTILE_VSPEED, 3);
		
		set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_HSPEED, -1);
		set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_VSPEED, 3.5);
		set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_VSPEED, 2);
		
		set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_HSPEED, 1);
		set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_VSPEED, 1.5);
		set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_VSPEED, 2.5);
		
		set_hitbox_value(AT_EXTRA_2, 9, HG_PROJECTILE_HSPEED, .25);
		set_hitbox_value(AT_EXTRA_2, 9, HG_PROJECTILE_VSPEED, 1.75);
		
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 11);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 2);

		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 2);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
		
		set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
		
		set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
		
		set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

		set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

		set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
		
	}

	if (fTrigger == 0) {

		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);

		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 5);
		
		set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, 6);
		set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_VSPEED, 7);
		set_hitbox_value(AT_EXTRA_2, 3, HG_PROJECTILE_HSPEED, 5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_EXTRA_2, 4, HG_PROJECTILE_HSPEED, 1);
		set_hitbox_value(AT_EXTRA_2, 4, HG_PROJECTILE_VSPEED, 6);
		set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_HSPEED, 1);
		set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_HSPEED, 1);
		set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_VSPEED, 5);
		set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_EXTRA_2, 9, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_EXTRA_2, 9, HG_PROJECTILE_VSPEED, 2.66667);

		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 1);

		set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 4);
		
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
			
		set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
		
		set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
		
		set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

		set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);	

		set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);	
	}
	// AFS End

	// Super/Overcharge Change Modifiers
	if (stunTrigger == 2) {

		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EFFECT, 11);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
		
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("largeproj"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 11); 	
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 11);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 10);
		
	}

	if (stunTrigger == 3) {

		// Down Special - Air
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 520);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 540);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 1000);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 1000);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 5);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 20);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 20);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
		
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 120);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_VSINGLE"));
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_DIADOWN"));
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_HSINGLE"));
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 111);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 111);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 111);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_WINDOW, 2);
			
		// Down Special - Ground
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);

		set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 17, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 18, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 19, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 20, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 21, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 22, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 23, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 24, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 25, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 26, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 27, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 28, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 29, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 30, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 31, HG_WINDOW, 2);	
		set_hitbox_value(AT_DSPECIAL, 32, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 33, HG_WINDOW, 2);	
		set_hitbox_value(AT_DSPECIAL, 34, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 35, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 36, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 37, HG_WINDOW, 2);	
		set_hitbox_value(AT_DSPECIAL, 38, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 39, HG_WINDOW, 2);	
		set_hitbox_value(AT_DSPECIAL, 40, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 41, HG_WINDOW, 2);
		set_hitbox_value(AT_DSPECIAL, 42, HG_WINDOW, 2);
		
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -680);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 30);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -1316);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -1282);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -1310);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_UPSINGLE"));
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_DIAUP2"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_DIAUP"));
		
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 120);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 120);
		set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 120);
		set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 120);
		
		// Up Special

		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6.5);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7.3);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, floor(BEAM/2));
		set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);

		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);

		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_VSINGLE"));
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("NSPECIAL_VSINGLE"));
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 30);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 30);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 520);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 520);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 1000);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 1000);		
	}
	// Super/OverCharge End

	// 3 Hit Modifiers
	if (dcharge == 3 && stunTrigger <= 1 && fTrigger == 0) {

		//Air
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 5);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
		
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 200);
					
		set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_WINDOW, 4);
			
		// Ground
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);

		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
		
	}

	if (dcharge < 3 && stunTrigger <= 1 && fTrigger == 0) {

		//Air
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 5);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -13);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
		
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
		
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 200);
			

		set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_WINDOW, 4);
		set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_WINDOW, 4);
		
		//Ground
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
		
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -4);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 2);
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);

		set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 13, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 14, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 15, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 16, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 17, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 18, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 19, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 20, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 21, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 22, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 23, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 24, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 25, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 26, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 27, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 28, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 29, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 30, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 31, HG_WINDOW, 6);	
		set_hitbox_value(AT_DSPECIAL, 32, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 33, HG_WINDOW, 6);	
		set_hitbox_value(AT_DSPECIAL, 34, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 35, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 36, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 37, HG_WINDOW, 6);	
		set_hitbox_value(AT_DSPECIAL, 38, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 39, HG_WINDOW, 6);	
		set_hitbox_value(AT_DSPECIAL, 40, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 41, HG_WINDOW, 6);
		set_hitbox_value(AT_DSPECIAL, 42, HG_WINDOW, 6);

		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);

		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 200);
		set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 200);
	}

	if (ucharge == 3 && stunTrigger <= 1 && fTrigger == 0) {
	
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6.5);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7.3); 	
		
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("mediumproj"));
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 5);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 0);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 200);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 5);

	
	}

	if (ucharge == 0 && stunTrigger <= 1) {

		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
		
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4.8);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -5.9);

		set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 0);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 4);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 200);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
		
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 5);
	}
	// 3 Hit Modifiers End
}

// Parry with Secret Alternate
if (state == PS_PARRY && ColorLocked && state_timer < 6){
	set_character_color_slot( 0, 165, 155, 205 ); //Eyes/Magic
	set_character_color_slot( 1, 165, 155, 205 ); //Hair
	set_character_color_slot( 2, 165, 155, 205 ); //Clothes
	set_character_color_slot( 3, 165, 155, 205 ); //Skin
	set_character_color_slot( 4, 165, 155, 205 ); //Tiddy/Magic
	set_character_color_slot( 5, 165, 155, 205 ); //Broom
	set_character_color_slot( 6, 165, 155, 205 ); //Eye Whites
}
// Secret Parry End

// Minions
if (instance_exists(obj_article1)){
	if (Minion.init == 1){
		switch (Minion.attackTimer){
			case 1:
			Minion.CopyAttack = false;
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y)
			break;
			case 10:
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y)
			break;		
			case 20:
			Minion.CopyAttack = false;
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y)
			break;
			case 30:
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y)
				Minion.CopyAttack = true;
				Minion.CopyActivated = false;
				Minion.CopyTimer = 0;
			break;

			case 200:
				Minion.attackTimer = 0;
				Minion.AttackTrue = false;
			break;
		}
	}

	if (Minion.init = 2){
		switch (Minion.attackTimer){
			case 1:
				Minion.CopyAttack = false;
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y)
			break;
			case 20:
				create_hitbox(AT_NSPECIAL, 21,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 23,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 25,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 27,Minion.x, Minion.y)
			break;
			case 40:
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y)
			break;
			case 60:
				create_hitbox(AT_NSPECIAL, 22,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 24,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 26,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 28,Minion.x, Minion.y)
			break;
			case 80:
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y)
			break;
			case 100:
				create_hitbox(AT_NSPECIAL, 21,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 23,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 25,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 27,Minion.x, Minion.y)
				Minion.CopyAttack = true;
				Minion.CopyActivated = false;
				Minion.CopyTimer = 0;
			break;

			case 300:
				Minion.attackTimer = 0;
				Minion.AttackTrue = false;
			break;
		}
	}

	if (Minion.init == 3){
		switch (Minion.attackTimer){
			case 1:
				Minion.CopyAttack = false;
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
			break;
			case 20:
				create_hitbox(AT_NSPECIAL, 21,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 23,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 25,Minion.x, Minion.y)
			break;
			case 40:
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y)
			break;
			case 60:
				create_hitbox(AT_NSPECIAL, 22,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 24,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 26,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 28,Minion.x, Minion.y)
			break;
			case 80:
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y)
			break;
			case 100:
				create_hitbox(AT_NSPECIAL, 21,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 23,Minion.x, Minion.y)
				create_hitbox(AT_NSPECIAL, 25,Minion.x, Minion.y)
			break;
			case 150:
				create_hitbox(AT_NSPECIAL, 37,Minion.x, Minion.y)
			break;
			case 155:
				create_hitbox(AT_NSPECIAL, 37, Minion.x + 10, Minion.y)
			break;
			case 160:
				create_hitbox(AT_NSPECIAL, 37, Minion.x - 10, Minion.y)
			break;
			case 175:
				create_hitbox(AT_NSPECIAL, 37,Minion.x, Minion.y)
			break;
			case 180:
				create_hitbox(AT_NSPECIAL, 37, Minion.x + 10, Minion.y)
			break;
			case 185:
				create_hitbox(AT_NSPECIAL, 37, Minion.x - 10, Minion.y)
				Minion.CopyAttack = true;
				Minion.CopyActivated = false;
				Minion.CopyTimer = 0;
			break;

			case 600:
				Minion.attackTimer = 0;
				Minion.AttackTrue = false;
			break;
		}
	}

	if (Minion.init == 4){
		switch (Minion.attackTimer){
			case 1:
				Minion.CopyAttack = false;
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y);
			break;
			case 3:
				create_hitbox(AT_NSPECIAL, 13,Minion.x, Minion.y);
			break;
			case 6:
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y);
			break;
			case 9:
				create_hitbox(AT_NSPECIAL, 14,Minion.x, Minion.y);
			break;
			case 11:
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 21,Minion.x, Minion.y);
			break;
			case 13:
				create_hitbox(AT_NSPECIAL, 15,Minion.x, Minion.y);
			break;
			case 16:
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 22,Minion.x, Minion.y);
			break;
			case 19:
				create_hitbox(AT_NSPECIAL, 16,Minion.x, Minion.y);
			break;
			case 21:
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 23,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 5,Minion.x, Minion.y);
			break;
			case 23:
				create_hitbox(AT_NSPECIAL, 17,Minion.x, Minion.y);
			break;
			case 26:
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 24,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 6,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 29,Minion.x, Minion.y);
			break;
			case 29:
				create_hitbox(AT_NSPECIAL, 18,Minion.x, Minion.y);
			break;
			case 31:
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 25,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 7,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 30,Minion.x, Minion.y);
			break;
			case 33:
				create_hitbox(AT_NSPECIAL, 19,Minion.x, Minion.y);
			break;
			case 36:
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 26,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 8,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 31,Minion.x, Minion.y);
			break;
			case 39:
				create_hitbox(AT_NSPECIAL, 20,Minion.x, Minion.y);
			break;
			case 41:
				create_hitbox(AT_NSPECIAL, 27,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 9,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 32,Minion.x, Minion.y);
			break;
			case 46:
				create_hitbox(AT_NSPECIAL, 28,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 10,Minion.x, Minion.y);
				create_hitbox(AT_NSPECIAL, 33,Minion.x, Minion.y);
			break;
			case 49:
				create_hitbox(AT_NSPECIAL, 11,Minion.x, Minion.y);
			break;
			case 51:
				create_hitbox(AT_NSPECIAL, 34,Minion.x, Minion.y);
			break;
			case 53:
				create_hitbox(AT_NSPECIAL, 12,Minion.x, Minion.y);
			break;
			case 56:
				create_hitbox(AT_NSPECIAL, 35,Minion.x, Minion.y);
			break;
			case 61:
				create_hitbox(AT_NSPECIAL, 36,Minion.x, Minion.y);
				Minion.CopyAttack = true;
				Minion.CopyActivated = false;
				Minion.CopyTimer = 0;
			break;
			case 500:
				Minion.attackTimer = 0;
				Minion.AttackTrue = false;
			break;
		}
	}

	if (Minion.CopyActivated){
		Minion.CopyTimer = Minion.CopyTimer + 1;
	}

	if (Minion.CopyTimer >= 150){
		Minion.CopyActivated = false;
		if (Minion.init = 1 && Minion.attackTimer > 30){
			Minion.CopyAttack = true;
		}
		if (Minion.init = 2 && Minion.attackTimer > 100){
			Minion.CopyAttack = true;
		}
		if (Minion.init = 3 && Minion.attackTimer > 185){
			Minion.CopyAttack = true;
		}
		if (Minion.init = 4 && Minion.attackTimer > 61){
			Minion.CopyAttack = true;
		}
	//	Minion.CopyTimer = 0;
	}

	if (Minion.CopyAttack){
		if (attack == AT_USPECIAL){
			if (((window == 2 || window == 3) && window_timer == 1) || stunTrigger >= 2 && state_timer == 35){
					Minion.CopyActivated = true;
					Minion.CopyAttack = false;
					create_hitbox(AT_USPECIAL, 3,Minion.x, Minion.y);
				if (Minion.init >= 1){
					create_hitbox(AT_USPECIAL, 4,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 5,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 8,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 9,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 10,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 11,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 12,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 13,Minion.x, Minion.y);
				}
				if (Minion.init >= 2){
					create_hitbox(AT_USPECIAL, 14,Minion.x, Minion.y);
					create_hitbox(AT_USPECIAL, 15,Minion.x, Minion.y);
				}
				if (Minion.init >= 3){
					create_hitbox(AT_USPECIAL, 16,Minion.x, Minion.y);
				}
			}
		}	
		if (attack == AT_DSPECIAL_AIR){	
			if (window == 2 && window_timer = 1 && stunTrigger != 3){
					Minion.CopyActivated = true;
					Minion.CopyAttack = false;
				if (Minion.init >= 1){
					create_hitbox(AT_EXTRA_2, 1,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 2,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 3,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 4,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 5,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 6,Minion.x, Minion.y);
				}
				if (Minion.init >= 2){
					create_hitbox(AT_EXTRA_2, 7,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 8,Minion.x, Minion.y);		
				}
				if (Minion.init >= 3){
					create_hitbox(AT_EXTRA_2, 9, Minion.x - 10	, Minion.y - 10);		
				}
			}
		}
		if (attack == AT_DSPECIAL){		
			if (window == 2 && window_timer = 1 && stunTrigger != 3){
					Minion.CopyActivated = true;
					Minion.CopyAttack = false;
				if (Minion.init >= 1){
					create_hitbox(AT_EXTRA_2, 11,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 12,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 13,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 14,Minion.x, Minion.y);
				}
				if (Minion.init >= 2){
					create_hitbox(AT_EXTRA_2, 15,Minion.x, Minion.y);
					create_hitbox(AT_EXTRA_2, 16,Minion.x, Minion.y);
				}
				if (Minion.init >= 3){
					create_hitbox(AT_EXTRA_2, 17, Minion.x - 10, Minion.y);		
				}
			}
		}	
		if (attack == AT_FSPECIAL_2){
			if (window == 2 && window_timer = 1 && stunTrigger != 3){
					Minion.CopyActivated = true;
					Minion.CopyAttack = false;
					
				if (Minion.init >= 1){
					create_hitbox(AT_FSPECIAL_2, 2,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 6,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 7,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 8,Minion.x, Minion.y);		
					create_hitbox(AT_FSPECIAL_2, 3,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 4,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 5,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 11,Minion.x, Minion.y);
				}
				if (Minion.init >= 2){
					create_hitbox(AT_FSPECIAL_2, 9,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL_2, 10,Minion.x, Minion.y);		
					create_hitbox(AT_FSPECIAL_2, 12,Minion.x, Minion.y);		
				}
				if (Minion.init >= 3){
					create_hitbox(AT_FSPECIAL_2, 13,Minion.x, Minion.y);	
					create_hitbox(AT_FSPECIAL_2, 14,Minion.x, Minion.y);		
				}
			}
		}
		
		if (attack == AT_FSPECIAL){
			if (window == 2 && window_timer = 1 && stunTrigger != 3){
					Minion.CopyActivated = true;
					Minion.CopyAttack = false;
					
				if (Minion.init >= 1){
					create_hitbox(AT_FSPECIAL, 2,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 3,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 6,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 4,Minion.x, Minion.y);	
					create_hitbox(AT_FSPECIAL, 5,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 7,Minion.x, Minion.y);	
					create_hitbox(AT_FSPECIAL, 8,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 11,Minion.x, Minion.y);
				}
				if (Minion.init >= 2){
					create_hitbox(AT_FSPECIAL, 9,Minion.x, Minion.y);
					create_hitbox(AT_FSPECIAL, 10,Minion.x, Minion.y);		
					create_hitbox(AT_FSPECIAL, 12,Minion.x, Minion.y);		
				}
				if (Minion.init >= 3){
					create_hitbox(AT_FSPECIAL, 13,Minion.x, Minion.y);	
					create_hitbox(AT_FSPECIAL, 14,Minion.x, Minion.y);		
				}
			}
		}
	}
}

// Minions End

// Rainbow Shift / Referenced Other characters for this
if (hue_lock){
	hue_offset+=hue_speed;
	hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
	
	color_rgb=make_color_rgb(254, 47, 206); //input rgb values here, uses rgb to create a gamemaker colour variable
	hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
	color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	set_color_profile_slot(7, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(7, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	init_shader();
}
// Rainbow Shift End

// Sets off Retro Filter for base color
if (get_player_color(player) == 11 && (state == PS_SPAWN || was_reloaded)){ // Color 11 Variations
	if (spawn_timer == 1){
		ColorLocked = true;
		init_shader();
	}
}
// Retro Filter End

// Color Picler / Secret Skins
if (state == PS_SPAWN || was_reloaded){
	if (spawn_timer < 100 && ColorLock == 0 && jump_down){

		if (get_player_color(player) == 0){ // Color 0 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Default = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Default = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Default = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !shield_down && !attack_down && !special_down){
				Default = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !shield_down && !attack_down && !special_down){
				Default = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !shield_down && !special_down){
				Default = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader()
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Default = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Default = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 1){ // Color 1 Varitaions
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Fantasy = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Fantasy = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !shield_down && !attack_down && !special_down){
				Fantasy = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
		}
		
		if (get_player_color(player) == 2){ // Color 2 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Luminous = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Luminous = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Luminous = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
				
		if (get_player_color(player) == 3){ // Color 3 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Indie = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Indie = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Indie = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}
		
		if (get_player_color(player) == 4){ // Color 4 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Tragedy = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Tragedy = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Tragedy = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}	
		
		if (get_player_color(player) == 5){ // Color 5 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Nine = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Nine = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Nine = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}	

		if (get_player_color(player) == 6){ // Color 6 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				vSai = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				vSai = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				vSai = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				vSai = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				vSai = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				vSai = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				vSai = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				vSai = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				vSai = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Color_rotate = true;
				ColorLock = 1;
				ColorLocked = true;
			}
		}
		
		if (get_player_color(player) == 7){ // Color 7 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				hue_lock = true;
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Pride = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Pride = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Pride = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Pride = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 8){ // Color 8 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Touhou = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Touhou = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Touhou = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Touhou = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 10;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Touhou = 11;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Touhou = 12;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Touhou = 13;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Touhou = 14;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Touhou = 15;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Touhou = 16;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Touhou = 17;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && attack_down && !special_down && !shield_down){
				Touhou = 18;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && attack_down && !special_down && !shield_down){
				Touhou = 19;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && special_down && !shield_down){
				Touhou = 20;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && shield_down){
				Touhou = 21;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Touhou = 22;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Touhou = 23;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && special_down && !shield_down){
				Touhou = 24;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && special_down && !shield_down){
				Touhou = 25;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && shield_down){
				Touhou = 26;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Touhou = 27;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Touhou = 28;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && shield_down){
				Touhou = 29;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && shield_down){
				Touhou = 30;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Color_rotate = true;
				ColorLock = 1;
				ColorLocked = true;
			}
		}
				
		if (get_player_color(player) == 9){ // Color 9 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Data = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Data = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Data = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}	
		
		if (get_player_color(player) == 10){ // Color 10 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Abyss = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Abyss = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Abyss = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Abyss = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Abyss = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Abyss = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Abyss = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Abyss = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}
		
		if (get_player_color(player) == 11){ // Color 11 Variations

			for(i = 0; i < 8; i++){
				set_character_color_shading(i, 0);
			}
			
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Retro = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Retro = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Retro = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Retro = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Retro = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Retro = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Retro = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Retro = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Retro = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Color_rotate = true;
				ColorLock = 1;
				ColorLocked = true;
			}
		}
						
		if (get_player_color(player) == 12){ // Color 12 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				True = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				True = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				True = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}
		
		if (get_player_color(player) == 13){ // Color 13 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Curated = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Curated = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Curated = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Curated = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 10;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				Curated = 11;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				Curated = 12;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Curated = 13;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				Curated = 14;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				Curated = 15;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Curated = 16;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Curated = 17;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && attack_down && !special_down && !shield_down){
				Curated = 18;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && attack_down && !special_down && !shield_down){
				Curated = 19;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Color_rotate = true;
				ColorLock = 1;
				ColorLocked = true;
			}
		}		
		
		if (get_player_color(player) == 14){ // Color 14 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				May = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				May = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				May = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				May = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 10;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && left_down && !right_down && !attack_down && !special_down && !shield_down){
				May = 11;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && right_down && !attack_down && !special_down && !shield_down){
				May = 12;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				May = 13;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && special_down && !shield_down){
				May = 14;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && shield_down){
				May = 15;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				May = 16;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				May = 17;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && left_down && !right_down && attack_down && !special_down && !shield_down){
				May = 18;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && !down_down && !left_down && right_down && attack_down && !special_down && !shield_down){
				May = 19;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (taunt_down && !up_down && down_down && !left_down && !right_down && attack_down && !special_down && !shield_down){
				Color_rotate = true;
				ColorLock = 1;
				ColorLocked = true;
			}
		}
		
		if (get_player_color(player) == 15){ // Color 15 Variations
			if (taunt_down && !up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Muma = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && up_down && !down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Muma = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!taunt_down && !up_down && down_down && !left_down && !right_down && !attack_down && !special_down && !shield_down){
				Muma = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
		}
		
		if (ColorLocked){
			sound_play(asset_get("mfx_confirm"));
		}
	}
}
// Color Picker End

// Abyss Runes
if (runeB) {
	create_hitbox(AT_EXTRA_1, 1, x, y - 35);
	create_hitbox(AT_EXTRA_1, 2, x, y - 35);
}
// Abyss Runes End

// Trum and Alto Support

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 8;
    trummelcodecsprite1 = asset_get("empty_sprite");
    trummelcodecsprite2 = asset_get("empty_sprite");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Who's this fighter? They";
    trummelcodecline[page,2] = "don't seem like they're";
    trummelcodecline[page,3] = "from around here.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "That's Siren the";
    trummelcodecline[page,2] = "Abyssal Maiden. She";
    trummelcodecline[page,3] = "supposedly comes from";
    trummelcodecline[page,4] = "the depths of the Abyss.";
    page++;    
	
	//Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "She might come off";
    trummelcodecline[page,2] = "as a gentle witch,";
    trummelcodecline[page,3] = "but there's a monster";
    trummelcodecline[page,4] = "hiding behind that dress.";
    page++;
	
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "From what I've seen she";
    trummelcodecline[page,2] = "steals the life essence";
    trummelcodecline[page,3] = "of her prey and shoots";
    trummelcodecline[page,4] = "them back out as bullets.";
    page++; 
	
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "kinda cruel if you";
    trummelcodecline[page,2] = "think about it";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Yeah it's cruel, those";
    trummelcodecline[page,2] = "things are so annoying to";
    trummelcodecline[page,3] = "dodge! At least the small";
    trummelcodecline[page,4] = "ones are weak.";
    page++; 
	
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Red bullets are irritating,";
    trummelcodecline[page,2] = "but once her meter is";
    trummelcodecline[page,3] = "high enough she can form";
    trummelcodecline[page,4] = "purple bullets that stun.";
    page++; 
	
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Plus, she can use";
    trummelcodecline[page,2] = "the essence she steals";
    trummelcodecline[page,3] = "to summon minions that";
    trummelcodecline[page,4] = "make their own bullets!";
    page++; 
	
    //Page 8
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Geeze, be careful out";
    trummelcodecline[page,2] = "there it seems like she";
    trummelcodecline[page,3] = "can be a threat if";
    trummelcodecline[page,4] = "she's left to build meter.";
    page++; 

}

// T&A End

// Dracula Support

//if(string_pos("2132275518",string(get_stage_data(SD_ID)))>0){ // Shoutouts to Vark for showing me this	
//    if (state == PS_SPAWN && state_timer == 5){
//        ncharge = 60;
//        morePower = 2;
//        meterLock = 2;
//    }
//}

// Dracula End

// Siren Alt Portraits

if (state == PS_SPAWN){
	if (get_color_profile_slot_r(14, 6) == 254 && get_color_profile_slot_g(14,6) == 254 && get_color_profile_slot_b(14,6) == 254){
		set_victory_portrait(sprite_get("portrait2"));
	}
	else{
		set_victory_portrait(sprite_get("portrait"));
	}
	
	if (get_color_profile_slot_r(14, 6) == 251 && get_color_profile_slot_g(14,6) == 253 && get_color_profile_slot_b(14,6) == 250){
		set_victory_portrait(sprite_get("portrait3"));
	}

}

// Kirby Support
if (swallowed) {
	swallowed = 0;
	var kirby_sprite = sprite_get("poyo");
	var kirby_hurt = sprite_get("poyo_hurt");
//	var proj_sprite = sprite_get("nspecial_proj");
	var myicon = sprite_get("kirbyicon")
	
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, kirby_sprite);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, kirby_sprite);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, kirby_hurt);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 9);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

		set_num_hitboxes(AT_EXTRA_3, 2);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 14);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 85);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 62);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_forsburn_cape_hit"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 14);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 35);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 85);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 62);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_forsburn_cape_hit"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
	}	
}

if enemykirby != noone { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (attack == AT_FSPECIAL_AIR) {
            if window == 3{
                move_cooldown[AT_EXTRA_3] = 60;    
            }
        }
    }
}