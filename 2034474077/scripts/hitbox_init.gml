if(attack == AT_NSPECIAL && hbox_num = 1 && effect == 69){
    shotbounces = 3;                //Time until demise
    whichHHH = player_id.spr_dir;   //So the Shotput knows which way to bounce. Please don't ask about the name.
    already_bounced = false;
    
    //custom shotputs
    ballin = false;
    rofl = false;
    if(player_id.ballin){
        bounce = sound_get("sfx_ball_bounce");
        sprite_index = sprite_get("aaaball");
        ballin = true;
    }else if(player_id.rofl){
        bounce = sound_get("sfx_rofl_bounce");
        sprite_index = sprite_get("aaarofl");
        rofl = true;
    }else{
        bounce = sound_get("shotbonk");
    }
}