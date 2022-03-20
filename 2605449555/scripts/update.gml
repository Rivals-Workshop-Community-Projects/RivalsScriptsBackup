//update

if (state != PS_ATTACK_GROUND && CannUTiltFlip == true) {
    spr_dir = CannUTiltDir * -1;
    x += 40 * spr_dir;
    CannUTiltFlip = false;
}

if (state == PS_HITSTUN) {
    RaiseHeat = false;
}

// Up Special Uses

if (state == PS_HITSTUN || state == PS_WALL_JUMP || free == false) {
	CannTpUsed = false;
    CannUSpcUses = 1;
    
}

if (state == PS_HITSTUN && attack == AT_DSPECIAL) {
	damage_scaling = 1;
	with (oPlayer) {
    	if (CannOppFSpecialHit == true && id != other.id) {
	        visible = true;
	        invincible = false;
    	}
    	
    }
}

// Cannonball Teleport Delay

if (CannNSpecialCooldownTimer > 0) {
	CannNSpecialCooldownTimer -= 1;
	move_cooldown[AT_NSPECIAL] = 6;
	CannNSpecialCooldownSound = false;
} else {
	if (CannNSpecialCooldownSound == false) {
		sound_play(asset_get("sfx_diamond_collect"));
		CannNSpecialCooldownSound = true;
	}
}

// Neutral Special Power Timer

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
    CannNSpcChargeTimer = 0;
    CannUSpcCharging = false;
}

// Neutral Special Cannon Ball Active

if (CannCannonBallActive == true) {
    move_cooldown[AT_NSPECIAL] = 6;
}

// NSpecial Saving Charge

if (CannNSpcCharge > 0 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	CannStoredNSpecialAmt = CannNSpcCharge;
}

// Bair Hsp Reset

if (CannBairHasYeet == true && free == false) {
	CannBairHasYeet = false;
	//sound_play(asset_get("sfx_ell_steam_hit"));
}

// Forward Special Grab Stuff

if (free == false || state == PS_HITSTUN || state == PS_WALL_JUMP) {
    CannFSpcUsed = false;
}

if (state == SC_HITSTUN) {
    CannGrabbedId.visible = true;
    CannGrabbedId = 0;
}

if (CannFSpcUsed == true) {
    move_cooldown[AT_FSPECIAL] = 6;
}

// No Super Armor Outside of Uspecial

//if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && attack != AT_USPECIAL) {
//	super_armor = false;
//}

// Strong Charging

if (attack_down == true || strong_down == true) {
    CannAttackDown = true;
} else {
    CannAttackDown = false;
}

// Strong Slide Always

if (hsp != 0) {
    CannStrongHspStore = hsp;
} else if (state != PS_ATTACK_GROUND) {
    CannStrongHspStore = 0;
}

// Nair Vsp Reduce

if (CannNairVspReduce == true) {
    CannNairVspReduce = false;
    CannNairDidReduce = true;
	vsp = vsp / 2;
}

// Stop Movement During Parry

if (state == PS_PARRY) {
	hsp = 0;
} 

// Stop When Parried

//if (state == PS_PRATLAND && free == false && CannFspecialPrat == false) {
//	hsp = 0;
//}

if (CannFspecialPrat == true && free == false && state != PS_PRATLAND) {
	CannFspecialPrat = false;
}

// Teleport to Cannonball

if (state != PS_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_GROUND && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_PARRY_START && state != PS_PARRY && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PRATLAND && state != PS_ATTACK_AIR && state != PS_WALL_TECH && state != PS_AIR_DODGE && state != PS_PRATFALL) {
	CannTeleportable = true;
} else {
	CannTeleportable = false;
}



// Heat Meter Stat Changing (now not used)

