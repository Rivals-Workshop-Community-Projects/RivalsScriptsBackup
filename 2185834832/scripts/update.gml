if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 20) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if(state == PS_DOUBLE_JUMP && state_timer == 0){
    spawn_hit_fx( x, y, bubblejump)
    sound_play( asset_get( "sfx_bubblemouth" ))
}

if(state == PS_DOUBLE_JUMP && vsp < 0){
    if(doublejumpVar == -1){
    	if(state_timer == 2){
        hsp = -6.5    
    	}
    }else if(doublejumpVar == 1){
    	if(state_timer == 2){
        hsp = 6.5
    	}
    }else{
    	if(state_timer == 2){
        hsp = 0
    	}
    }
}


if(state == PS_DOUBLE_JUMP && state_timer < 2){
    if(left_down){
        doublejumpVar = -1
    }
    if(right_down){
        doublejumpVar = 1
    }
}

if(vsp > 0 || state == PS_IDLE || state == PS_IDLE_AIR){
    doublejumpVar = 0
}

waterCutterExist -= 1

if(attack == AT_NSPECIAL_2 && window > 1){
	can_fast_fall = false
}else{
	can_fast_fall = true
}

if(!free){
	uspecVar = 1
	fspecVar = 2
	dspecFlying = false
}

if(waterLevel > 99 && waterCharges < 3){
	waterLevel = 0
	waterCharges += 1
	sound_play(asset_get("sfx_watergun_fire"))
}

if(waterCharges >= 3){
	waterLevel = 0
}
if(waterCharges > 3){
	waterCharges = 0
}else if(waterCharges < 0){
	waterCharges = 0
}

if(waterLevel > 100){
	waterLevel = 100
}else if(waterLevel < 0){
	waterLevel = 0
}

combatTimer -= 0.2

if(waterLevel > 0){
	if(combatTimer < 0){
		waterLevel -= 1
		combatTimer = 8
	}
}

if(window == 0){
	strongAttack = false
}
