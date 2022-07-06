//update

if (state == PS_SPAWN) {
    switch (SpamNeoIntroTimer) {
        case 56:
        sound_play(sound_get("snap"));
        break;
        
        case 5:
        sound_play(sound_get("laughing"));
        break;
        
    }
    
    SpamNeoIntroTimer += 1;
}

// No Pipis (NSPECIAL) if already active
if (SpamNeoPipisActive == true) {
    move_cooldown[AT_NSPECIAL] = 6;
}

// Walk / Idle use same animation
if (SpamNeoWalkIdleSTimer <= 80) {
    if (SpamNeoWalkIdleSTimer <= 10) {
        SpamNeoWalkIdleFrame = 0;
    } else if (SpamNeoWalkIdleSTimer > 10 && SpamNeoWalkIdleSTimer <= 20) {
        SpamNeoWalkIdleFrame = 1;
    } else if (SpamNeoWalkIdleSTimer > 20 && SpamNeoWalkIdleSTimer <= 30) {
        SpamNeoWalkIdleFrame = 2;
    } else if (SpamNeoWalkIdleSTimer > 30 && SpamNeoWalkIdleSTimer <= 40) {
        SpamNeoWalkIdleFrame = 3;
    } else if (SpamNeoWalkIdleSTimer > 40 && SpamNeoWalkIdleSTimer <= 50) {
        SpamNeoWalkIdleFrame = 4;
    } else if (SpamNeoWalkIdleSTimer > 50 && SpamNeoWalkIdleSTimer <= 60) {
        SpamNeoWalkIdleFrame = 5;
    } else if (SpamNeoWalkIdleSTimer > 60 && SpamNeoWalkIdleSTimer <= 70) {
        SpamNeoWalkIdleFrame = 6;
    } else if (SpamNeoWalkIdleSTimer > 70 && SpamNeoWalkIdleSTimer <= 80) {
        SpamNeoWalkIdleFrame = 7;
    }
    
    SpamNeoWalkIdleSTimer += 1;
    
} else {
    SpamNeoWalkIdleSTimer = 0;
}

if (SpamNeoStringTimer <= 70) {
    if (SpamNeoStringTimer <= 10) {
        SpamNeoStringFrame = 0;
    } else if (SpamNeoStringTimer > 10 && SpamNeoStringTimer <= 20) {
        SpamNeoStringFrame = 1;
    } else if (SpamNeoStringTimer > 20 && SpamNeoStringTimer <= 30) {
        SpamNeoStringFrame = 2;
    } else if (SpamNeoStringTimer > 30 && SpamNeoStringTimer <= 40) {
        SpamNeoStringFrame = 3;
    } else if (SpamNeoStringTimer > 40 && SpamNeoStringTimer <= 50) {
        SpamNeoStringFrame = 4;
    } else if (SpamNeoStringTimer > 50 && SpamNeoStringTimer <= 60) {
        SpamNeoStringFrame = 5;
    } else if (SpamNeoStringTimer > 60 && SpamNeoStringTimer <= 70) {
        SpamNeoStringFrame = 6;
    }
    
    SpamNeoStringTimer += 1;
    
} else {
    SpamNeoStringTimer = 0;
}

// Taunt Sound

if (SpamNeoTauntActive == true && SpamNeoTauntTime == 1) {
    if (SpamNeoTauntSound == false) {
        /*switch (SpamNeoColor) {
            
            case 3:
            sound_play(sound_get("Grimm"), true);
            break;
            
            case 4:
            sound_play(sound_get("Mettaton"), true);
            break;
            
            case 6:
            sound_play(sound_get("Purple"), true);
            break;
            
            case 8:
            sound_play(sound_get("P03"), true);
            break;
            
            case 10:
            sound_play(sound_get("Marx"), true);
            break;
            
            default:
            sound_play(sound_get("bigshit"), true);
            break;
        }*/
        sound_play(sound_get("bigshit"), true);
        SpamNeoTauntSound = true;
    }
}

if (SpamNeoTauntSound == true) {
    suppress_stage_music( 0, 0.02 );
} else {
    switch (SpamNeoColor) {
        case 3:
        sound_stop(sound_get("Grimm"));
        break;
        
        case 4:
        sound_stop(sound_get("Mettaton"));
        break;
        
        case 6:
        sound_stop(sound_get("Purple"));
        break;
        
        case 8:
        sound_stop(sound_get("P03"));
        break;
        
        case 10:
        sound_stop(sound_get("Marx"));
        break;
        
        default:
        sound_stop(sound_get("bigshit"));
        break;
    }
}

