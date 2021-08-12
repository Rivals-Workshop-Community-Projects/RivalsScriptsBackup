var atk = my_hitboxID.attack;
if(atk == AT_BAIR or atk == AT_DSPECIAL or atk == AT_USTRONG){
    my_hitboxID.destroyed = true;
    if(atk == AT_DSPECIAL){
        with(pHitBox){
            if(player == other.player and attack == AT_DSPECIAL){
                destroyed = true;
            }
        }
    }
}