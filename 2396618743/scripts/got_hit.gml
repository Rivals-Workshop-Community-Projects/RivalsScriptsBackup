//CALLED WHEN HIT

//chargeCounter = 0;


if (conserveCharge){
    calculatedDamage = 0;
    hasCharge = 0;
    conserveCharge = 0;
}

if (!hasCharge){
    
}

hasCharge = -1;
calculatedDamage = ((enemy_hitboxID.damage * (1 + (enemy_hitboxID.player_id.strong_charge * 0.01)))*10);
chargeCounter = chargeCounter - calculatedDamage;

if (chargeCounter < 0){
    chargeCounter = 0;
}

if (chargeSpent){
    chargeSpent = 0;
}


if (attack == AT_DSPECIAL){
    dspecialcharge = 0;
}