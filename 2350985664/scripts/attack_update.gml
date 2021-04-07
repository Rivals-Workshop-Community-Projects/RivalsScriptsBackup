// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//no fastfall zone act 2
if (attack == AT_DAIR || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL)
{
    can_fast_fall = false;
}

switch (attack)
{
    case AT_FSTRONG:
        var time = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
        if (window == 2) and (window_timer == time)
        {
            with (obj_article2)
            {
                if (player_id == other)
                {
                    sing_image = 0;
                    
                }
            }
        }
    
    break;
    case AT_NSPECIAL:
    var time = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
        if (window == 1) and (window_timer == time)
        {
            with (obj_article2)
            {
                if (player_id == other)
                {
                    sing_image = 0;
                    
                }
            }
        }
    
    break;
    case AT_DSPECIAL:
        if (window == 1)
        {
            /*
            with (obj_article2)
            {
                if (player_id == other)
                {
                    instance_destroy(self);
                }
            }
            */
           // fam_rot = 0 + (180 * (spr_dir == -1))
        }
        var time = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
        if (window == 1) and ( window_timer == time)
        {
            /*
            if (up_down + left_down + right_down + down_down)
            {
                fam_rot = ((up_down * 90) + (left_down * 180) + (down_down * 270)) / (up_down + left_down + right_down + down_down) 
                
                if (right_down and down_down)
                {
                    fam_rot = 315;
                }
            }
            */
            var inst = instance_create(x + 38 * spr_dir,y - 72,"obj_article2")
            inst.angle = fam_rot;
        }
    break;
    case AT_TAUNT:
        // Taunt hud offset
        if (window == 3) and (window_timer > 30)
        {
            hud_offset = floor(lerp(hud_offset, 100, 0.4))
        }
        if ((window == 1) and (window_timer == 15)) or ((window == 2) and (window_timer == 35)) or ((window == 3) and (window_timer == 35))
        {
            with (obj_article2)
            {
                if (player_id == other)
                {
                    sing_image = 0;
                    
                }
            }
        }
    break;
    case AT_UTILT:
        if ((window == 1) and (window_timer > 5)) or ((window >= 2) and (window <= 4)) //or ((window == 5) or (window_timer < 6))
        {
            hud_offset = floor(lerp(hud_offset, 84, 0.4))
        }
    break;
    case AT_USTRONG:
        if (window >= 3) and (window <= 6) or ((window == 2) and (window_timer > 2))
        {
            hud_offset = floor(lerp(hud_offset, 170, 0.3))
        }
        
        
        if (window >= 2) and (window <= 4)
        {
            time = get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH);
            if (window_timer == time)
            {
                sound_play(sound_get("water"));
            }
            
        }
    
    break;
    case AT_UAIR:
        // uair hud offset
        if (window <= 4) or (window_timer < 10)
        {
            hud_offset = floor(lerp(hud_offset, 84, 0.4))
        }
    break;
    case AT_DSTRONG: // Dstrong spr_dir 
        if (window == 4) and (window_timer == 7)
        {
            spr_dir *= -1;
        }
    break;
    case AT_DATTACK:
        if (window == 1)
        {
            reset_window_value( AT_DATTACK, 2, AG_WINDOW_HSPEED)
        }
        var time = get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH);
        if (window == 2) and (window_timer == time)
        {
            spr_dir *= -1;
            set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, -11);
        }
        var time = get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
        if (window == 1) and (window_timer == time)
        {
            spawn_hit_fx( x, y, dash_effect_front)
        }
    
    break;
    case AT_JAB:
        switch (window)
        {
            case 3:
                last_jab = 1;
            break;
            case 6:
                last_jab = 2;
            break;
            case 9:
                last_jab = 3;
            break;
        }
    break;
    case AT_DAIR:
         
         
        var time = get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
        if (window == 1) and (window_timer == time)
        {
            spawn_hit_fx( x, y, dash_effect_down)
            sound_play(sound_get("dash"));
        }
        /*
        if (has_rune("H"))
        {
            if (window == 3) or (window == 2)
            {
                if (state_timer % (2 - has_rune("G")) == 0)
                {
                    create_hitbox( AT_DAIR, 3, x + 10 * spr_dir, y - 70 )
                    
                    var inst = create_hitbox( AT_DAIR, 3, x - 10 * spr_dir, y - 70 );
                    inst.spr_dir *= -1;
                    inst.hsp *= -1;
                    //inst.kb_angle = 95;
                }
            }
        }
        */
    break;
    case AT_EXTRA_1: // animal cage
        
    
    break;
    case AT_USPECIAL:
        
         
        var time = get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
        if (window == 3 ) and (window_timer == time)
        {
            destroy_hitboxes() 
            attack_end();
            set_attack(AT_EXTRA_2);
            hurtboxID.sprite_index = sprite_get("grab_endlag_hurt");
        }
        
        var time = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
        if (window == 1) and (window_timer == time)
        {
            spawn_hit_fx( x, y, dash_effect_up)
            sound_play(sound_get("dash"));
        }
        can_wall_jump = true;
        
        /*
        if (has_rune("H"))
        {
            if (window == 3) or (window == 2)
            {
                if (state_timer % (2 - has_rune("G")) == 0)
                {
                    create_hitbox( AT_USPECIAL, 3, x + 10 * spr_dir, y + 0 )
                    
                    var inst = create_hitbox( AT_USPECIAL, 3, x - 10 * spr_dir, y + 0 );
                    inst.spr_dir *= -1;
                    inst.hsp *= -1;
                    //inst.kb_angle = 95;
                }
            }
        }
        */
    break;
    case AT_EXTRA_2:
        can_wall_jump = true;
    break;
    case AT_FSPECIAL:
      
        var time = get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
        if (window == 3 ) and (window_timer == time)
        {
            destroy_hitboxes() 
            attack_end();
            set_attack(AT_EXTRA_2);
            hurtboxID.sprite_index = sprite_get("grab_endlag_hurt");
        }
        var time = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
        if (window == 1) and (window_timer == time)
        {
            spawn_hit_fx( x, y, dash_effect_front)
            sound_play(sound_get("dash"));
        }
        
        /*
        if (has_rune("H"))
        {
            if (window == 3) or (window == 2)
            {
                if (state_timer % (2 - has_rune("G")) == 0)
                {
                    create_hitbox( AT_FSPECIAL, 3, x - 18 * spr_dir, y - 46 )
                    create_hitbox( AT_FSPECIAL, 4, x - 20 * spr_dir, y - 26 )
                   
                }
            }
        }
    */
    break;
}