if ((state_cat == SC_HITSTUN || state == PS_PRATLAND) && SpamNeoTauntActive == true) {
    SpamNeoTauntSound = false;
}

// Hitstun Checking

if (state != PS_IDLE && state != PS_WALK) {
    SpamNeoWalkIdleSTimer = 0;
}

if (state_cat == SC_HITSTUN) {
    // End sounds when hit
    sound_stop(sound_get("jab_start"));
    sound_stop(sound_get("jab_hold"));
    
    // Can Up Special
    SpamNeoUSpcUsed = false;
    SpamNeoUSpcPrat = false;
    
    // Taunt
    SpamNeoTauntActive = false;
    
}

if (state == PS_LANDING_LAG) {
    SpamNeoTauntActive = false;
}

// Grab Code Stuff

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && SpamNeoGrabbedId != 0) {
    
    SpamNeoGrabbedId.vsp = dsin(SpamNeoGrabAngle) * -1 *get_kb_formula(SpamNeoGrabDmg, SpamNeoGrabbedId.knockback_adj, 1.0, SpamNeoGrabHBDmg, SpamNeoGrabKB, SpamNeoGrabScaling);
    SpamNeoGrabbedId.hsp = dcos(SpamNeoGrabAngle) * get_kb_formula(SpamNeoGrabDmg, SpamNeoGrabbedId.knockback_adj, 1.0, SpamNeoGrabHBDmg, SpamNeoGrabKB, SpamNeoGrabScaling);
    
    SpamNeoGrabAngle = 0;
    SpamNeoGrabKB = 0;
    SpamNeoGrabScaling = 0;
    SpamNeoGrabHBDmg = 0;
    SpamNeoGrabDmg = 0;
    SpamNeoGrabbedId = 0;
    
}

if (free == false || state == PS_WALL_JUMP) {
    SpamNeoUSpcUsed = false;
    SpamNeoUSpcPrat = false;
}

if (SpamNeoUSpcUsed == true) {
    move_cooldown[AT_USPECIAL] = 6;
}

if (SpamNeoPipisCooldown > 0) {
    SpamNeoPipisCooldown -= 1;
}

// Chain Start Position

// INFO: Depending on the state Spamton Neo is in, the chain's top will attempt to go to certain areas on the screen. The chain top always connects to the top of the screen (except when Tamat / other jank)\\
if (SpamNeoPlaytest) {
} else {
    if (SpamNeoStringSpawned == false) { // Creates all the articles of the chain if they do not exist
        //Stuff for Spamton
        instance_create(x, y, "obj_article1");
        // String for other players
        if ( get_player_stocks( 1 ) > 0 && player != 1) {
            SpamPlayerStringNum = 1;
            instance_create(x, y, "obj_article1");
        }
        
        if ( get_player_stocks( 2 ) > 0 && player != 2) {
            SpamPlayerStringNum = 2;
            instance_create(x, y, "obj_article1");
        }
        
        if ( get_player_stocks( 3 ) > 0 && player != 3) {
            SpamPlayerStringNum = 3;
            instance_create(x, y, "obj_article1");
        }
        
        if ( get_player_stocks( 4 ) > 0 && player != 4) {
            SpamPlayerStringNum = 4;
            instance_create(x, y, "obj_article1");
        }
        
        SpamNeoStringSpawned = true;
    }
}

// Pratfall on landing lag

if (SpamNeoUSpcPrat == true && state == PS_LANDING_LAG) {
    set_state(PS_PRATFALL);
    SpamNeoUSpcPrat = false;
}

// Other Update stuff

