//Particles left by cloud or player

/*STATE INDEX

- 0 Freshly spawned
- 1 Dying

*/




//Set initial speed

switch (source){
    case 1:
        vsp = player_id.vsp * 0.25;
        hsp = player_id.hsp * 0.75;
        break;
    case 2:
        vsp = player_id.cloudparticlevsp;
        hsp = 0;
        break;
    case 3:
        vsp = player_id.molotovparticlevsp * 0.25;
        hsp = player_id.molotovparticlehsp * 0.25;
        break;
    case 4:
        vsp = player_id.bulletparticlevsp * 0.25;
        hsp = player_id.bulletparticlehsp * 0.25;
        break;
}

source = 0;



//Decelerate
vsp *= decel;
hsp *= decel;



//State 0: Freshly spawned

if (state == 0){
    
    //Go to dying
    if (state_timer >= 5){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Dying

if (state == 1){
    if (state_timer >= (anim_rate * 4)){
        instance_destroy();
        exit;
    }
}



//Sprite and animation handling

switch(state){
    case 0:
        break;
    case 1:
        if (state_timer mod anim_rate == 0){
            image_index++;
        }
        break;
}



//Make time progress

state_timer++;