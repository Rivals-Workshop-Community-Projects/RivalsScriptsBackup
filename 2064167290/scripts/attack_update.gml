// attack_update


//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    
    trigger_b_reverse();
}

// no fast fall please it's weird
if (attack == AT_DAIR) or (attack == AT_DSPECIAL) or (attack == AT_DSPECIAL_2) or (attack == AT_DTHROW) or (attack == AT_USPECIAL_GROUND) or (attack == AT_USPECIAL) or (attack == AT_DSPECIAL) or (attack == AT_FSPECIAL)
{
    can_fast_fall = false;
}



if ( attack == AT_USTRONG) 
{
    /*
    ustrong_pale = true;
    pale_timer = 0;
     pale_dir = spr_dir;
    
    */
    
    if (window == 1)
    {
        if (runeN) and (shield_down)
        {
            set_state(PS_CROUCH);
            clear_button_buffer( PC_SHIELD_PRESSED );
        }
    }
    
    
    if (window == 2) and (window_timer == 8) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        pale_x = x + 7 * spr_dir;
        pale_y = y;
       
        with (obj_article2)
        {
            if (player_id == other)
            {
                if (spr_dir == player_id.spr_dir)
                {
                    spawn_hit_fx( x, y,leaving_effect);
                }
                else
                {
                    spawn_hit_fx( x, y,leaving_effect_mirror);
                }
                
                
                player_id.timer_before_swipe = 14;
        
                instance_destroy(self);
            }
        }
        
        var inst = instance_create(x + 7 *spr_dir,y,"obj_article2");
        inst.sprite_index = sprite_get("ustrong_pale_entrance");
        
    }
}

// Dtilt
if (attack == AT_DTILT) and ( window == 3) and ( window_timer == 13) and (!was_parried) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    set_state(PS_CROUCH);
    state_timer = 10;
    hurtboxID.sprite_index = asset_get("ex_guy_crouch_box");
}

 if(attack == AT_DTILT || attack == AT_UTILT)
{
            //turnaround
        if(window == 1 && window_timer == 1){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
            }
        }
}




// DATTACK
if (attack == AT_DATTACK) and ( window == 4) and ( window_timer == 3) and(!was_parried) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    set_state(PS_CROUCH);
    state_timer = 10;
    hurtboxID.sprite_index = asset_get("ex_guy_crouch_box");
}



// DAIR BOUNCE
if (attack == AT_DAIR)
{
    if (!was_parried)
    {
        if (window == 3 && window_timer >= 12) or (window == 4)
        {
			can_jump = true
			can_shield = true
        }
        if (attack == AT_DAIR) and (window < 4)
        {
            set_attack_value( AT_DAIR, AG_HAS_LANDING_LAG, 0 );
            var bounce_needed = true;
        }
        else
        {
            set_attack_value( AT_DAIR, AG_HAS_LANDING_LAG, 1 );
            var bounce_needed = false;
        }
        
        if (attack == AT_DAIR) and ( !free ) and (bounce_needed) 
        {
             set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 18)
            destroy_hitboxes()
            attack_end();
            set_attack(AT_EXTRA_1);
            hurtboxID.sprite_index = sprite_get("dairbounce_hurt")
          
        }
    }
    else
    {
         window = 4;
    }
}
// DTILT BOUNCE 

if (attack == AT_EXTRA_2) and ( window == 2)
{
    airborn = true;
}


// NSPECIAL