with (oPlayer) {
    
    // Get number of players
    if (other.SpamNeoGetPlayerInfo == false) {
        other.SpamNeoPlayerCount = instance_number(oPlayer);
        other.SpamNeoGetPlayerInfo = true;
    }
    
    
    if (id != other.id) {
        
        SpamNeoEnmDamage = get_player_damage( player );
        
        // Set Color
        if (other.SpamNeoIntroTimer <= 1) {
            SpamNeoColorGet = other.SpamNeoColor;
        }
        
        // Get Number of Players
        if (other.SpamNeoPlayerCount < 3) {
            other.SpamNeoEnemyName = get_char_info( player, INFO_STR_NAME);
            other.SpamNeoEnemyURL = url;
        }
        
        if (other.SpamNeoPlayerCount > 2) {
            SpamNeoPlayerMany = true;
        }
        
        if (SpamNeoStringPlayerId == other.id) {
            
            if (SpamNeoString == true) {
                
                if (SpamNeoStringCharge > 0) {
                    
                    // Timer Meter
                    if (SpamNeoSPoison == true) { // S. Poison
                        
                        damage_scaling = 1.5;
                    
                        if (SpamNeoSPoisonTimer == 120) {
                            if (SpamNeoStringCharge > 1) {
                                SpamNeoStringCharge -= 1;
                                SpamNeoSPoisonTimer = 0;
                                take_damage( player, -1, 2 );
                            } else {
                                // String
                                SpamNeoStringStop = true;
                                SpamNeoStringStopTimer = 0;
                                SpamNeoStringCharge = 0;
                                SpamNeoString = false;
                                SpamNeoStringStartTimer = 0;
                                // S. Poison
                                SpamNeoSPoison = false;
                                SpamNeoSPoisonTimer = 0;
                                SpamNeoSPoisonOutlineFix = false;
                                take_damage( player, -1, 2 );
                                damage_scaling = 1;
                            }
                            
                        }
                        
                        if (SpamNeoSPoisonTimer == 60) {
                            take_damage( player, -1, 2 );
                        }
                        
                        SpamNeoSPoisonTimer += 1;
                        
                    }
                    
                } else {
                    SpamNeoString = false; // If true the visual will be created
                    SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
                    
                    SpamNeoStringOppLineVsp = 0;
                    SpamNeoStringOppLineHsp1 = 0;
                    
                    SpamNeoStringPosYi = 0;
                    SpamNeoStringPosXi = 0;
                    SpamNeoStringPosYf = 0;
                    SpamNeoStringPosXf = 0;
                    
                    SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn
                    
                    SpamNeoStringStop = true;
                    SpamNeoStringStopTimer = 0;
                    
                    // S. Poison
                    
                    SpamNeoSPoison = false;
                    SpamNeoSPoisonTimer = 0;
                    SpamNeoSPoisonOutlineTimer = 0;
                    SpamNeoSPoisonOutlineCol1 = 0;
                    SpamNeoSPoisonOutlineCol2 = 0;
                    SpamNeoSPoisonOutlineFix = false;
                    
                    // Snap String
                    
                    SpamNeoSnap = false;
                    SpamNeoSnapCount = 0; // So that time runs ever 2 frames
                    SpamNeoSnapTimer = 0;
                    SpamNeoSnapAnim = false;
                    SpamNeoSnapAnimEnd = false;
                    SpamNeoSnapPratTime = 0; // Value 1-5
                    SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
                    SpamNeoSnapPrat = false;
                    SpamNeoSnapNormPratland = 0;
                    damage_scaling = 1;
                    
                    other.SpamNeoSnappingHitbox = false; // When true creates a hitbox
                    other.SpamNeoSnappingXp1 = 0;
                    other.SpamNeoSnappingYp1 = 0;
                    other.SpamNeoSnappingXp2 = 0;
                    other.SpamNeoSnappingYp2 = 0;
                    other.SpamNeoSnappingXp3 = 0;
                    other.SpamNeoSnappingYp3 = 0;
                    other.SpamNeoSnappingXp4 = 0;
                    other.SpamNeoSnappingYp4 = 0;
                    other.SpamNeoSnappedTest = false; // Test if hit has happened
                    other.SpamNeoSnappedTimer = 0;
                }
                
            } else {
                if (SpamNeoStringStopTimer > 30) {
                    SpamNeoStringStop = false;
                    SpamNeoStringStopTimer = 0;
                } else {
                    SpamNeoStringStopTimer += 1;
                }
            }
            
            if (state == PS_DEAD || state == PS_RESPAWN) {
                SpamNeoString = false; // If true the visual will be created
                SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
                
                SpamNeoStringOppLineVsp = 0;
                SpamNeoStringOppLineHsp1 = 0;
                
                SpamNeoStringPosYi = 0;
                SpamNeoStringPosXi = 0;
                SpamNeoStringPosYf = 0;
                SpamNeoStringPosXf = 0;
                
                SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn
                
                SpamNeoStringStop = false;
                SpamNeoStringStopTimer = 0;
                
                // S. Poison
                
                SpamNeoSPoison = false;
                SpamNeoSPoisonTimer = 0;
                SpamNeoSPoisonOutlineTimer = 0;
                SpamNeoSPoisonOutlineCol1 = 0;
                SpamNeoSPoisonOutlineCol2 = 0;
                SpamNeoSPoisonOutlineFix = false;
                
                // Snap String
                
                SpamNeoSnap = false;
                SpamNeoSnapCount = 0; // So that time runs ever 2 frames
                SpamNeoSnapTimer = 0;
                SpamNeoSnapAnim = false;
                SpamNeoSnapAnimEnd = false;
                SpamNeoSnapPratTime = 0; // Value 1-5
                SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
                SpamNeoSnapPrat = false;
                SpamNeoSnapNormPratland = 0;
                damage_scaling = 1;
                
                other.SpamNeoSnappingHitbox = false; // When true creates a hitbox
                other.SpamNeoSnappingXp1 = 0;
                other.SpamNeoSnappingYp1 = 0;
                other.SpamNeoSnappingXp2 = 0;
                other.SpamNeoSnappingYp2 = 0;
                other.SpamNeoSnappingXp3 = 0;
                other.SpamNeoSnappingYp3 = 0;
                other.SpamNeoSnappingXp4 = 0;
                other.SpamNeoSnappingYp4 = 0;
                other.SpamNeoSnappedTest = false; // Test if hit has happened
                other.SpamNeoSnappedTimer = 0;
                
                SpamNeoStringPlayerId = 0;
            }
            
            if (SpamNeoSnap == true) {
                // End if you enter hitstun
                
                if (other.state_cat == SC_HITSTUN && SpamNeoPointerTimer <= 72) {
                    SpamNeoString = false; // If true the visual will be created
                    SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
                    
                    SpamNeoStringOppLineVsp = 0;
                    SpamNeoStringOppLineHsp1 = 0;
                    
                    SpamNeoStringPosYi = 0;
                    SpamNeoStringPosXi = 0;
                    SpamNeoStringPosYf = 0;
                    SpamNeoStringPosXf = 0;
                    
                    SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn
                    
                    SpamNeoStringStop = false;
                    SpamNeoStringStopTimer = 0;
                    
                    // S. Poison
                    
                    SpamNeoSPoison = false;
                    SpamNeoSPoisonTimer = 0;
                    SpamNeoSPoisonOutlineTimer = 0;
                    SpamNeoSPoisonOutlineCol1 = 0;
                    SpamNeoSPoisonOutlineCol2 = 0;
                    SpamNeoSPoisonOutlineFix = false;
                    
                    // Snap String
                    
                    SpamNeoSnap = false;
                    SpamNeoSnapCount = 0; // So that time runs ever 2 frames
                    SpamNeoSnapTimer = 0;
                    SpamNeoSnapAnim = false;
                    SpamNeoSnapAnimEnd = false;
                    SpamNeoSnapPratTime = 0; // Value 1-5
                    SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
                    SpamNeoSnapPrat = false;
                    SpamNeoSnapNormPratland = 0;
                    damage_scaling = 1;
                    
                    other.SpamNeoSnappingHitbox = false; // When true creates a hitbox
                    other.SpamNeoSnappingXp1 = 0;
                    other.SpamNeoSnappingYp1 = 0;
                    other.SpamNeoSnappingXp2 = 0;
                    other.SpamNeoSnappingYp2 = 0;
                    other.SpamNeoSnappingXp3 = 0;
                    other.SpamNeoSnappingYp3 = 0;
                    other.SpamNeoSnappingXp4 = 0;
                    other.SpamNeoSnappingYp4 = 0;
                    other.SpamNeoSnappedTest = false; // Test if hit has happened
                    other.SpamNeoSnappedTimer = 0;
                    
                    SpamNeoStringPlayerId = 0;
                }
                
                if (SpamNeoSnapAnim == true) {
                    if (SpamNeoSnapTimer > 0) {
                        if (SpamNeoSnapCount >= 2) {
                            SpamNeoSnapTimer -= 1;
                            SpamNeoSnapCount = 0;
                        } else {
                            SpamNeoSnapCount += 1;
                        }
                    } else {
                        SpamNeoSnapTimer = 0;
                        SpamNeoSnapCount = 0;
                        
                        other.SpamNeoSnappingHitbox = true;
                        switch (player) {
                            
                            case 1:
                            other.SpamNeoSnappingXp1 = x;
                            other.SpamNeoSnappingYp1 = y - char_height / 2;
                            break;
                            
                            case 2:
                            other.SpamNeoSnappingXp2 = x;
                            other.SpamNeoSnappingYp2 = y - char_height / 2;
                            break;
                            
                            case 3:
                            other.SpamNeoSnappingXp3 = x;
                            other.SpamNeoSnappingYp3 = y - char_height / 2;
                            break;
                            
                            case 4:
                            other.SpamNeoSnappingXp4 = x;
                            other.SpamNeoSnappingYp4 = y - char_height / 2;
                            break;
                        }
                        
                        
                        SpamNeoSnapAnim = false;
                    }
                }
                if (other.SpamNeoSnappedTest == true) {
                    
                    if (other.SpamNeoSnappedTimer > 3) {
                        if (SpamNeoSnapPrat == false) {
                            SpamNeoString = false; // If true the visual will be created
                            SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
                            
                            SpamNeoStringOppLineVsp = 0;
                            SpamNeoStringOppLineHsp1 = 0;
                            
                            SpamNeoStringPosYi = 0;
                            SpamNeoStringPosXi = 0;
                            SpamNeoStringPosYf = 0;
                            SpamNeoStringPosXf = 0;
                            
                            SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn
                            
                            SpamNeoStringStop = true;
                            SpamNeoStringStopTimer = 0;
                            
                            // S. Poison
                            
                            SpamNeoSPoison = false;
                            SpamNeoSPoisonTimer = 0;
                            SpamNeoSPoisonOutlineTimer = 0;
                            SpamNeoSPoisonOutlineCol1 = 0;
                            SpamNeoSPoisonOutlineCol2 = 0;
                            SpamNeoSPoisonOutlineFix = false;
                            
                            // Snap String
                            
                            SpamNeoSnap = false;
                            SpamNeoSnapCount = 0; // So that time runs ever 2 frames
                            SpamNeoSnapTimer = 0;
                            SpamNeoSnapAnim = false;
                            SpamNeoSnapAnimEnd = false;
                            SpamNeoSnapPratTime = 0; // Value 1-5
                            SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
                            SpamNeoSnapPrat = false;
                            SpamNeoSnapNormPratland = 0;
                            damage_scaling = 1;
                            
                            other.SpamNeoSnappingHitbox = false; // When true creates a hitbox
                            other.SpamNeoSnappingXp1 = 0;
                            other.SpamNeoSnappingYp1 = 0;
                            other.SpamNeoSnappingXp2 = 0;
                            other.SpamNeoSnappingYp2 = 0;
                            other.SpamNeoSnappingXp3 = 0;
                            other.SpamNeoSnappingYp3 = 0;
                            other.SpamNeoSnappingXp4 = 0;
                            other.SpamNeoSnappingYp4 = 0;
                            other.SpamNeoSnappedTest = false; // Test if hit has happened
                            other.SpamNeoSnappedTimer = 0;
                            
                            SpamNeoStringPlayerId = 0;
                        }
                        other.SpamNeoSnappedTest = false;
                        other.SpamNeoSnappedTimer = 0;
                    } else {
                        other.SpamNeoSnappedTimer += 1;
                    }
                    
                }
                
                if (SpamNeoSnapPrat == true) {
                    if (SpamNeoSnapPratFrames > 0) {
                        if (free == false) {
                            SpamNeoSnapPratFrames -= 1;
                        }
                        
                        if (SpamNeoSnapPratFrames <= prat_land_time - 2 && (state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_DEAD)) {
                            SpamNeoSnapPratFrames = 0;
                        }
                    } else {
                        SpamNeoSnapPrat = false;
                        SpamNeoSnapPratFrames = 0;
                        SpamNeoSnapPratTime = 0;
                        SpamNeoSnap = false;
                        prat_land_time = SpamNeoSnapNormPratland;
                    }
                }
                
                switch (SpamNeoPointerTimer) {
                    case 0:
                    SpamNeoPointerFrame = 0;
                    break;
                    
                    case 12:
                    sound_play(asset_get("mfx_ring_bell"));
                    break;
                    
                    case 18:
                    SpamNeoPointerFrame = 1;
                    break;
                    
                    case 36:
                    SpamNeoPointerFrame = 2;
                    
                    break;
                    
                    case 42:
                    sound_play(asset_get("mfx_ring_bell"));
                    break;
                    
                    case 54:
                    SpamNeoPointerFrame = 3;
                    break;
                    
                    case 72:
                    SpamNeoPointerFrame = 4;
                    sound_play(asset_get("mfx_ring_bell"));
                    break;
                }
                SpamNeoPointerTimer += 1;
            } else {
                //SpamNeoSnapNormPratland = prat_land_time;
            }
            
            if (SpamNeoStringApplyCooldown > 0) {
                SpamNeoStringApplyCooldown -= 1;
            }
            if (SpamNeoStringMultiCooldown > 0) {
                SpamNeoStringMultiCooldown -= 1;
            }
            
        }
    }
}

