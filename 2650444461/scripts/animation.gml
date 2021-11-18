switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if(intro && (state == PS_IDLE or state == PS_SPAWN)){
	//sprite_index = sprite_get("intro");
	//var playernum = 5 + (player);
	//image_index = (state_timer*introspeed)-playernum;
}else{
    intro = 0;
}

//if(state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN){
    //if(currenthurtbox == 0){
        //hurtbox_spr = sprite_get("hurtboxdash");
        //currenthurtbox = 1;
    //}
//}else if(currenthurtbox == 1){
    //hurtbox_spr = sprite_get("hurtbox");
    //currenthurtbox = 0;
//}