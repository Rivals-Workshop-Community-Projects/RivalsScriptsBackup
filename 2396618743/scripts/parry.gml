//CALLED WHEN PARRIED OPPONENT

if (!hasCharge){
    
    chargeCounter = chargeCounter + chargeCounterMax/2; //Increases meter by half on parry

    if (chargeCounter > chargeCounterMax){
        chargeCounter = chargeCounterMax;
        hasCharge = 1;
        sound_play(sound_get("terra_charge"));
        
    }

    
}

