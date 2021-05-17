//article1_update
switch (state)
{
case 0:
    //x = -200;
    break;
case 1:
    if(free){
        vsp += 1;
        vsp = max(vsp,-8);
    }
    else{
        vsp = 0;
        state = 2;
    }
    if(image_index != 0){
        image_index -= .4;
    }
    break;
case 2:
    if(free){
        state = 1;
    }
    image_index += .2;
    if(image_index == 4){
        state = 3;
    }
    break;
case 3:
    //x = -200;
    
    if(free){
        state = 1;
    }
    break;
}
//if(player_id.torn != noone && position_meeting(x,y-15,player_id.torn)){
//    hsp = player_id.torndir * 10;
//}
hsp = hsp * .94;
if(abs(hsp) < .3){
    hsp = 0;
}
//if(x < stage_leftx){
//    x = stage_leftx;
//}
//if(x > stage_rightx){
//    x = stage_rightx;
//}
if(player_id.banandetect != noone){
player_id.banandetect.x = x;
player_id.banandetect.y = y-17;
}
/*if(count2frame > -1) {
    if(count2frame == 0){
        create_hitbox(AT_DSPECIAL, 2, x, y-19);
        instance_destroy(player_id.banandetect);
        state = 0;
        x = -200;
    }
    count2frame -= 1;
    
}*/
if(state != 0 && player_id.banandetect.destroyed){
    //replace when spin
    player_id.banandetect = noone;
    state = 0;
    x = -200;
}