// Current String Start Position

if (state == 19 || state == 21) {
    SpamNeoStringStartX = x + 20 * spr_dir;
    SpamNeoStringStartY = y - char_height * 0.7;
} else if (state == 6 || state == 5) {
    switch (attack) {
        case AT_DTILT:
        switch (window) {
            case 1:
            SpamNeoStringStartX = x;
            SpamNeoStringStartY = y - char_height * 0.7;
            break;
            
            case 2:
            SpamNeoStringStartX = x + (65 * spr_dir);
            SpamNeoStringStartY = y - char_height * 0.4;
            break;
            
            case 3:
            if (window_timer <= 5) {
                SpamNeoStringStartX = x + (65 * spr_dir);
                SpamNeoStringStartY = y - char_height * 0.4;
            } else if (window_timer > 5 && window_timer <= 9) {
                SpamNeoStringStartX = x + (40 * spr_dir);
                SpamNeoStringStartY = y - char_height * 0.6;
            } else if (window_timer > 9 && window_timer <= 12) {
                SpamNeoStringStartX = x;
                SpamNeoStringStartY = y - char_height * 0.7;
            }
            break;
        }
        break;
        
        case AT_DATTACK:
        switch (window) {
            case 1:
            SpamNeoStringStartX = x;
            SpamNeoStringStartY = y - char_height * 0.7;
            break;
            
            case 2:
            if (window_timer <= 3) {
                SpamNeoStringStartX = x + (80 * spr_dir);
                SpamNeoStringStartY = y - char_height * 0.6;
            } else if (window_timer > 3 && window_timer <= 6) {
                SpamNeoStringStartX = x + (110 * spr_dir);
                SpamNeoStringStartY = y - char_height * 0.5;
            }
            break;
            
            case 3:
            SpamNeoStringStartX = x + (120 * spr_dir);
            SpamNeoStringStartY = y - char_height * 0.4;
            break;
            
            case 4:
            SpamNeoStringStartX = x + (10 * spr_dir);
            SpamNeoStringStartY = y - char_height * 0.4;
            break;
        }
        break;
        
        default:
        SpamNeoStringStartX = x;
        SpamNeoStringStartY = y - char_height * 0.7;
        break;
    }
} else {
    SpamNeoStringStartX = x;
    SpamNeoStringStartY = y - char_height * 0.7;
}

