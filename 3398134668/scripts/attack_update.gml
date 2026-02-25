// attack_update is a script called when you're doing an attack. It runs for every in-game frame.
//B - Reversals

// final smash stuff

if attack == 49{
    switch (window){
        case 1:
            if window_timer == 2 && !hitpause{
                
                sound_play(sound_get("Explosion2"), false, noone, 1.1, 1.4);
                spawn_hit_fx(x-(30*spr_dir), y-(char_height), elec_vfx);
                
            }
            if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-2 && !joy_pad_idle{
                
                if left_down && spr_dir == 1 spr_dir = -1;
                if right_down && spr_dir == -1 spr_dir = 1;
                
            }
        break;
        case 5:
        break;
    }
    
    if plus_active{
        
        set_hitbox_value(49, 8, HG_DAMAGE, 22);
        set_hitbox_value(49, 8, HG_BASE_KNOCKBACK, 11);
        set_hitbox_value(49, 8, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(49, 8, HG_SHAPE, 1);
        set_hitbox_value(49, 8, HG_HITBOX_X, 244);
        set_hitbox_value(49, 8, HG_HITBOX_Y, -44);
        set_hitbox_value(49, 8, HG_WIDTH, 492);
        set_hitbox_value(49, 8, HG_HEIGHT, 70);
        set_hitbox_value(49, 8, HG_BASE_HITPAUSE, 14);
        set_hitbox_value(49, 8, HG_HITPAUSE_SCALING, 0.9);
        
    }
    else{
        
        set_hitbox_value(49, 8, HG_DAMAGE, 17);
        set_hitbox_value(49, 8, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(49, 8, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(49, 8, HG_SHAPE, 0);
        set_hitbox_value(49, 8, HG_HITBOX_X, 60);
        set_hitbox_value(49, 8, HG_HITBOX_Y, -45);
        set_hitbox_value(49, 8, HG_WIDTH, 150);
        set_hitbox_value(49, 8, HG_HEIGHT, 70);
        set_hitbox_value(49, 8, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(49, 8, HG_HITPAUSE_SCALING, 0.8);
        
    }
    
    var maxSpeed = 12;
    var speedIncrease = clamp(floor(state_timer/30), 0, maxSpeed);
    
    if array_length(ultimateTarget) > 0{
        
        if window == 5{
            
            var loops = clamp(ultimateLoops + (plus_active*2) + comboLevel, 0, ultimateMaxLoops);
            
            var dashFrame = ((window_timer == 15 - maxSpeed || window_timer == 32 - maxSpeed || window_timer == 49 - maxSpeed || window_timer == 66 - maxSpeed || window_timer == 83 - maxSpeed || window_timer == 98 - maxSpeed) && !hitpause);
            var hitboxFrame = ((window_timer == 18 || window_timer == 35 || window_timer == 52 || window_timer == 69 || window_timer == 86) && !hitpause);
            
            if dashFrame{
                
                sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.6, clamp(1 + (state_timer/800), 0, 1.8));
                window_timer += speedIncrease;
                
            }
            
            if hitboxFrame{
                sound_play(sound_get("ElectricHit"), false, noone, 1, clamp(1 + (state_timer/600), 0, 1.8));
                shake_camera(4, 3 + speedIncrease);
                vfxTimer = 6;
            }

            fall_through = true;
            
        }
        
        down_down = false;
        up_down = false;
        left_down = false;
        right_down = false;
        can_fast_fall = false;
        
        if window < 7{
            if ultimateDarkness < 0.5 ultimateDarkness += 0.002;
        }
        else if ultimateDarkness > 0{
            ultimateDarkness -= 0.05;
        }
        
        if hitpause{
            if window == 5 && window_timer > 10{
        
                var movementInfluence = 22 + (speedIncrease*2);
                var angle = get_hitbox_value(attack, hit_player_obj.last_hbox_num, HG_ANGLE);
                if spr_dir = -1 angle = 180 - get_hitbox_value(attack, hit_player_obj.last_hbox_num, HG_ANGLE);
                
                var invalidMove = ((x+(lengthdir_x(movementInfluence, angle)*12)) <= get_stage_data(SD_LEFT_BLASTZONE_X) || (x+(lengthdir_x(movementInfluence, angle)*12)) >= get_stage_data(SD_RIGHT_BLASTZONE_X) || (y+(lengthdir_y(movementInfluence, angle)*12)) >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) || (y+(lengthdir_y(movementInfluence, angle)*12)) <= get_stage_data(SD_TOP_BLASTZONE_Y));
                
                if !invalidMove{
                    old_hsp = lengthdir_x(movementInfluence, angle);
                    old_vsp = lengthdir_y(movementInfluence, angle);
                }
            }
        }
        else{
            hsp = hsp*0.9;
            vsp = vsp*0.9;
        }
    }
    
    
    if window < 7 for (var t = 0; t < array_length(ultimateTarget); t++){
        if instance_exists(ultimateTarget[t]){
            ultimateTarget[t].x = x+(50*spr_dir);
            ultimateTarget[t].y = y;
            if ultimateTarget[t].hitstop <= 2 ultimateTarget[t].hitstop = 5;
        }
    }
    
    if window > 4 && ((window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) || (ultimateLoop > 0 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 14)){
        
        if window == 6{
            sound_play(sound_get("Electric"), false, noone, 1, 1 - (plus_active/10));
        }
        
        window += 1;
        if ultimateLoop > 0{
            window = 5;
            ultimateLoop -= 1;
            attack_end(49);
        }
        window_timer = 0;
    }
}
else{
    ultimateDarkness = 0;
}

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_NSPECIAL)
{
    move_cooldown[AT_NSPECIAL] = 60;
}
if (attack == AT_DSPECIAL)
{
    can_fast_fall = false;
    clear_button_buffer(PC_SPECIAL_PRESSED);
    if (window >= 2) && (!was_parried)
        {
            can_jump = true;
        }
}
if (attack == AT_USPECIAL) && (free)///Free means in the air
{
    if window == 2 && window_timer == 1 && !hitpause{
        up_b_used += 1;
    }
    can_wall_jump = true;
     if (window == 1)
     {
         vsp = -1;
     }
    if (window == 4)
     {
       move_cooldown[AT_USPECIAL] = 1;
     }
}
if (attack == AT_FSPECIAL) && (free)///Free means in the air
{
    side_b_used = true;
    can_wall_jump = true;
    if (window == 4)
    {
        move_cooldown[AT_FSPECIAL] = 1;
    }
}
if (attack == AT_FSPECIAL) && (window >= 2) && (!free)
{
   if (!was_parried)
   {
    set_state(PS_LANDING_LAG);
   }
}
if (attack == AT_FSPECIAL) && (window <= 3) && (window >= 1)
{
    timer_vfx++;
    if (timer_vfx == 4)
    {
        with (spawn_hit_fx(x-10,y-120,zigzap_vfx))
        {
            image_yscale = 1;
        }
        with (spawn_hit_fx(x-10,y+20,zigzap_vfx))
        {
            image_yscale = -1;
        }
        timer_vfx = 0;
    }
}
if (attack == AT_EXTRA_1) || (attack == AT_EXTRA_2)
{
    if (window == 2) && (window_timer = 2) && (attack == AT_EXTRA_1)
    {
        spawn_hit_fx(x,y,plus_wave_vfx);
        with (spawn_hit_fx(x,y,plus_wave_vfx))
            {
                image_yscale = -1;
            }
        shake_camera(30,26);
    }
    hsp = 0;
    vsp = 0;
}
if (meter >= maxMeter){
    plus_dmg = 2;
}


var strongCost = 12;
var normalCost = 8;

switch (attack){
    case AT_DAIR:///
    
        if has_rune("B"){
            if has_hit{
                if jump_down{
                    can_djump = true;
                    djumps -= 1;
                    can_jump = true;
                    jump_pressed = true;
                }
            }
        }
        
    break; ///
    
    case AT_DSPECIAL: ///
        if !hitpause incrementDspecial += 1;
        
        if has_rune("D"){
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
            
            var holdwindow = (window == 2 && (window_timer == 5 || window_timer == 6));
            if window == 2 if !instance_exists(reflectarticle) instance_create(x, y, "obj_article2");
            var vspAmount = 2;
            
            if holdwindow && special_down{
                window_timer = 5;
                if free vsp = clamp(vsp, -100, vspAmount+(state_timer/10));
                hsp = 0;
                zap_vfx ++;
                
                if (zap_vfx >= 6){
                    instance_create(x,y,"obj_article1");
                    zap_vfx = 0;
                }
            }
        }
        else{
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
        }
        
    break; ///
    
    case AT_NSPECIAL: ///
        if has_rune("O"){
            
            if window == 1 && (window_timer >= 13){
                
                if special_down{
                    window_timer = 13;
                    nspecialCycleTimer += 1;
                    if nspecialCycleTimer mod itemCycleFrequency == 0{
                        var pitch = (nspecialCycleTimer/itemCycleFrequency) mod itemAmount;
                        sound_play(asset_get("mfx_hover"), false, noone, 1, 1+(pitch/10));
                    }
                }
                
                else if itemIndex != 5 && nspecialCycleTimer > 0{
                    window = 3;
                    window_timer = 0;
                    switch itemIndex{
                        case 0:
                            itemType = "rainbowball"
                        break;
                        case 1:
                            itemType = "ionball"
                        break;
                        case 2:
                            itemType = "bowlingball"
                        break;
                        case 3:
                            itemType = "soda"
                        break;
                        case 4:
                            itemType = "snowball"
                        break;
                        default:
                            itemType = "default"
                        break;
                    }
                    var spawnItem = true;
                    if instance_exists(ownItemOut[itemIndex]){
                        spawnItem = false;
                    }
                    
                    if spawnItem{
                        sound_play(sound_get("item_pickup"), false, noone, 1, 1);
                        instance_create(floor(x), floor(y-40), "obj_article3");
                    }
                }
            }
        }
    
    break; ///
    
    case AT_FSTRONG: ///
    
        if (window == 2) && (plus_active)
        {
            if !free{
                create_hitbox(AT_FSTRONG,2,x,y);
                if !has_rune("J") meter -= strongCost;
                else meter -= clamp(meter/3, 1, strongCost);
            }
            
        }
        
        // G Rune behaviour
        var valid = ((window == 4 && window_timer < 14) || (window == 1 && window_timer > 4) || window == 2 || window == 3);
    
        if free{
            if valid{
                
                can_fast_fall = false;
                attack_down = false;
                strong_down = false;
                hsp = 0;
                vsp = 0; 
                
            }
            
            if window == 2 && window_timer == (get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)) && !hitpause{
                shake_camera(5, 10);
            }
        }
        
    break; ///
    
    case AT_DSTRONG: ///
    
        if (window == 2) && (plus_active)
        {
            create_hitbox(AT_DSTRONG,3,x,y);
            create_hitbox(AT_DSTRONG,4,x,y);
            if !has_rune("J") meter -= strongCost;
            else meter -= clamp(meter/3, 1, strongCost);
        }
        
    break; ///
    
    case AT_USTRONG: ///
    
        if (window == 2) && (plus_active)
        {
            create_hitbox(AT_USTRONG,2,x,y);
            sound_play(sound_get("Electric"),false);
            if !has_rune("J") meter -= strongCost;
            else meter -= clamp(meter/3, 1, strongCost);
        }
        
    break; ///
    
    case AT_BAIR: ///
    
        if has_rune ("I") && (window == 1) && (plus_active) && window_timer = get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) && !hitpause
        {
            sound_play(sound_get("Electric"),false);
            if !has_rune("J") meter -= normalCost;
            else meter -= clamp(meter/3, 1, normalCost);
        }
        
    break; ///
    
    case AT_TAUNT: ///

    break; ///
    
    case AT_DSPECIAL_2: ///
    
        can_fast_fall = false;
        
        if free{
            zap_vfx ++;
            if (zap_vfx >= 2){
                instance_create(floor(x),floor(y),"obj_article1");
                zap_vfx = 0;
            }
        }
        
        if window < 3 && has_hit_player{
            if instance_exists(hit_player_obj){
                var vertDist = 30;
                
                hit_player_obj.hitstop = 3;
                hit_player_obj.super_armor = false;
                hit_player_obj.x=x;
                hit_player_obj.y=(y+40);
                
                for (var p = 0; p < vertDist; p++){
                    var plat = (place_meeting(x, y+p, asset_get("par_jumpthrough")));
                    var _solid = (place_meeting(x, y+p, asset_get("par_solid")));
                    if plat || _solid{
                        hit_player_obj.y=(y-(vertDist-p));
                        break;
                    }
                }
            }
        }
        
    break; ///
    
    case AT_FSPECIAL: ///
    
        if has_rune("N"){
            
            var notchAmount = 22.5;
            var fspecialAngle = 0;
            var fspecialHspeed = 18;
            if !joy_pad_idle fspecialAngle = round(joy_dir / notchAmount) * notchAmount;
            if spr_dir == -1 fspecialAngle = 180 - fspecialAngle;
            
            if window == 1 || window == 2{
               if fspecialAngle != 0{
                   set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, lengthdir_x(fspecialHspeed, fspecialAngle));
                   set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, lengthdir_y(fspecialHspeed, fspecialAngle));
                   set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, fspecialAngle+(45/(fspecialAngle/10)));
               }
               else{
                   set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, fspecialHspeed);
                   set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -2);
                   set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
               }
                
            }
            else{
                if window == 3 && window_timer == 1 && !hitpause{
                    if sign(hsp) != spr_dir spr_dir = -spr_dir;
                }
                
            }
            
        }
        
    break; ///
}


if has_rune("F"){
    if window_timer < 2 && window == 1 && attack == AT_DATTACK && !hitpause{
        if jump_pressed{
            doAerialDattack = true;
        }
    }
    if doAerialDattack = true && window_timer == (get_window_value(attack, 1, AG_WINDOW_LENGTH)-1) && window == 1{
        if jump_down = true vsp = -jump_speed;
        else vsp = -short_hop_speed;
        doAerialDattack = false;
    }
}

