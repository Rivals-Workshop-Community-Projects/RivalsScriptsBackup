// update is a script that runs whatever code is in here every in-game frame.
//user_event(14);

if vfxTimer > 0 vfxTimer -= 0.5;
if grabFlash> 0 grabFlash -= 1;

if solverPlayer = 0{
    for (var g = 0; g < instance_number(oPlayer)+1; g++){
        if get_char_info(g, INFO_STR_NAME) == "Azula"{
            solverPlayer = g;
            break;
        }
    } 
}

if solverPlayer = player && globalItemSolver == noone{
    globalItemSolver = self;
}

if has_rune("F"){
    set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
    var buffer = 2;
    if (prev_state == PS_DASH || prev_state == PS_DASH_START) && state == PS_JUMPSQUAT{
        if attack_pressed && state_timer < buffer{
            set_attack(AT_DATTACK);
        }
    }
}


// Unlock potential stuff
if variable_instance_exists(self, "potential_unlocked"){
    
    if meter < maxMeter meter += 0.016;
    
}

// Check if azula is in abyss endless
if inEndlessAbyss = 0{
    if room == asset_get("stage_abyss_level") && is_aether_stage(){
        var team = get_player_team(player);
        inEndlessAbyss = 1;
        abyssUIOffset = 46;
        with oPlayer if player != other.player && player < 5 && player > 0{
            if team != get_player_team(player){
                other.inEndlessAbyss = -1;
                other.abyssUIOffset = 0;
            }
        }
    }
    else{
        inEndlessAbyss = -1;
        other.abyssUIOffset = 0;
    }
}

if (inEndlessAbyss || has_rune("L")) soft_armor = azulaArmor;

if inEndlessAbyss == 1{
    
    if (!hitpause && state_cat != SC_HITSTUN) prevDamage = get_player_damage(player);
    var azula = self;
    var randomPositions = [[448, 384], [1162, 384], [1162, 512], [448, 512], [788, 512], [788, 224]];
    var randomChoose = random_func_2(0, array_length(randomPositions), true);
    
    
    if abyssTimer > 0 abyssTimer -= 1;
    else if !abyssItemSpawned && abyssTimer == 0{
        abyssItemSpawned = true;
        if !instance_exists(abyssItem){
            var randomItem = ["health", "armor"];
            itemType = randomItem[random_func(0, array_length(randomItem), true)];
            instance_create(randomPositions[randomChoose][0], randomPositions[randomChoose][1]-24, "obj_article3");
        }
    }
    
    with oPlayer if (player == 5 || player == 6 || player == 7 || player == 8){
        var withinStage = ((get_stage_data(SD_TOP_BLASTZONE_Y)+100) < y && get_stage_data(SD_BOTTOM_BLASTZONE_Y) > y && get_stage_data(SD_RIGHT_BLASTZONE_X) > x && get_stage_data(SD_LEFT_BLASTZONE_X) < x);
        
        if withinStage{
            azula.abyssItemSpawned = false;
            azula.abyssTimer = 160;
        }
    }
}


if !free{
    side_b_used = false;
    up_b_used = 0;
    wallJumpRefund = true;
}
if (state = PS_WALL_JUMP && wallJumpRefund)
{
    side_b_used = false;
    wallJumpRefund = false;
    up_b_used = 0;
}
if (state == PS_WALL_JUMP && wallJumpRefund) 
{
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    wallJumpRefund = false;
}
//Update.gml
if (up_b_used >= up_b_max)
{
    if (move_cooldown[AT_USPECIAL] < 2)
    {
        move_cooldown[AT_USPECIAL] = 2;
    }
}

