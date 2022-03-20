if (state == 1){
    if hsp != 15*spr_dir{
        hsp += 1*spr_dir;
    }
    if (vsp > -2){
        vsp --;
    }
    depth = 30;
    if (state_timer == 200){
        instance_destroy();
        exit;
    }
}
if (state == 0 && player_id.state == PS_RESPAWN){
    if (y > player_id.y - 10){
        vsp = -8;
    } else if (vsp < 0){
        vsp ++;
    }
}

if (player_id.intro_toggle == false){
    sprite_index = sprite_get("empty_proj");
}
image_index += 0.2;

state_timer ++;