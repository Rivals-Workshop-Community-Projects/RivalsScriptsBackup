//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    
    //Tricks
    case AT_UTHROW:
    case AT_DTHROW:
    case AT_FTHROW:
        can_fast_fall = false;
        can_wall_jump = true;
        vsp = 0;
        hsp = 0;
        move_cooldown[AT_DSPECIAL] = 30;
    break;
    
    case AT_EXTRA_1:
        fspecial_timer++;
        vsp = 0;
    
        hsp = spr_dir*8;
        can_move = false;
        can_fast_fall = false;
        if window == 1 and window_timer == 1 and !instance_exists(fspecial_grind_hitbox)
        {
            if !riding_plat {
                ollie_move_should_get_bar = true;
                add_attack_to_combo(true)
            }
            fspecial_grind_hitbox = create_hitbox(attack, 1, x, y);
        }
        
        if instance_exists(fspecial_grind_hitbox)
        {
            fspecial_grind_hitbox.hitbox_timer = 2;
        }
        
        if !riding_plat
        {
            if instance_exists(rail_obj) {
                y = lerp(y,rail_obj.y-26,0.2)
            }
            
            if !place_meeting(x,y,rail_obj) or fspecial_timer > fspecial_max_time
            {
                trigger_spin();
            }
            
            instance_position(x,y+1,asset_get("par_jumpthrough"))
        }
        else
        {
            fall_through = true;
            var p = plat_rail_obj
            
            if p != noone {
                print("grind")
                
                y = lerp(y,get_instance_y(p) + 6,0.2)
            }
            
            if !place_meeting(x,y,asset_get("par_jumpthrough")) or fspecial_timer > fspecial_max_time
            {
                trigger_spin();
            }            
        }
    break;
    case AT_EXTRA_2:
        can_fast_fall = false;
        move_cooldown[AT_FSPECIAL] = 40;
    break;
    case AT_FSPECIAL:
    can_move = false;
    can_wall_jump = true;
    
    if window > 1 {
        //Thank you to Ducky for the ledge forgiveness template
            if (!fspecial_ledgeforgiven and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
            {
                for (var i = 0; i < 40; i++)
                {
                    if fspecial_ledgeforgiven break;
                    
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                    {
                        y -= i;
                        fspecial_ledgeforgiven = true;
                    }
                }
            }        
    }
    
    switch (window) {
        case 1:
            hsp *= 0.9;
            vsp *= 0.9;
            
            if (window_timer == 11)
            {
                hsp = 11 * spr_dir;
                vsp = -5.5;
            }
        break;
        case 2:
            var detected_plat = instance_place(x, y, asset_get("par_jumpthrough")); 
            var plat = place_meeting(x,y + 1, asset_get("par_jumpthrough")) and free and (detected_plat != noone and abs(get_instance_y(detected_plat) - (y - (char_height / 2) )) < 16) 
            
            
            if (((instance_exists(rail_obj) and place_meeting(x,y,rail_obj)) or plat))
            {
                destroy_hitboxes();
                attack_end();
                
                riding_plat = plat;
                
                if riding_plat {
                    plat_rail_obj = detected_plat;
                }
                
                window = 1;
                window_timer = 0;
                with spawn_hit_fx(x+(10*spr_dir),y-10,spark_vfx)
                {
                    spr_dir *= -1;
                    depth = other.depth - 10    
                }
                fspecial_timer = 0;
                set_attack(AT_EXTRA_1);
                hurtboxID.sprite_index = sprite_get("fspecial_grind_hurt");
            }        
        break;
        case 3:
        if window_timer == (get_window_value(attack, 3, AG_WINDOW_LENGTH) * 1.5) - 1 and !has_hit and free
        {
            set_state(PS_PRATFALL)
        }
        break;
    }
    
    break;
    
    //case AT_NAIR:
    //   if ( window == 1 )
    //   {
    //       trigger_nair_jump = false;
    //   }
    //   else if ( window == 2 && trigger_nair_jump && !hitpause )
    //   {
    //       trigger_nair_jump = false;
    //       vsp = -8;
    //   }
       
    //   if ( window == 2 && !hitpause )
    //   {
    //       switch ( window_timer )
    //       {
    //           case 3:
    //           case 6:
    //           case 9:
    //             sound_stop (asset_get("sfx_swipe_weak2"));
    //             sound_play (asset_get("sfx_swipe_weak2"));
    //             break;
    //       }
    //   }
    case AT_JAB:
        //jab code goes here
        break;
    case AT_NSPECIAL:
        move_cooldown[AT_NSPECIAL] = 60;
        break; 
    case AT_NSPECIAL_2:
        if ( window == 3 && window_timer == 1 )
        {
            rail_obj = instance_create( x , y - ( 32 ), ("obj_article1") );
            move_cooldown[AT_NSPECIAL] = 60;
            ollie_bar_current_level -= 1;
        }
        break;
    case AT_UTILT:
        if window == 1 and window_timer == 6 {
            sound_play(sound_get("nspecial_startup"), false, noone, 0.4, 1.3)
        }
        break;
    case AT_UAIR:
            if (window == 1 and window_timer > 4) or window == 2 or (window == 3 and window_timer < 3)
            {
                hud_offset = round(lerp(hud_offset, 260, 0.1))
            }
        break;
    case AT_USPECIAL:
        //uspecial code goes here
        break;
    case AT_FTILT:
        //ftilt code goes here
        break;
    case AT_FAIR:
        //forward air code goes here
        break;
    case AT_DTILT:
        //down tilt code goes here
        break;
    case AT_DAIR:
        if window == 2 {
            if window_timer mod 2 == 0 and !hitpause
            {
                create_hitbox(AT_DAIR, 1, x, y)
            }
        }
        
        if window == 4 and window_timer == 1 {
            sound_play(sound_get("wood_break_new"), false, noone)
            sound_play(sound_get("wood_break"), false, noone, 0.4, 1.1)
            sound_play(asset_get("zetter_downb"))
        }
        break;
    case AT_DSPECIAL:
        can_fast_fall = false;
        switch window
        {
            case 1:
                can_move = false;
                vsp *= 0.9;
                hsp *= 0.9;
            break;
            case 2:
            can_move = false
                if !hitpause
                {
                    vsp = lerp(vsp, -7, 0.15)
                    var dir = right_down - left_down
                    
                    if dir != 0 {
                        hsp = lerp(hsp, 4*dir, 0.1)
                    }
                    
                    if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 and ollie_bar_current_level != 1
                    {
                        var attack_to_trigger = AT_DSPECIAL;
                        switch (ollie_bar_current_level)
                        {
                            case 2:
                                attack_to_trigger = AT_FTHROW;
                            break;
                            case 3:
                                attack_to_trigger = AT_DTHROW;
                            break;
                            case 4:
                                attack_to_trigger = AT_UTHROW;
                            break;
                        }
                        
                        set_attack(attack_to_trigger);
                        hurtboxID.sprite_index = sprite_get(`dspecial_trick_s${ollie_bar_current_level-1}_hurt`);
                        sound_play(asset_get("sfx_shop_buy"))
                        with spawn_hit_fx(x,y-20,explosion_vfx)
                        {
                            depth = other.depth - 10;
                        }
                        
                        ollie_bar_amount = 0;
                        ollie_bar_current_level = 1;
                    }
                }
            break;
        }
        break;
    case AT_BAIR:
        //back air code goes here
        break;
    case AT_TAUNT:
        //taunt code goes here
        break;
    case AT_DATTACK:
        if (window == 2 or window == 3) and window_timer mod 3 == 1 and !hitpause {
            var t = spawn_hit_fx(x - (20*spr_dir),y,spark_vfx)
            t.spr_dir *= -1
        }
    
        if (has_hit and jump_pressed)
        {
            should_jc_dattack = true;
        }
        
        if (should_jc_dattack and !hitpause) set_state(PS_JUMPSQUAT);
        break;
}

#define trigger_spin()

attack_end();
destroy_hitboxes();
sound_play(asset_get("sfx_spin"));
vsp = -8;
instance_destroy(fspecial_grind_hitbox);
if !riding_plat {
    ollie_move_should_get_bar = true;
    add_attack_to_combo(true)
}
fall_through = false;

set_attack(AT_EXTRA_2);
hurtboxID.sprite_index = sprite_get("fspecial_spin_hurt");

#define add_attack_to_combo(limit_one)

var limit = limit_one ? array_find_index(ollie_move_combo_array, attack) == -1 : true;

//If you are able to put the move in the meter, put it in.
if (ollie_move_should_get_bar and array_find_index(ollie_combo_moves_no_hit, attack) != -1 and limit and (array_length(ollie_move_combo_array) == 0 or ollie_move_combo_array[array_length(ollie_move_combo_array) - 1] != attack))
{
    ollie_move_should_get_bar = false;
    sound_play(sound_get("orch_hit"),false,noone,1, 1+(array_length(ollie_move_combo_array)/12.5) )
    array_push(ollie_move_combo_array,attack);
    ollie_combo_end_timer = 0;
}