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
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_EXTRA_3
|| attack == AT_NSPECIAL_2 || attack == AT_DSPECIAL_2){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL || attack == AT_FSPECIAL){
    can_fast_fall = false;
    can_move = false
}

if (attack == AT_EXTRA_2){
    can_fast_fall = false;
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

if (attack == AT_TAUNT){
    if (window == 1)
    swordfloat = 0
}

if (attack == AT_TAUNT){
    if (window == 3 && window_timer == 9)
    swordfloat = 1
}


if(attack == AT_DTILT){
    move_cooldown[AT_JAB] = 10;
}

//Dspecial stuff
if (attack == AT_DSPECIAL)
{
    if (right_down) { spr_dir = 1 }
    if (left_down) { spr_dir = -1 }
    
    if (window == 2 && shield_pressed)
    {
        //set_state( PS_IDLE_AIR );
        move_cooldown[AT_DSPECIAL] = 30;
        window = 3;
        window_timer = 0;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }
    
    if (window == 2 && attack_pressed)
    {
        switch hud_option
        {
            case 0:
                if (powerpoints < 24)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                     window = 3;
                    window_timer = 0;
                    clear_button_buffer( PC_SHIELD_PRESSED );
                    sound_play(asset_get("mfx_coin"));
                    stored_spell = true;
                }
            break;
            
            case 1:
                if (powerpoints < 12)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                     window = 3;
                    window_timer = 0;
                    clear_button_buffer( PC_SHIELD_PRESSED );
                    sound_play(asset_get("mfx_coin"));
                    stored_spell = true;
                }
            break;
        
            case 2:
                if (powerpoints < 12)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                   }
                }
                else {
                     window = 3;
                    window_timer = 0;
                    clear_button_buffer( PC_SHIELD_PRESSED );
                    sound_play(asset_get("mfx_coin"));
                    stored_spell = true;
                }
            break;
        
            case 3:
                if (powerpoints < 18)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                     window = 3;
                    window_timer = 0;
                    clear_button_buffer( PC_SHIELD_PRESSED );
                    sound_play(asset_get("mfx_coin"));
                    stored_spell = true;
                }
            break;
            
            case 4:
                if (powerpoints < 18)
                {
                    if (dspecial_sfx == 0)
                    {
                        sound_play(asset_get("sfx_shop_invalid"))
                        dspecial_sfx = 10
                    }
                }
                else
                {
                  window = 3;
                    window_timer = 0;
                    clear_button_buffer( PC_SHIELD_PRESSED );
                    sound_play(asset_get("mfx_coin"));
                    stored_spell = true;
                }
            break;          
            }
    }

    if (window == 2 && special_pressed)
    {
        switch hud_option
        {
            case 0:
                if (powerpoints < 24 || free)
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
                if (powerpoints < 12)
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
                if (powerpoints < 12)
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
                if (powerpoints < 18)
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
                if (powerpoints < 18)
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


if (attack == AT_DSPECIAL)
    if (window == 2 && special_pressed == false){
    can_jump = true;
    tap_jump_pressed = false;
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

if (attack == AT_EXTRA_1){//fire
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 12
}
}

if (attack == AT_EXTRA_2){//dark
if (window == 4 && window_timer == 1 && !hitpause){
powerpoints -= 24
}
}

if (attack == AT_EXTRA_3){//shock
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 12
}
}

if (attack == AT_NSPECIAL_2){//crystal
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 18
}
}

if (attack == AT_DSPECIAL_2){//water
if (window == 1 && window_timer == 1 && !hitpause){
powerpoints -= 18
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && special_pressed)
move_cooldown[AT_USPECIAL] = 2;
}

var lastname = true;
with(oPlayer){
    if(get_player_name(player) == "TOPAZ"){
        lastname = false;
    }
}

if(released && window == 1 && !hitpause && lastname){
    sound_play(sound_get("sfx_swing_l"));
    released = false;
}

// if (attack == AT_EXTRA_2){
//     if (free){
//         window = 4;
//     }
// }

if (attack == AT_DSPECIAL_2){
    can_move = false;
    hsp *= .7;
    vsp *= .7;
    if (window == 2){
        super_armor = true
        damage_scaling = 0
    }
    if (window == 3){
        super_armor = false
        damage_scaling = 1
    }
    if (window == 3 && window_timer == 8)
        set_state( PS_IDLE )
}

if (attack == AT_EXTRA_2){
    // if (window == 4 && window_timer == 5)
    //     super_armor = true
    // if (window == 4 && window_timer == 20)
    //     super_armor = false
}


if (attack == AT_DSPECIAL_2 && !hitpause){
    if window == 1 && window_timer == get_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH)
        sound_play( sound_get( "counterstart" ) );
}


