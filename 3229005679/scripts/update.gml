with (hit_fx_obj){

    if (player == other.player){
        depth = other.depth - 1;

        if (hit_fx == other.plankFlying){
            vsp = min(vsp + 1, 10);
            draw_angle = step_timer * 10 * -sign(hsp);
        }

        if (hit_fx == other.ghostHit || hit_fx == other.ghostCloud || hit_fx == other.uairExplosion || hit_fx == other.dynamiteBoomGround || hit_fx == other.rocketBoomGround || hit_fx == other.crateExplosion || hit_fx == other.stompVFX){
            uses_shader = 0;
        }
    }

} 

if (bear_uspecial == false){
    move_cooldown[AT_TAUNT] = 2;
}


if (state == PS_PARRY && state_timer == 0){
    vigiParryRNG = random_func(0, 2, true);
}


if (state == PS_IDLE && state_timer == wait_time - 1){
    
    switch (random_func(0, 4, true)){

        case 0:
            wait_length = 70;                 
            wait_sprite = sprite_get("wait0");
        break;

        case 1:
            wait_length = 70;                 
            wait_sprite = sprite_get("wait1");
        break;

        case 2:
            wait_length = 55;                 
            wait_sprite = sprite_get("wait2");
        break;

        case 3:
            wait_length = 80;                 
            wait_sprite = sprite_get("wait3");
        break;

    }
}

if (state_cat == SC_AIR_NEUTRAL && taunt_pressed && move_cooldown[AT_TAUNT] == 0 && !down_down){
    set_attack(AT_TAUNT);
}


if (instance_exists(vigiGhost)){
    move_cooldown[AT_NSPECIAL] = 2;

    if (vigiGhost.state != "idle"){
        sound_stop(ghostSound);
    }
} else {

    sound_stop(ghostSound);
}


if (instance_exists(vigiWeenie)){
    move_cooldown[AT_FSPECIAL] = 180 - (has_rune("M") * 178);

    if (vigiWeenie.state == 6){
        sound_stop(weenieSound);
    }
} else {

    sound_stop(weenieSound);
}


if (state != PS_DASH){
    sound_stop(vigiStep);
}


if ((state == PS_DASH && state_timer % 60 == 0) || (state == PS_DASH_TURN && state_timer == dash_turn_time-1)){
    sound_play(vigiStep, false, noone, 1, 1);
}


if (hasAltCloth && spawn_timer > 122 && state != PS_IDLE){

    wait_time = 180;
    spawn_hit_fx(x, y, bandanaFall);
    hasAltCloth = false;

}



var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

