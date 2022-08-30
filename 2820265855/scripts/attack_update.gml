// ==================== GRAFFITI ATTACK_UPDATE  ======================
if attack == AT_TAUNT_2 {
    if window == graffiti_window && window_timer == graffiti_window_timer {
        // destroy old graffiti
        if instance_exists(graffiti_id) {
            instance_destroy(graffiti_id);
        }
        // create new graffiti
        graffiti_tagging = true; // must be set true before spawning
        graffiti_id = instance_create(x, y, "obj_article3");
        graffiti_tagging = false; // must be set false after spawning
    }
}
// ===================================================================

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
}

//charge sounds
if (attack == AT_FSTRONG && strong_charge == 2 && window == 1){ sound_play(sound_get("attack1")); }

if (attack == AT_USTRONG && strong_charge == 2 && window == 1){ sound_play(sound_get("attack1")); }

if (attack == AT_DSTRONG && strong_charge == 2 && window == 1){ sound_play(sound_get("attack1")); }

//Keeps the combo sound looping
    if (combo >= 4){
        combo = 0;
    }

if (has_hit_player == false){
combo = 0
}

//the sword stops following when using certain attacks
if (attack == AT_JAB){
    if (window == 7)
    swordfloat = 0
}
if (attack == AT_JAB){
    if (window == 9 && window_timer == 9)
    swordfloat = 1
}

if (attack == AT_FSTRONG){
    if (window == 1)
    swordfloat = 0
}

if (attack == AT_FSTRONG){
    if (window == 4)
    swordfloat = 0
}

if (attack == AT_FSTRONG){
    if (window == 6)
    swordfloat = 0
}

if (attack == AT_FSTRONG){
    if (window == 8)
    swordfloat = 0
}

if (attack == AT_DSTRONG){
    if (window == 1)
    swordfloat = 0
}

if (attack == AT_UTILT){
    if (window == 1)
    swordfloat = 0
}

//Dspecial stuff
if (attack == AT_DSPECIAL){
    if(right_down){spr_dir = 1}
        if(left_down){spr_dir = -1}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && shield_pressed) {
        //set_state( PS_IDLE_AIR );
        window = 3;
        window_timer = 0;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }

//Dspecial stuff
if (attack == AT_DSPECIAL)
{
    if (right_down) { spr_dir = 1 }
    if (left_down) { spr_dir = -1 }
    
    if (window == 2 && shield_pressed)
    {
        //set_state( PS_IDLE_AIR );
        window = 3;
        window_timer = 0;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }

    if (window == 2 && special_pressed)
    {
        switch hud_option
        {
            case 0:
                if (powerpoints <= 15)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                    set_attack(AT_EXTRA_2);//dark
                }
            break;
            
            case 1:
                if (powerpoints <= 11)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                  set_attack(AT_EXTRA_1);//fire
                }
            break;
        
            case 2:
                if (powerpoints <= 7)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                   }
                }
                else {
                    set_attack(AT_EXTRA_3);//bolt
                }
            break;
        
            case 3:
                if (powerpoints <= 23)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                    set_attack(AT_NSPECIAL_2);//earth
                }
            break;
            
            case 4:
                if (powerpoints <= 5)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                  set_attack(AT_DSPECIAL_2);//water
                }
            break;          
            }
        }
    }
}

if (attack == AT_DSPECIAL)
    if (window == 2 && special_pressed == false){
    can_shield = true;
    can_jump = false;
        if (up_pressed == true){
       hud_option--;
        sound_play( asset_get( "mfx_move_cursor" ) );
    }
    if (down_pressed == true){
        hud_option++;
        sound_play( asset_get( "mfx_move_cursor" ) );
       }
    if (hud_option >= 5){
        hud_option = 0;
    }
    if (hud_option <= -1){
        hud_option = 4;
    }
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 12
}
}

if (attack == AT_EXTRA_1){
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 12
}
}

if (attack == AT_EXTRA_2){
if (window == 4 && window_timer == 1 && !hitpause){
powerpoints -= 16
}
}

if (attack == AT_EXTRA_3){
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 8
}
}

if (attack == AT_NSPECIAL_2){
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 24
}
}

if (attack == AT_DSPECIAL_2){
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 6
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && special_pressed)
move_cooldown[AT_USPECIAL] = 2;
}

if (attack == AT_EXTRA_2){
    if (free){
        window = 4;
    }
}

if (attack == AT_DSPECIAL_2){
    if (window == 2)
        super_armor = true
        damage_scaling = 0
    if (window == 3)
        super_armor = false
        damage_scaling = 1
    if (window == 3 && window_timer == 8)
        set_state( PS_IDLE )
}


if (attack == AT_DSPECIAL_2){
    if window == 2 && window_timer == 12
        sound_play( sound_get( "counterstart" ) );
}


//Uspecial
if (attack == AT_USPECIAL){
    if (window == 4)
        if (down_pressed)
    set_state( PS_PRATFALL )
        if(window == 4){
            if(vsp > 4){
        vsp = 4;
    }
            can_move = false;
            can_fast_fall = true;
            can_wall_jump = true
        if(right_down){
            hsp += .4;
    }
        if(left_down){
            hsp -= .4;
    }
    if(abs(hsp) > air_max_speed){
        hsp = air_max_speed * hsp/abs(hsp);

            }
        if (state_timer == 33)
   vsp = -3
        }   
    }

//Spin Attack
if (attack == AT_DSTRONG){
    if (window == 2)
        if(right_down){
            hsp = 1.5;
        }
    if (window == 2)
        if(left_down){
            hsp = -1.5;
        }
    if (window == 3)
        if(right_down){
            hsp = 1.5;
        }
    if (window == 3)
        if(left_down){
            hsp = -1.5;
        }
    if (window == 4)
        if(right_down){
            hsp = 1.5;
        }
    if (window == 4)
        if(left_down){
            hsp = -1.5;
        }
if (window == 5)
    hsp = 0
    }


//crystal
if(attack == AT_NSPECIAL_2){
    if (window == 2 && window_timer == 1 && !hitpause){
        var ground = floor(range_finder(x + 64*spr_dir,y,270,room_height,asset_get( "par_block" ),true,false));        
        if (ground != -1)
            create_hitbox( AT_NSPECIAL_2, 1, x + 64*spr_dir, y + ground -32 );
    }
}

//runes
if has_rune("L"){
    if (attack == AT_FSTRONG){
        super_armor = true
    }
}

if has_rune("L"){
    if (attack == AT_USTRONG){
        super_armor = true
    }
}

if has_rune("L"){
    if (attack == AT_DSTRONG){
        super_armor = true
    }
}


#define range_finder(ox,oy,dir,range,object,prec,notme)
//
//  Returns the exact distance to the nearest instance of an object in a
//  given direction from a given point, or noone if no instance is found.
//  The solution is found in log2(range) collision checks.
//
//      x,y         position in room, real
//      dir         direction to look in degrees, real
//      range       the greatest distance to look in pixels, real
//      object      which objects to look for (or all), real
//      prec        true to use precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
{
    var dx,dy,sx,sy,distance;
    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
        distance = -1;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        distance = point_distance(ox,oy,dx,dy);
    }
    return distance;
}