// JAB COMBO
if (attack == AT_JAB)
{
        if((window == 1 || window == 4) && (window_timer == 1)){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
//turnaround
if((spr_dir == (right_down - left_down) * -1 || spr_dir == (right_stick_down - left_stick_down) * -1) && !up_down && !down_down && (attack_down || right_stick_down || left_stick_down)){
    if(spr_dir == (right_down - left_down) * -1){
        spr_dir *= -1;
        attack_end();
        set_attack(AT_FTILT);
    }
}
}
// FAIR
if (attack == AT_FAIR) and (window == 1) 
{
    
    set_hitbox_value( AT_FAIR, 1, HG_BASE_KNOCKBACK, 1.1 + abs(hsp) )
    
    var dir = spr_dir;
    var way = (hsp >= 0) * 2 - 1;
    if (dir == way)
    {
        set_hitbox_value( AT_FAIR, 1, HG_ANGLE_FLIPPER, 0)
    }
    else
    {
        set_hitbox_value( AT_FAIR, 1, HG_ANGLE_FLIPPER, 5)
    }
    
}


// SPECIALS


if (attack == AT_DSPECIAL) and (window_timer == 11)  // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    if (runeF)
    {
        cd_level = random_func( 23, cd_level_max + 1, true);
    }
    
    holding_turntable = true;
    var inst = instance_create(x,y,"obj_article1");
    sound_play(sound_get("cassette1"));
    
    
    cd_level = 0;
    //ds_list_delete(cd_pos,0);
    
    is_hcd = true;
    hcd_x = x ;
    hcd_y = y - cd_height;
    hcd_step = 0;
    hcd_spd = 8;
    
    
    
}



//var dspe2tim = get_hitbox_value( AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH )

if (attack == AT_DSPECIAL_2) 
{
    
  
    
    
    var turntable_exist = false;
    var my_turntable = 0;
    with (obj_article1)
    {
        if (player_id == other)
        {
            turntable_exist = true;
            my_turntable = self;
        }
    }
    
    if (window == 1) and (window_timer > 5 ) and (window_timer <= 10 )
    {
        if (turntable_exist)
        {
            if (collision_rectangle(x - 30, y - 50, x + 30, y, my_turntable,false,true)) or (runeO) //(place_meeting(x,y,obj_article1))
            {
                window = 3;
                window_timer = 0;
                holding_turntable = true;
                
                has_really_airdodge = has_airdodge;
                has_really_walljump = has_walljump;
                
            }
        }
    }
    
    if (window == 2) and (window_timer == 6) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        if (!free)
        {
            set_state(PS_IDLE);
        }
        else
        {
            set_state(PS_IDLE_AIR);
        }
    }
}


// THROWS

if (attack == AT_UTHROW) and (window == 1) and (window_timer == 11) and (holding_turntable) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
  
    
    with (obj_article1)
    {
        if (player_id == other)
        {
            x = other.x;
            y = other.y - 60;
            vsp = -12;  
            sprite_index = sprite_get("turntable");
            
            other.has_airdodge = other.has_really_airdodge;
            other.has_walljump = other.has_really_walljump;
        }
    }
    
    
    holding_turntable = false;
    
}
if (attack == AT_FTHROW) and (window == 1) and (window_timer == 11) and (holding_turntable) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    with (obj_article1)
    {
        if (player_id == other)
        {
            x = other.x + 24 * other.spr_dir;
            y = other.y -50;
            
            vsp = -4 + (other.right_down - other.left_down) * other.spr_dir ;
            hsp = (8 + (other.right_down - other.left_down) * other.spr_dir * 3) * other.spr_dir;
            
            sprite_index = sprite_get("turntable");
            
            other.has_airdodge = other.has_really_airdodge;
            other.has_walljump = other.has_really_walljump;
            
        }
    }
    
    holding_turntable = false;
    
}
if (attack == AT_DTHROW) and (window == 1) and (window_timer == 11) and (holding_turntable) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    with (obj_article1)
    {
        if (player_id == other)
        {
            x = other.x;
            y = other.y;
            vsp = 11;
            sprite_index = sprite_get("turntable");
            
            other.has_airdodge = other.has_really_airdodge;
            other.has_walljump = other.has_really_walljump;
            
            
        }
    }

    holding_turntable = false;
}






if (attack == AT_USPECIAL) and (can_uspecial) and (special_down)
{
    
    
    var turntable_exist = false;
    with (obj_article1)
    {
        if (player_id == other)
        {
            turntable_exist = true;
        }
    }
    

    if (window == 1) and (window_timer == 11) and (turntable_exist)  // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        set_attack(AT_USPECIAL_2);
        hurtboxID.sprite_index = sprite_get("uspecial2_hurt");
        
        with (obj_article1)
        {
            if (player_id == other)
            {
                  uspecial = true;
            }
        }
    }
}



