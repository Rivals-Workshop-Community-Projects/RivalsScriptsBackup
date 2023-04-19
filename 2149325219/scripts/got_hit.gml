//got hit

if(fuse > fuse_max){
    fuse = fuse_max;
}

if(attack == AT_USPECIAL && window > 1){
    fuse = fuse_max;
}

if(state == PS_PRATFALL || state == PS_PRATLAND){
    fuse = fuse_max;
}

if(prime){
    if(enemy_hitboxID.attack == AT_FSTRONG|| enemy_hitboxID.attack ==  AT_DSTRONG|| enemy_hitboxID.attack == AT_USTRONG){
        
        primeDamage -= enemy_hitboxID.damage*(1+(strong_charge/120));
    }
    primeDamage -= enemy_hitboxID.damage;
    primeCounterTimer = 100;
}