/*if (HeatLevel == 0 || HeatLevel == 1) {
	walk_speed = 2.75;
    walk_accel = 0.16;
    initial_dash_speed = 5.3;
    dash_speed = 4.45;
    dash_turn_accel = 1.13;
    
    leave_ground_max = 7; 
    max_jump_hsp = 6.25; 
    air_max_speed = 5.7; 
    jump_change = 2.5; 
    air_accel = .19;
    
    wave_land_adj = 1.45; 
    wave_friction = 0.35; 
} else if (HeatLevel == 2 || HeatLevel == 3) {
    walk_speed = 2.90;
    walk_accel = 0.17;
    initial_dash_speed = 5.93;
    dash_speed = 5.02;
    dash_turn_accel = 1.20;
    
    leave_ground_max = 7.3;
    max_jump_hsp = 6.55;
    air_max_speed = 5.9;
    jump_change = 2.7;
    air_accel = .21;
    
    wave_land_adj = 1.53;
    wave_friction = 0.28; 
} else if (HeatLevel == 4 || HeatLevel == 5) {
    walk_speed = 3.05;
    walk_accel = 0.18;
    initial_dash_speed = 6.56;
    dash_speed = 5.59;
    dash_turn_accel = 1.27;
    
    leave_ground_max = 7.6; 
    max_jump_hsp = 6.85;
    air_max_speed = 6.1;
    jump_change = 2.9; 
    air_accel = .23;
    
    wave_land_adj = 1.61;
    wave_friction = 0.21; 
} else if (HeatLevel == 6 || HeatLevel == 7) {
    walk_speed = 3.20;
    walk_accel = 0.19;
    initial_dash_speed = 7.19;
    dash_speed = 6.16;
    dash_turn_accel = 1.34;
    
    leave_ground_max = 7.9; 
    max_jump_hsp = 7.15;
    air_max_speed = 6.3;
    jump_change = 3.1; 
    air_accel = .25;
    
    wave_land_adj = 1.69;
    wave_friction = 0.14; 
} else if (HeatLevel == 8 || HeatLevel == 9) {
	walk_speed = 3.35;
	walk_accel = 0.20;
	initial_dash_speed = 7.82;
	dash_speed = 6.73;
	dash_turn_accel = 1.41;
	
	leave_ground_max = 8.2; 
	max_jump_hsp = 7.45;
	air_max_speed = 6.5;
	jump_change = 3.3; 
	air_accel = .27;
	
	wave_land_adj = 1.77;
	wave_friction = 0.07; 
} else if (HeatLevel >= 10) {
    walk_speed = 3.5;
    walk_accel = 0.21;
    initial_dash_speed = 8.45;
    dash_speed = 7.3;
    dash_turn_accel = 1.48;
    
    leave_ground_max = 8.5; 
    max_jump_hsp = 7.75; 
    air_max_speed = 6.7;
    jump_change = 3.5; 
    air_accel = .29;
    
    wave_land_adj = 1.85; 
    wave_friction = 0; 
}*/

// Wave Bonk
if (get_gameplay_time() <= 120 && shield_pressed == true) {
    waveland_sound = asset_get("sfx_shovel_hit_heavy1");
    sound_play(asset_get("sfx_diamond_collect"));
}

// Heat Glow Anim

if (HeatLevel >= 10) {
    if (HeatGlowAnimCounter >= 20) {
        if (HeatGlowAnim == 10) {
            HeatGlowAnim = 11;
        } else {
            HeatGlowAnim = 10;
        }
        HeatGlowAnimCounter = 0;
    }
    HeatGlowAnimCounter += 1;
}

if (HeatLevel > 0 && CannUSpcCharging == false) {
	if (LowerHeatTimer >= 240) {
		HeatLevel -= 1;
		LowerHeatTimer = 0;
	}
	LowerHeatTimer += 1;
} else {
	LowerHeatTimer = 0;
}

if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_NSPECIAL && attack != AT_USPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG)) {
	CannUSpcCharging = false;
	if (CannGrabbedId != 0) {
		CannGrabbedId.visible = true;
		CannGrabbedId = 0;
	}
}