// USPECIAL
if (attack == AT_USPECIAL_2)
{
    
    can_uspecial = false;
    
    if (window == 1) and (window_timer == 0) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        with (obj_article1)
        {
            if (player_id == other)
            {
               uspecial_timer = 49;
            }
        }
    }
    
    // To not land before the attack even start
    if (window > 2)
    {
        set_attack_value( AT_USPECIAL_2, AG_CATEGORY, 1 )
        set_attack_value( AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1 )
        
        
    }
    else
    {
        set_attack_value( AT_USPECIAL_2, AG_CATEGORY, 2 )
        set_attack_value( AT_USPECIAL_2, AG_HAS_LANDING_LAG, 0 )
    }
    
    // teleportation
    if ( window == 1) and (window_timer == 15) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        
        with (obj_article1)
        {
            if (player_id == other)
            {
                other.x = x;
                other.y = y - 20;
                other.spr_dir = spr_dir;
                
                // uspecial damage
                PV -= uspecial_damage;
            }
        }
    
    }
    
    
    if (runeH) and (window > 1)
    {
        if (shield_pressed) and (has_airdodge)
        {
            set_state(PS_IDLE_AIR);
        }
    }
    
    
}

// NSPECIAL

if (attack == AT_NSPECIAL)
{
    
 //B-reverse
    if(state_timer <= 4 && can_b_reverse){
        if((left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1)){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -0.8;
        }
    }
    
    cd_image += cd_spd;
    
    if (jump_pressed)
    {
        if (!free)
        {
            set_state(PS_IDLE);
        }
        else
        {
            set_state(PS_IDLE_AIR);
        }
    }
    
    
    
    if (cd_rel_lvl != 0)
    {
        if (!special_down) and (cd_rel_lvl = cd_level)
        {
            set_attack(AT_NSPECIAL_2);
        }
    }
        
        
    if  (window == 2)
    {
        if (cd_level < cd_level_max)
        {
            cd_charge += 1;
            
            if (cd_charge >= cd_charge_floor)
            {
                cd_level += 1;
                cd_charge = 0;
                
                
                switch (cd_level){
                    case 1:
                        sound_play(asset_get("sfx_coin_collect"));
                        spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_blue );
                    break;
                    case 2:
                        sound_play(asset_get("sfx_coin_collect"));
                        spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_green );
                    break;
                    case 3:
                        sound_play(asset_get("sfx_gem_collect"));
                        spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_yellow);
                    break;
                    case 4:
                    	sound_play(asset_get("sfx_diamond_small_collect"));
                    	spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_orange);
                    break;
                    case 5:
                    	sound_play(asset_get("sfx_diamond_collect"))
                    	spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_red);
                    break;
                    case 6:
                    	sound_play(asset_get("sfx_fish_collect"))
                    	spawn_hit_fx( x - (spr_dir == -1) * 2, y - cd_height, cd_charge_purple);
                    break;
                }
                
                
                cd_charge_offset = 2;
                cd_charge_offset_timer = 5;
                
                
                if (cd_level == cd_level_max)
                {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        

        if (shield_pressed)
        {
            if (free)
            {
                set_state(PS_IDLE_AIR);
            }
            else
            {
                window = 3 ;
                window_timer = 7;
                clear_button_buffer( PC_SHIELD_PRESSED );
            }
        }
        
        if (special_pressed)
        {
            // turning
            var dir = right_down - left_down;
            if (dir != 0)
            {
                spr_dir = dir;
            }
            
            //attack_end();
            set_attack(AT_NSPECIAL_2)
        }
    }
    
    
    
}






// nothing to see here
if (attack == AT_USTRONG) and ( window == 4) and (taunt_down)
{
    
    with (obj_article2)
    {
        if (player_id == other)
        {
            instance_destroy(self);
        }
    }
    
    //ustrong_pale = false;
    attack_end();
    set_attack(AT_TAUNT_2);
    hurtboxID.sprite_index = sprite_get("paletaunt_hurt");
}


// USPECIAL Loop