//Uspecial
if (attack == AT_USPECIAL){
    if (window == 4)
        if (down_pressed){
            set_state( PS_PRATFALL )
        }
    
        if(window == 4){
            if(vsp > 4){
        vsp = 4;
    }
            can_move = false;
            can_fast_fall = true;
            can_wall_jump = true
        if(right_down){
            hsp += .35;
    }
        if(left_down){
            hsp -= .35;
    }
    if(abs(hsp) > air_max_speed + 1){
        hsp = (air_max_speed + 1) * hsp/abs(hsp);
    }
    
    if(spr_dir == 1 && hsp < -3.5){
        hsp = -3.5;
    }
    if(spr_dir == -1 && hsp > 3.5){
        hsp = 3.5;
    }
            
        if (state_timer == 33)
            vsp = vsp
    }   
}

if(attack == AT_NAIR){
    if(has_hit_player){
        set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
        set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 0);
    } else {
        set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
    }
}

//Spin Attack
if (attack == AT_DSTRONG){
    
    if(window == 1 && window_timer == 1){
        shield_hbox = create_hitbox(AT_DSTRONG, 8, x, y);
        shield_hbox.x_pos = 12 * spr_dir;
        shield_hbox.y_pos = -22;
    }
    
    if(window == 2 && window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH)){
        destroy_hitboxes();
    }
    
    if(!was_parried){
        if (window == 3)
            if(right_down){
                hsp = 2 * (1 + strong_charge/50);
            }
        if (window == 3)
            if(left_down){
                hsp = -2 * (1 + strong_charge/50);
            }
        if (window == 4)
            if(right_down){
                hsp = 2 * (1 + strong_charge/50);
            }
        if (window == 4)
            if(left_down){
                hsp = -2 * (1 + strong_charge/50);
            }
        if (window == 5)
            if(right_down){
                hsp = 2 * (1 + strong_charge/50);
            }
        if (window == 5)
            if(left_down){
                hsp = -2 * (1 + strong_charge/50);
            }
    } else {
        hsp = 0;
    }
if (window == 6)
    hsp = 0
    }
    
if(attack == AT_FSTRONG){
    if(window == 1 && window_timer == 1){
        shield_hbox = create_hitbox(AT_DSTRONG, 8, x, y);
        shield_hbox.x_pos = 4 * spr_dir;
        shield_hbox.y_pos = -30;
    }
    
    if(window == 2 && window_timer == get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)){
        destroy_hitboxes();
    }
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

if (attack == AT_FSPECIAL)
{
    // if(!has_hit){
    //     set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3)
    //     set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    //     set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
    // } else {
    //     reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS)
    //     reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE);
    //     reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX);
    // }
    
    fspecial_cooldown = 30;
    if(free){
        aerial_fspecial = true;
    }
    if(has_hit || !free){
        set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
    } else {
        set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 7);
    }
    
    if(free){
        set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 60);
        set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .85);
    } else {
        reset_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE);
        reset_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING);
    }
    
    var blastzone_check = (x < get_stage_data(SD_LEFT_BLASTZONE_X) + 120 && spr_dir == -1) || (x > get_stage_data(SD_RIGHT_BLASTZONE_X) - 120 && spr_dir == 1);
    
    if(window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
        hurtboxID.sprite_index = sprite_get("fspecial_hurt_large");
        if(!free && !position_meeting(x + 50 * spr_dir, y + 2, asset_get("par_block")) && !position_meeting(x + 50 * spr_dir, y + 2, asset_get("par_jumpthrough"))){
            x -= 50 * spr_dir;
        }
        if(free && place_meeting(x + 50 * spr_dir, y, asset_get("par_block"))){
            x -= 50 * spr_dir;
        }
    }
    
    if(window < 8){
        if(window > 1){
            hsp = (5 + has_rune("H") * 1) * spr_dir;
        }
        if(!free && !position_meeting(x + 50 * spr_dir, y + 2, asset_get("par_block")) && !position_meeting(x + 50 * spr_dir, y + 2, asset_get("par_jumpthrough"))){
            hsp = 0;
        }
        if(free && blastzone_check){
            hsp = 0;
        }
        if(free && place_meeting(x + 50 * spr_dir, y, asset_get("par_block"))){
            hsp = 0;
        }
        if(was_parried){
            hsp = 0;
        }
    }
    
    if(window == 8 && window_timer == get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH) && !hitpause){
        hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
        x += 50 * spr_dir;
    }
    
    if(window == 11){
        can_wall_jump = true
    }
    // create afterimage
       if (get_gameplay_time()%5==1 && (window != 8 || (window == 8 && window_timer != get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH))))
        afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
 }
 
if(attack == 49){
    hsp = 0;
    vsp = 0;
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = false;
    if(has_hit){
        reset_attack_value(49, AG_NUM_WINDOWS);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 5);
    } else {
        set_attack_value(49, AG_NUM_WINDOWS, 4);
        reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO);
    }
    if(window == 1 && window_timer == 1 && !hitpause){
        with(oPlayer){
            if(self != other){
                hitpause = true;
                hitstop = 30;
                hitstop_full = 30;
            }
        }
    }
    if (get_gameplay_time()%3==1)
        afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
}

if(attack == AT_NTHROW && taunt_down && window_timer == 4){
    window_timer--;
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