if (side_b_used)
{
    if (move_cooldown[AT_FSPECIAL] < 2)
    {
        move_cooldown[AT_FSPECIAL] = 2;
    }
}
var invalidStates = (state == PS_DEAD || state == PS_RESPAWN || attack == 49);
if (plus_ready)
{
    sub_tick ++;
    if (sub_tick >= 12)
    {
        sub_gauge = 1;
        if (sub_tick == 48)
        {
            sub_gauge = 0;
            sub_tick = 0;
        }
    }
    if (special_pressed = true) && (attack_pressed = true) && (plus_ab_use = false) && (!invalidStates) && attack != AT_EXTRA_2
    {
        plus_ready = false;
        sub_tick = 0;
        sub_gauge = 0;
        set_attack(AT_EXTRA_1);
        if comboLevel > 0 && comboTimeout > 0 comboTimeout = 300+(comboLevel*30);
        if has_rune("M") meter -= 20;
        side_b_used = false;
        up_b_used = 0;
        plus_active = true;
        plus_ab_use = true;
        // Ground movement
        walk_speed = 2.75;
        walk_accel = 0.2;
        walk_turn_time = 6;
        initial_dash_time = 7;
        initial_dash_speed = 9;
        dash_speed = 11.5;
        dash_turn_time = 10;
        dash_turn_accel = 1.5;
        dash_stop_time = 4;
        dash_stop_percent = 0.35;
        ground_friction = 0.7;
        moonwalk_accel = 1.3;
        // Air movement
        leave_ground_max = 6;
        max_jump_hsp = 6;
        air_max_speed = 7.5;
        jump_change = 3;
        air_accel = 0.4;
        prat_fall_accel = 0.85;
        air_friction = 0.04;
        max_fall = 10;
        fast_fall = 14;
        gravity_speed = 0.55;
        hitstun_grav = 0.5;
    }
}

if ((meter >= maxMeter) || (has_rune("M") && meter >= maxMeter/2)) && (plus_active = false) 
{
    plus_ready = true;
}

var invalidState = state_cat == SC_HITSTUN || ((state_cat == SC_GROUND_COMMITTED || state_cat == SC_AIR_COMMITTED) && (window_timer > 2 || window > 1));
var endPlus = ((has_rune("M") && (special_pressed = true) && (attack_pressed = true) && !invalidState) && attack != AT_EXTRA_1 && !invalidStates);

if ((meter <= 0) || endPlus) && (plus_active = true)
{
    if ((state = PS_IDLE) || (state = PS_IDLE_AIR)) || endPlus
    {
        set_attack(AT_EXTRA_2);
        sub_gauge = 0;
        if !endPlus meter = 0;
        plus_active = false;
        plus_ready = false;
        plus_ab_use = false;
        // Ground movement
        walk_speed = 2.75;
        walk_accel = 0.2;
        walk_turn_time = 6;
        initial_dash_time = 7;
        initial_dash_speed = 9;
        dash_speed = 8.5;
        dash_turn_time = 10;
        dash_turn_accel = 1.5;
        dash_stop_time = 4;
        dash_stop_percent = 0.35;
        ground_friction = 0.7;
        moonwalk_accel = 1.3;
        // Air movement
        leave_ground_max = 6;
        max_jump_hsp = 6;
        air_max_speed = 5.5;
        jump_change = 3;
        air_accel = 0.4;
        prat_fall_accel = 0.85;
        air_friction = 0.04;
        max_fall = 10;
        fast_fall = 14;
        gravity_speed = 0.55;
        hitstun_grav = 0.5;
    }
}
if (plus_active = true)
{
    meter_tick++;
    if (meter_tick == meter_subtract)
    {
        meter--;
        meter_tick = 0;
    }
    plus_dmg = 2;
    zap_vfx ++;
    if (zap_vfx >= 6)
    {
        instance_create(floor(x),floor(y),"obj_article1");
        zap_vfx = 0;
    }
    set_attack_value(AT_DSPECIAL,AG_SPRITE,sprite_get("z_dspecial_air"));
    if has_rune("I"){
        set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
        set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
    }
}
else{
    set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 10);
    set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 10);
}