// Spawn Hitbox for the Snap

if (SpamNeoSnappingHitbox == true) {
    create_hitbox(AT_DSTRONG, 2, round(SpamNeoSnappingXp1), round(SpamNeoSnappingYp1));
    create_hitbox(AT_DSTRONG, 2, round(SpamNeoSnappingXp2), round(SpamNeoSnappingYp2));
    create_hitbox(AT_DSTRONG, 2, round(SpamNeoSnappingXp3), round(SpamNeoSnappingYp3));
    create_hitbox(AT_DSTRONG, 2, round(SpamNeoSnappingXp4), round(SpamNeoSnappingYp4));
    SpamNeoSnappingXp1 = 1000;
    SpamNeoSnappingYp1 = 1000;
    SpamNeoSnappingXp2 = 1000;
    SpamNeoSnappingYp2 = 1000;
    SpamNeoSnappingXp3 = 1000;
    SpamNeoSnappingYp3 = 1000;
    SpamNeoSnappingXp4 = 1000;
    SpamNeoSnappingYp4 = 1000;
    SpamNeoSnappedTest = true;
    SpamNeoSnappedTimer = 0;
    SpamNeoSnappingHitbox = false;
}


// Chain Info: https://en.wikipedia.org/wiki/Catenary

/* Create anchor points like for Cann's Lab 7 dots, then draw a line in bettween

Conservation of Angular Momentum in colisions

Try to figure out how to calculate backwards from the point I want it to get to.
