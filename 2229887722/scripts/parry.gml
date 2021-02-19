//This is a parry script
if (isCharged)
{
    totalDamageDealt += 20;
    
    if (totalDamageDealt > totalDamageDealtCap)
        totalDamageDealt = totalDamageDealtCap;
}
else
{
    totalDamageDealt += 10;
    
    if (totalDamageDealt > totalDamageDealtCap)
        totalDamageDealt = totalDamageDealtCap;
}

//if (attack == AT_FTILT)
  //  state = PS_PRATFALL;