//It makes the armor behave like Focus Attack
if (soft_armor > 0){
    soft_armor = 0;
    //Disables the armor if you're galaxied 
    if (activated_kill_effect){
        soft_armor = 0;
    }
}

