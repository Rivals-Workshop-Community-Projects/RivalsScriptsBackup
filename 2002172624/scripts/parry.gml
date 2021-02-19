var SigGive = 0;

if (enemy_hitboxID.type == 1) {
    //PROJECTILES ONLY GIVE HALF A SIG
    SIG_CHARGE += 5;
} else {
    //anything else gives 1 full Sig Point
    SigGive = 1;
}

//EVERYTHING UNDER IS COPIED FROM HIT_PLAYER SO IF YOU UPDATE IT DO IT THERE AS WELL
//LOCKS
if (GAUGE_SIG_CURRENT = 5 and GAUGE_UNLOCK != 1) { SIG_CHARGE = 0; SigGive = 0;}
	else if (GAUGE_SIG_CURRENT = 10 and GAUGE_UNLOCK != 2) {SIG_CHARGE = 0; SigGive = 0;}
	else if (GAUGE_SIG_CURRENT = 15 and GAUGE_UNLOCK != 3) {SIG_CHARGE = 0; SigGive = 0;}

//WHEN HIT ENOUGH GAIN 1 SIG
if (SIG_CHARGE >= SIG_CHARGE_MAX) {
    if (GAUGE_SIG_CURRENT < GAUGE_SIG_MAX) {
        GAUGE_SIG_CURRENT += 1;
    }
    SIG_CHARGE = 0;
    
}

//GIVE THE BONUS SIG FROM STRONGS
if (CAUSE_SIG_CURRENT < GAUGE_SIG_MAX) {
    GAUGE_SIG_CURRENT += SigGive;
}
