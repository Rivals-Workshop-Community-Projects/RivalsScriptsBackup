//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL){ //|| attack == AT_USPECIAL){
    trigger_b_reverse();
}

// No Fastfall Zone
if (attack == AT_NSPECIAL || attack == AT_DAIR || attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_UAIR || attack == AT_DSPECIAL || attack == AT_NSPECIAL_2 )
{
    can_fast_fall = false;
}



switch (attack)
{
    case AT_UTILT:
        // Utilt hud offset
        if (window == 2) or (window == 3)
        {
            hud_offset = floor(lerp(hud_offset, 120, 0.4))
        }
    break;
    case AT_DSTRONG: // DSTRONG
        // DSTRONG PAPER
        if (window == 2) and (window_timer == get_window_value( AT_DSTRONG, 2, AG_WINDOW_LENGTH ))
        {
            
            var dist_ref = 34;
            var distance = (dist_ref + strong_charge)
    
            var inst = instance_create(x - 4 * spr_dir ,y,"obj_article1"); //+ distance * spr_dir
            var inst2 = instance_create(x - 4 * spr_dir ,y,"obj_article1");
    
            inst.spr_dir = 1;
            inst2.spr_dir = -1;
    
            inst.dist = distance;
            inst2.dist = distance;
    
            inst.type = 0;
            inst2.type = 0;
    
            var yoffset = get_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y);
    
            with (inst)
            {
                for (var i = 0; i < dist; i += 1)
                {
                    if (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_block"),false,true)) or (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_jumpthrough"),false,true))
                    {
                        if (!collision_rectangle(x - 1, y -1, x + 1,y - 1, asset_get("par_block"),false,true))
                        {
                            if (!has_rune("D"))
                            {
                                x += 1 + (i % 2 == 0);
                            }
                            else
                            {
                                x += 1 + (i % 2 == 0) + (i > dist_ref) * 2
                            }
                            // this mess means: if there is something under you and this thing in not ON you, you can move.
                        }
                    }
                }
                create_hitbox( AT_DSTRONG, 2 - other.spr_dir, x,y + yoffset ) ;
            }
            with (inst2)
            {
                for (var i = 0; i < dist; i += 1)
                {
                    if (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_block"),false,true)) or (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_jumpthrough"),false,true))
                    {
                        if (!collision_rectangle(x - 1, y -1, x + 1,y - 1, asset_get("par_block"),false,true))
                        {
                            if (!has_rune("D"))
                            {
                                x -= 1 + (i % 2 == 0);
                            }
                            else
                            {
                                x -= 1 + (i % 2 == 0) + (i > dist_ref) * 2
                            }
                        }
                    }
                }
    
               create_hitbox( AT_DSTRONG, 2 + other.spr_dir, x,y + yoffset ) ;
            }
        }
    break;
    case AT_NSPECIAL: // NSPECIAL
        if (window == 1) and (window_timer == get_window_value( AT_NSPECIAL, 1, AG_WINDOW_LENGTH ))
        {
            if (object_index != oTestPlayer)
            {
                instance_create(x + 28 * spr_dir ,y - 34,"obj_article2");
            }
            spawn_hit_fx( x + 28 * spr_dir, y - 34, 302)
        }
    break;
    case AT_FSPECIAL: // FSPECIAL
        if (window == 1) and (window_timer == get_window_value( AT_FSPECIAL, 1, AG_WINDOW_LENGTH ))
        {
            if !(special_down)
            {
                window = 3;
                window_timer = 0;
            }
    
        }
        if (window == 2 && window_timer == 1)
        {
            fspe_is_charged = true;
            fspe_extra_to_shot += charge_plus ;
            spawn_hit_fx( x, y, fspe_charge_effect)
        }
    
        if (window == 4)
        {
           
           if (has_rune("F"))// or (fspe_is_charged)
           {
               if (window_timer == 1)
               {
                   create_hitbox( AT_FSPECIAL_2, 1, x + (free * 7 + get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X) *  spr_dir) , y - (free * 16) + get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y))
               }
           }
           /*
           if (has_rune("E"))
           {
               if (window_timer == 1)
               {
                    create_hitbox( AT_FSPECIAL_AIR, 1, x + (free * 7 + get_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X) *  spr_dir) , y - (free * 16) + get_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y))
               }
           }
            */
            if (window_timer == get_window_value( AT_FSPECIAL, 4, AG_WINDOW_LENGTH ))
            {
                if (fspe_extra_to_shot > 0) // -1 than the actual number of shots
                {
                    window_timer = 0;
                    fspe_extra_to_shot -= 1;
        
                    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
                    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
                }
            }
    
        }
    /*
        if (special_pressed) and (!has_used_uspecial)
        {
            set_attack( AT_USPECIAL);
        }
    */
    break;
    case AT_FSTRONG: // FSTRONG
         var time = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
        if (window == 2 && window_timer == time) 
        {
            if (!has_rune("H"))
            {
               spawn_hit_fx( x + 80 * spr_dir, y - 30, 110) // temporary
            }
            else
            {
                var numb = 22
                for (var i = 0; i < numb; i += 1 )
                {
                    create_hitbox( AT_FSTRONG, i, x + 70 * spr_dir, y - 38);
                }
            }
            /*
            for (var i = 0; i < 10; i += 1)
            {
                ds_list_add(eff_x, x + 80 * spr_dir)
                ds_list_add(eff_y, y - 30)
                
                
                ds_list_add(eff_x_acc, random_func(i,10,false) - 7.5);
                ds_list_add(eff_y_acc, random_func(i + 1,10,false) - 5);
                
                 ds_list_add(eff_col, random_func(i,4,true))
                 
                 ds_list_add(eff_scale, 1.1)
                 ds_list_add(eff_alpha, 1);//, random_func(i,1,false))
                 
                 ds_list_add(eff_life, random_func(i,50,true))
            }
             */
        }
    break;
    case AT_DSPECIAL: // DSPECIAL
        var time = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
    
        if (window == 1 && window_timer == time) 
        {
            var inst = instance_create(x,y - 20,"obj_article3");
            ds_list_add(dspe_list,inst);
            
            if(ds_list_size(dspe_list) == max_dspe_card + 1)
            {
                instance_destroy(dspe_list[|0]);
                ds_list_delete(dspe_list,0);
            }
        }
    break;
    case AT_NSPECIAL_2: // NSPECIAL 2
        var yinyang_id = noone;
        with (obj_article2)
        {
            if(player_id == other)
            {
                yinyang_id = self;
            }
        }
        
        if (window == 1) or (window == 2)
        {
            if (yinyang_id != noone)
            {
                yinyang_id.is_hold = true;
                
                instance_destroy(yinyang_id.my_hitbox);
            }
            
            var nspe2_rot_then = nspe2_rot;
            if (up_down + left_down + right_down + down_down)
            {
                nspe2_rot = ((up_down * 90) + (left_down * 180) + (down_down * 270)) / (up_down + left_down + right_down + down_down) 
                
                if (right_down and down_down)
                {
                    nspe2_rot = 315;
                }
            }
            if (nspe2_rot_then != nspe2_rot)
            {
                sound_play(sound_get("click"))
            }
            
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, nspe2_rot );
        }
        
       
        if (window == 2)
        {
            if (special_down) and (yinyang_id != noone)
            {
                nspecial2_timer += 1;
                
                var time =  get_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH);
                if (window_timer == time)
                {
                    window_timer = 0;
                }
                
                if ( nspecial2_timer > 20) 
                {
                    set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
                }
                
            }
            else
            {
                window = 3;
                window_timer = 0;
            }
        }
        
        if (window == 4) and (window_timer = 1)
        {
            if (yinyang_id != noone)
            {
                create_hitbox( AT_NSPECIAL_2, 1, yinyang_id.x, yinyang_id.y )
                
                yinyang_id.is_hold = false;
            }
        }
        
        
        if (window >= 3)
        {
             nspecial2_timer = 0;
             set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
        }
    break;
    case AT_USPECIAL:
        if (window == 1)
        {
           var dash_spd = 8.5;
           var diag_dash_spd = 6;
    
    
            var dir = (right_down - left_down) * spr_dir;
    
            if (down_down)
            {
                if (abs(dir)) // down-right (also down_left but switching spr_dir)
                {
                    if (attack == AT_USPECIAL)
                    {
                        spr_dir *= dir;
                    }
    
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, diag_dash_spd);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, diag_dash_spd);
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 315);
    
                    dash_to_use = dash_effect_downfront;
                }
                else// down
                {
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, dash_spd);
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270);
    
                    dash_to_use = dash_effect_down;
                }
            }
    
            if (up_down) //or (window_timer == 1)// default one
            {
                if (abs(dir)) // up-right (also up_left but switching spr_dir)
                {
                    if (attack == AT_USPECIAL)
                    {
                        spr_dir *= dir;
                    }
    
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, diag_dash_spd);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -diag_dash_spd);
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
    
                    dash_to_use = dash_effect_upfront;
                }
                else // up
                {
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -dash_spd);
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
    
                    dash_to_use = dash_effect_up;
                }
            }
    
            if ((abs(dir)) and (!up_down) and (!down_down)) // front
            {
                if (attack == AT_USPECIAL)
                {
                    spr_dir *= dir;
                }
    
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, dash_spd);
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 0);
    
                dash_to_use = dash_effect_front;
            }
    
            
    
        }
    //////
    
        if (!free)
        {
            uspe_cooldown = uspe_cooldown_ref;
        }
        
        if (window == 1)
        {
            if (window_timer == get_window_value( AT_USPECIAL, 1, AG_WINDOW_LENGTH ))
            {
                sound_play(sound_get("dash"));
                spawn_hit_fx( x , y , dash_to_use);
            }
        }
        if (window >= 2)
        {
            
            if (!free)
            {
                    if (get_window_value( AT_USPECIAL, 2, AG_WINDOW_VSPEED) <= 0)
                    {
                        var time = get_window_value( AT_USPECIAL, 2, AG_WINDOW_LENGTH);
                        if (window_timer >= time -1 )
                        {
                            set_state(PS_DASH_START);
                        }
                    }
                    else
                    {
                        set_state(PS_IDLE);
                    }
                
            }
    
            
        }
        if (window == 3)
        {
            can_attack = true;
            can_special = true;
            can_jump = true;
            if (shield_pressed) and (has_airdodge)
             {
                 if(free)
                 {
                     set_state(PS_AIR_DODGE)
                 }
                 else
                 {
                     set_state(PS_WAVELAND)
                 }
             }
            
        }
        can_wall_jump = true;
    break;
}


if (has_rune("K"))
{
    if (has_hit)
    {
        if (attack == AT_UTILT) or (attack == AT_FTILT) or (attack == AT_DTILT) or (attack == AT_DATTACK)
        {
            can_jump = true;
        }
    }
}
