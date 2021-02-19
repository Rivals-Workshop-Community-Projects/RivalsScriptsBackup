//Particles left by bike during KB

/*STATE INDEX

- 0 Freshly spawned
- 1 Dying

*/

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