// hit_player is a script that runs code when you hit an enemy player.

// final smash stuff 

if attack == 49{
    
    if hit_player_obj.enemy_hitboxID.attack == 49{
    
    ultimateTargetPos = [hit_player_obj.x, hit_player_obj.y];
    
        if array_length(ultimateTarget) == 0{
            
            window = 5;
            window_timer = 0;
            
        }
            
        var found = false;
        for (var i = 0; i < array_length(ultimateTarget); i++){
            if ultimateTarget[i] = hit_player_obj{
                found = true;
                break;
            }
        }
        
        if !found{
            array_push(ultimateTarget, hit_player_obj);
        }
    
    }
    
}


if (meter < maxMeter)
{
    meter++;
    meter += comboLevel;
    if (attack == AT_FSPECIAL) || (attack == AT_DSPECIAL) || (attack == AT_USPECIAL) || (attack == AT_DSTRONG) || (attack == AT_FSPECIAL) || (attack == AT_DSPECIAL_2)
    {
        meter += 2+(has_rune("E")*2);
    }
    if (meter >= maxMeter)
        {
            meter = maxMeter;
        }
}

if attack == AT_FSPECIAL && has_rune("C"){
    hit_player_obj.hitstop += 10;
}

if has_rune("L"){
    comboCount += 1;
    if comboTimeout < comboTimeoutAmount comboTimeout = comboTimeoutAmount;
    comboPB = max(comboCount, comboPB);
    comboPulseXY = [round(random_func(0, 13, true) / 2) * 2, round(random_func_2(0, 13, true) / 2) * 2];
    comboPulseXY[0] -= 6;
    comboPulseXY[1] -= 6;
    if comboCount mod 10 = 0{
        sound_play(sound_get("IonExplosion"), false, noone, 2, 1.2);
        levelupEffectTimer = 30;
        azulaArmor += 2+comboLevel;
        shake_camera(5, 20);
        if comboLevel > 0 create_hitbox(AT_NSPECIAL, 3, floor(x), floor(y));
        comboTimeout = 300+(comboLevel*30);
    }
}

//if (attack == AT_NSPECIAL)
//{
//	spawn_hit_fx(x,y,ion_explosion_vfx);
//}