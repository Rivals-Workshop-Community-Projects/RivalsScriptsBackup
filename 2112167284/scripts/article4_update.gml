//1update

initialtimer++;

if(initialtimer == 200){
    ready = true;
}

if(ready){
    hsp = 0;
    create_hitbox( AT_JAB, 1, x-28, y-24);
    xtimer++;
    timer++;
    
    if(getingear){
       hsp = -8; 
       timer2++;
       if(timer2 == 1){
           x = xval;
       }
       if(timer2 == 250){
            x = xval2;
            timer = 0;
            timer2 = 0;
            getingear = false;
       }
    }
    if(timer == 250){
        getingear = true;
        timer = 0;
    }
    
    if(xtimer == 1){
        xval = x;
    }
    if(xtimer == 2){
        x += 1000;
        xval2 = x;
    }
    if(xtimer == 3){
        xtimer = 3;
    }
}