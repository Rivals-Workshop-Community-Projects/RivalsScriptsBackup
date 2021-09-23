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

if (CannUSpcUses == 0) {
    move_cooldown[AT_USPECIAL] = 6;
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || free == false) {
    CannUSpcUses = 1;
}

// Neutral Special Power Timer

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
    CannNSpcChargeTimer = 0;
    CannUSpcCharging = false;
}

// Neutral Special Heat Check

/*if (HeatLevel == 0 &&) {
    move_cooldown[AT_NSPECIAL] = 6;
    
    if (special_pressed && joy_pad_idle) {
        if (CannNSpcNoHeatSoundDelay == false) {
            sound_play(sound_get("error"));
        }
        CannNSpcNoHeatSoundDelay = true;
    } else {
        CannNSpcNoHeatSoundDelay = false;
    }
}*/

// Neutral Special Cannon Ball Active

if (CannCannonBallActive == true) {
    move_cooldown[AT_NSPECIAL] = 6;
}

// Forward Special Grab Stuff

if (free == false || state == PS_HITSTUN) {
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

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && attack != AT_USPECIAL) {
	super_armor = false;
}

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

if (state == PS_PRATLAND && free == false) {
	hsp = 0;
}

// Heat Meter Stat Changing

if (HeatLevel == 0 || HeatLevel == 1) {
    walk_speed = 2.5;
    walk_accel = 0.15;
    initial_dash_speed = 4.25;
    dash_speed = 3.5;
    dash_turn_accel = 1;
    
    leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .15;
    
    land_time = 4; //normal landing frames
    prat_land_time = 3;
    wave_land_time = 8;
    wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0.6; //grounded deceleration when wavelanding
} else if (HeatLevel == 2 || HeatLevel == 3) {
    walk_speed = 2.75;
    walk_accel = 0.165;
    initial_dash_speed = 5.3;
    dash_speed = 4.45;
    dash_turn_accel = 1.12;
    
    leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6.4; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 5.8; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 2.4; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .18;
    
    wave_land_adj = 1.44; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0.36; //grounded deceleration when wavelanding
} else if (HeatLevel == 4 || HeatLevel == 5) {
    walk_speed = 3;
    walk_accel = 0.18;
    initial_dash_speed = 6.35;
    dash_speed = 5.4;
    dash_turn_accel = 1.24;
    
    leave_ground_max = 7.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6.8; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 6.1; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 2.8; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .21;
    
    wave_land_adj = 1.58; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0.12; //grounded deceleration when wavelanding
} else if (HeatLevel == 6 || HeatLevel == 7) {
    walk_speed = 3.25;
    walk_accel = 0.195;
    initial_dash_speed = 7.4;
    dash_speed = 6.35;
    dash_turn_accel = 1.36;
    
    leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7.2; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 6.4; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 3.2; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .24;
    
    wave_land_adj = 1.72; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0; //grounded deceleration when wavelanding
} else if (HeatLevel == 8 || HeatLevel == 9) {
    walk_speed = 3.5;
    walk_accel = 0.21;
    initial_dash_speed = 8.45;
    dash_speed = 7.3;
    dash_turn_accel = 1.48;
    
    leave_ground_max = 8.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7.6; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 6.7; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 3.6; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .27;
    
    wave_land_adj = 1.86; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0; //grounded deceleration when wavelanding
} else if (HeatLevel >= 10) {
    walk_speed = 3.75;
    walk_accel = 0.225;
    initial_dash_speed = 9.5;
    dash_speed = 8.25;
    dash_turn_accel = 1.6;
    
    leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .3;
    
    wave_land_adj = 2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = 0; //grounded deceleration when wavelanding
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

/*

// Heat Fuse Timer

if (HeatLevel >= 10) {
    if (CannUSpcCharging = false) {
        if (FuseTimer <= 15) {
            if (FuseCounter >= 60) {
                FuseTimer += 1;
                FuseCounter = 0;
            }
            FuseCounter += 1;
        } else {
            FuseTimer = 1;
            FuseCounter = 0;
            HeatLevel = 0;
            CannExploded = true;
        }
    }
}*/

// Heat Lower Anim

/*if (CannDeath == true) {
    if (HeatLowerAnim > HeatLevel) {
        if (HeatLowerAnimCounter >= 3) {
            HeatLowerAnim -= 1;
            HeatLowerAnimCounter = 0;
        }
        HeatLowerAnimCounter += 1;
    } else {
        CannDeath = false;
        HeatLowerAnim = 9;
        
    }
}