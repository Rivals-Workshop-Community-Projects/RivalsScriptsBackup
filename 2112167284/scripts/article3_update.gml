//1update

initialtimer++;

if(initialtimer == 200){
    ready = true;
}

if(ready){
    hsp = 8;
    create_hitbox( AT_JAB, 1, x-32, y-24);
    xtimer++;
    timer++;
    if(xtimer == 1){
        xval = x;
    }
    if(xtimer == 2){
        xtimer = 2;
    }
    
    
    if(timer == 500){
        x = xval;
        timer = 0;
    }
}