if (attack == AT_USPECIAL) and ((can_uspecial_combo) or ((runeG) and (runeG_can_uspecial)))
{
    if (window == 3) or ((window == 2) and (window_timer > 12))
    {
        if (special_pressed)
        {
            var dir = right_down - left_down
            if (dir != 0)
            {
                spr_dir = dir;
            }
            attack_end();
            set_attack(AT_USPECIAL_GROUND);
            hurtboxID.sprite_index = sprite_get("uspecial_kirby2_hurt");
            
            if (!can_uspecial_combo)
            {
                runeG_can_uspecial = false;
            }
        }
       
       
        if (shield_pressed) or (attack_pressed)
        {
            set_state(PS_IDLE_AIR);
            
            if (!can_uspecial_combo)
            {
                runeG_can_uspecial = false;
            }
        }
        
    }
}

// uspecial cancel wall jump
if (attack == AT_USPECIAL) and ((window == 3) or ((window == 2) and (window_timer > 12)))
{
    can_wall_jump = true;
}

// if uspecial loop, then cannot to it again for free
if (attack == AT_USPECIAL_GROUND)
{
    can_uspecial_combo = false;
}

// to not land before the attack started
if (attack == AT_USPECIAL)
{
    if (window == 1) or ((window == 2) and (window < 3))
    {
        set_attack_value( AT_USPECIAL, AG_CATEGORY, 2 )
        set_attack_value( AT_USPECIAL, AG_HAS_LANDING_LAG, 0 )
    }
    else
    {
        set_attack_value( AT_USPECIAL, AG_CATEGORY, 1 )
        set_attack_value( AT_USPECIAL, AG_HAS_LANDING_LAG, 1 )
    }
}




// NSPECIAL THROW
if (attack == AT_NSPECIAL_2)

{
    
    if (window == 1) and (window_timer == 1) and (runeF) // random RuneF // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        cd_level = random_func( 23, cd_level_max + 1, true);
        
        if (!runeL)
        {
            move_cooldown[AT_NSPECIAL_2] = 50;
        }
        else
        {
            move_cooldown[AT_NSPECIAL_2] = 35;
        }
    }
    
    if ( window == 2) and ( window_timer == 5) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        create_hitbox( AT_NSPECIAL_2, cd_level + 1, x + (62 * spr_dir), y - 36 );
            
        cd_level = 0;
    }
     //B-reverse
    if(state_timer <= 4 && can_b_reverse){
        if((left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1)){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -0.8;
        }
    }
}


// FSPECIAL
if (attack == AT_FSPECIAL) 
{
    move_cooldown[AT_FSPECIAL] = 100000;
    can_wall_jump = true;
    
    if ((window == 3) or (window == 4))
    {
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) or (special_pressed)
        {
            window = 5;
            window_timer = 0;
        }
        
        if (!free) 
        {
            
            destroy_hitboxes();
            attack_end();
            set_attack(AT_EXTRA_3);
            hurtboxID.sprite_index = sprite_get("dattack_hurt");
            
            /*
            set_attack(AT_DATTACK);
            window = 2;
            window_timer = 9;*/
        }
    }
    
    if (window > 4)
    {
        destroy_hitboxes();
    }
    
}

if (attack == AT_EXTRA_3)
{
    if (window == 1) and ((jump_pressed) or (special_pressed) or (attack_pressed))
    {
        set_attack(AT_FSPECIAL_2);
        hurtboxID.sprite_index = sprite_get("dairbounce_hurt");
    }
    
    
    if (window == 2) and (window_timer == 14) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
        set_state(PS_CROUCH);
    }
}



// TAUNTTABLE

if (attack == AT_DSPECIAL_AIR) and (window == 1) and (window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    var rand = random_func( 5, array_length_1d(sound), true )
    
    sound_play(sound[rand]);
    set_window_value( AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, lenght[rand]);
    set_window_value( AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, lenght[rand] / 8);
    
}




if (attack == AT_TAUNT) and (runeN)
{
    if (window == 1) and (window_timer == 25) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    {
    
        with (obj_article2)
        {
            if (player_id == other)
            {
                state = 4;
                image_index = 0;
                state_timer = 0;
            }
        }
    }
    
}


if (attack == AT_USPECIAL_2) and (window == 4)
{
    can_wall_jump = true;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion