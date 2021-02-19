//1update
hsp = -1;

xtimer++;
timer++;
if(xtimer == 1){
    xval = x;
}
if(xtimer == 2){
    xtimer = 2;
}


if(timer == 1500){
    x = xval;
    timer = 0;
}