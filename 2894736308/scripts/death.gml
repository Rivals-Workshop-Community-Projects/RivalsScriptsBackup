if(ring_out != noone){
    killarticles = true;
}

if(ring_equipped != -1){
    ring_equipped = -1;
    ring_timer = -1;
    ring_follow = -1;
    hud_close = 4;
}

for(var i = 0; i < 3; i++){
    ring_cd[i] = -1;
}

suppress_hud = false;