if projectEWallJumpBuffer > 0 && free{
    var joyLeft = (left_down);
    var joyRight = (right_down);
    
    projectEWallJumpBuffer -= 1;
    if !joy_pad_idle && state_cat == SC_AIR_NEUTRAL{
        if joyRight && wallSlideDir = -1{
           if has_walljump{
                if spr_dir != 1 spr_dir = 1;
                set_state(PS_WALL_JUMP);
                wallSlide = false;
                projectEWallJumpBuffer = 0;
            } 
        }
        else if joyLeft && wallSlideDir = 1{
            if has_walljump{
                if spr_dir != -1 spr_dir = -1;
                set_state(PS_WALL_JUMP);
                wallSlide = false;
                projectEWallJumpBuffer = 0;
            }
        }
    }
}

if !free wallSlideDir = 0;
if state_cat == SC_AIR_NEUTRAL{

        
        
    var leftcheck = (!joy_pad_idle && left_down);
    var rightcheck = (!joy_pad_idle && right_down);
    
    var maxVSP = 2;
    var checkDist = 2;
    
    for (var c = 0; c < checkDist; c ++){
        var found;
        var Lfound = place_meeting(x-c, y, asset_get("par_block"));
        var Rfound = place_meeting(x+c, y, asset_get("par_block"));
        if (Lfound || Rfound) && free{
            if has_rune("A") if state == PS_WALL_JUMP set_state(PS_IDLE_AIR);
            if leftcheck && Lfound{
                if wallSlideDir != -1{
                    has_walljump = true;
                    wallSlideDir = -1;
                }
                wallSlide = true;
                if has_rune("A"){
                    if vsp > maxVSP vsp = maxVSP;
                    if spr_dir != 1 spr_dir = 1;
                }
            }
            if rightcheck && Rfound{
                if wallSlideDir != 1{
                    has_walljump = true;
                    wallSlideDir = 1;
                }
                wallSlide = true;
                if has_rune("A"){
                    if vsp > maxVSP vsp = maxVSP;
                    if spr_dir != -1 spr_dir = -1;
                }
            }
            if projectEWallJump projectEWallJumpBuffer = 10;
        }
        else wallSlide = false;
    }
}

if has_rune("H"){

    if liveWireICD > 0 liveWireICD -= 1;
    switch (state){
        case PS_AIR_DODGE:
            if air_dodge_dir != 9 && air_dodge_dir != 0 && state_timer == 7 && liveWireICD = 0{
                if !instance_exists(liveWireBox){
                    sound_play(sound_get("Change"), false, noone, 4, 1);
                    create_hitbox(AT_NSPECIAL, 2, liveWirePos[0], liveWirePos[1]);
                    liveWireICD = 100;
                }
            }
        break;
    }
    
    if instance_exists(hit_player_obj){
        if hit_player_obj.hitpause{
            if hit_player_obj.last_attack == AT_NSPECIAL{
                zap_vfx ++;
                if (zap_vfx >= 6){
                    instance_create(hit_player_obj.x,hit_player_obj.y,"obj_article1");
                    zap_vfx = 0;
                }
            }
        }
    }

}

if has_rune("O"){
    
    if globalItemSolver = self{
        with oPlayer if player != other.player && variable_instance_exists(self, "globalItemSolver"){
            if globalItemSolver != other globalItemSolver = other;
            globalItemOut = other.globalItemOut;
        }
    }
    
    itemIndex = floor((nspecialCycleTimer/itemCycleFrequency) mod itemAmount);
    
    var azulaID = self;
    var azulaX = x + (16*spr_dir)
    var azulaY = y - 24;
    var closItem = noone;
    var closDist = 100000;
    
    for (var e = 0; e < array_length(globalItemOut); e++){
        if instance_exists(globalItemOut[e]){
            if globalItemOut[e].itemState != 0{
                var itemDist = point_distance(azulaX, azulaY, globalItemOut[e].x, globalItemOut[e].y);
                if itemDist < closDist{
                    closDist = itemDist;
                    closItem = globalItemOut[e];
                }
            }
        }
    }
    
    closestItem = closItem;
    closestDistance = closDist;
    
    var itemHeld = false;
    var itemInvalidState = (state == PS_AIR_DODGE || state == PS_PARRY_START || state == PS_PARRY || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_DEAD || state == PS_RESPAWN || state_cat == SC_HITSTUN);
    for (var h = 0; h < array_length(ownItemOut); h++){
        if instance_exists(ownItemOut[h]){
            if ownItemOut[h].itemState == 0 itemHeld = true;
        }
    }
    
    if closestDistance < itemPickupDist && !itemHeld && !itemInvalidState{
        if attack_pressed && joy_pad_idle{
            attack_end();
            sound_play(sound_get("item_pickup"), false, noone, 1, 1);
            clear_button_buffer(PC_ATTACK_PRESSED);
            with closestItem{
                player_id = azulaID;
                player = azulaID.player;
                itemState = 0;
                player_id.attack = AT_NSPECIAL;
                player_id.window = 3;
                player_id.window_timer = 5;
            }
        }
    }
}

if attack == AT_DSPECIAL_2{
    if free{
        set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, (state_timer/1.5));
    }
    else if airDstrongTimer < 100 && !hitpause{
        if airDstrongTimer == 0{
            shake_camera(5, 10);
            sound_play(sound_get("IonExplosion"), false, noone, 1, 0.9);
        }
        airDstrongTimer += 1;
    }
}

// Combo stuff
if has_rune("L"){

    var maximumImages = 10;
    var imageInterval = 1;
    var imageLifetime = 4;
    var arrayPush = [sprite_index, image_index, x, y, spr_dir];
    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_DSPECIAL_2 && attack != 49) arrayPush = [hurtboxID.sprite_index, hurtboxID.image_index, x, y, spr_dir];

    if instance_exists(hit_player_obj) if comboLevel > 0{
        if hit_player_obj.state == PS_DEAD || hit_player_obj.state == PS_RESPAWN || hit_player_obj.was_parried{
            if comboTimeout > 0 comboTimeout = 300+(comboLevel*30);
        }
    }
    if comboTimeout > comboTimeoutAmount{
        if extendedEffect == false{
            levelupEffectTimer = 30;
            sound_play(asset_get("sfx_zetter_shine_charged"), false, noone, 2, 0.9);
            extendedEffect = true;
        }
    }
    else{
        extendedEffect = false;
    }
    comboLevel = clamp(floor(((comboCount)/10)), 0, 5);
    if comboPulseXY[0] > 0 comboPulseXY[0] -= 2;
    else if comboPulseXY[0] < 0 comboPulseXY[0] += 2;
    if comboPulseXY[1] > 0 comboPulseXY[1] -= 2;
    else if comboPulseXY[1] < 0 comboPulseXY[1] += 2;
    if comboTimeout > 0 comboTimeout -= 1;
    else comboCount = 0;
    
    if levelupEffectTimer > 0 levelupEffectTimer -= 1;
    
    if afterImageTimer > imageInterval{
        afterImageTimer = 0;
        
        if array_length(afterImageArray) < maximumImages{
            if comboLevel >= 1{
                
               array_push(afterImageArray, arrayPush);
               array_push(afterImageArrayTimer, imageLifetime); 
                
            }       
        }
        
        for (var a = 0; a < array_length(afterImageArray); a++){
            if afterImageArrayTimer[a] > 0 afterImageArrayTimer[a] -= 1;
            else{
                
                var tempArray = [];
                var tempArray2 = [];
                
                for(var m = 0; m < array_length(afterImageArray); m++){
                    if afterImageArray[m] != afterImageArray[a]{
                        array_push(tempArray, afterImageArray[m]);
                        array_push(tempArray2, afterImageArrayTimer[m]);
                    }
                }
                
                afterImageArray = tempArray;
                afterImageArrayTimer = tempArray2;
                
            }
        }
    }
    else afterImageTimer += 1;
    
    // Combo buffs
    
    var incrementWindow = (window == get_attack_value(attack, AG_NUM_WINDOWS) && !hitpause);      // decreases Endlag of attacks
    if incrementWindow window_timer += (comboLevel/2);
    
    // Cheats
    
    //comboCount += 7; // Constantly increase the combo count
    //comboTimeout = 100; // turn off combo time lockout

}
