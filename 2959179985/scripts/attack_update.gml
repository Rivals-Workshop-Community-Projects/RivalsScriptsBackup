//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR){
    trigger_b_reverse();
}
/*if(attack == AT_NAIR)
{
    if (has_hit and !hitpause)
    {
        if (attack_pressed)
        {
            if (up_down)
            {
                set_attack(AT_UAIR);
                //clear_button_buffer(PC_ATTACK_PRESSED)
            }
            else if (down_down)
            {
                set_attack(AT_DAIR);
            }
            else if (right_down and spr_dir == 1) or (left_down and spr_dir == -1)
            {
                set_attack(AT_FAIR);
            }
            else if (right_down and spr_dir == -1) or (left_down and spr_dir == 1)
            {
                set_attack(AT_BAIR);
            }
        }
    }
}*/
if (attack == AT_DATTACK)
{
    if (has_hit)
    {
        can_ustrong = true;
    }
}
if (attack == AT_FTILT)
{
    if (window == 4 or window == 7)
    {
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if (window == 3 or window == 6)
    {
        if ((attack_pressed and (right_down - left_down = spr_dir)) or (right_stick_pressed - left_stick_pressed = spr_dir))
        {
            window += 1;
            window_timer = 0;
        }
    }
}
if (attack == AT_BAIR)
{
    if (window == 2)
    {
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))
        {
            if (!has_hit)
            spawn_hit_fx(x,y, bair_miss)
            else if (has_hit)
            spawn_hit_fx(x,y, bair_hit)
        }
    }
}
if (attack == AT_UAIR)
{
    if (window == 3)
    {
        if ((attack_pressed and up_down) or up_stick_pressed)
        {
            window += 1;
            window_timer = 0;
        }
    }
}
if (attack == AT_DAIR)
{
    if (window == 1)
    {
        jump_timer = 0;
    }
    if (window == 2)
    {
        jump_timer += 1;
        if ((jump_timer >= 30 or has_hit) and !was_parried and !hitpause)
        {
            can_jump = true;
            can_shield = true;
        }
    }
    can_move = false;
    can_fast_fall = false;
}
if (attack == AT_FSTRONG)
{
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 5 + strong_charge/8);
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4 * floor(strong_charge/20));
    set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4 * floor(strong_charge/20));
    if (window == 5)
    {
        if (window_timer == 1)
        {
            spawn_hit_fx(x + (65 * spr_dir),y - 10, 302);
            spawn_hit_fx(x,y, chair_break);
        }
    }
}
if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    if (window == 1)
    {
        if (window_timer == 1)
        {
            reset_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 4, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 5, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 4, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 5, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 1, HG_ANGLE)
            reset_hitbox_value(attack, 4, HG_ANGLE)
            reset_hitbox_value(attack, 5, HG_ANGLE)
            reset_window_value(attack, 3, AG_WINDOW_LENGTH)
            reset_window_value(attack, 4, AG_WINDOW_LENGTH)
            nspec_array = [1,2,3,4,5,6];
            nspec_array2 = [];
            nspec_array3 = [];
            array_count1 = 0;
            array_count2 = 0;
            array_count3 = 0;
            sound_man = 0;
        }
        if (shield_pressed and ex_meter >= 30)
        {
            if (ex = 0)
            spawn_hit_fx(x, y - 20, 21)
            if (sound_man = 0)
            {
                sound_play(asset_get("sfx_bird_sidespecial"), 0, 0, 0.5, 1)
                sound_man = 1;
            }
            ex = 1;
            ex_draw = 2;
            ex_draw_x = x;
            ex_draw_y = y;
        }
        var temp;
        
        if (window_timer <= 6)
        {
            array_random = random_func(0, 6, true);
            array_random2 = random_func(0, 5, true);
            array_random3 = random_func(0, 4, true);
        }
        else
        {
            nspec_proj = nspec_array[array_random];
            if (array_count1 < 6)
            {
                if (array_count1 != array_random)
                {
                    array_insert(nspec_array2, array_count1, nspec_array[array_count1])   
                    //array_count2++;
                }
                array_count1++
            }
            else if (array_count2 < 5)
            {
                nspec_proj2 = nspec_array2[array_random2];
                if (array_count2 != array_random2)
                {
                    array_insert(nspec_array3, array_count2, nspec_array2[array_count2])   
                }
                array_count2++
            }
            else 
            {
                nspec_proj3 = nspec_array3[array_random3];
            }
        }
      //  else
    //    {
            //var temp2 = random_func(0, 5, true);
          //  nspec_proj2 = nspec_array2[temp2];
        //}
    }
    else if (window >= 2)
    {
        move_cooldown[AT_NSPECIAL] = 30;
    }
    if (window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH))
    {
        if (ex == 0)
        {
            var dir = (right_down - left_down)
            if (spr_dir != dir and dir != 0 and down_down)
            {
                create_hitbox(attack, 1, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, 3, x + (15 * spr_dir), y - 40)
            }
            else if (dir == 0 and down_down)
            {
                create_hitbox(attack, 2, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
            }
            else if (spr_dir == dir and down_down)
            {
                create_hitbox(attack, 4, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
            }
            else if (spr_dir == dir and !down_down)
            {
                create_hitbox(attack, 3, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, 6, x + (15 * spr_dir), y - 40)
            }
            else if (spr_dir != dir and up_down)
            {
                create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, 6, x + (15 * spr_dir), y - 40)
            }
            else
            {
                create_hitbox(attack, nspec_proj, x + (15 * spr_dir), y - 40)
                create_hitbox(attack, nspec_proj2, x + (15 * spr_dir), y - 40)
            }
        }
        else if (ex == 1)
        {
            
                //set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, 0.8)
                //set_hitbox_value(attack, 4, HG_HITSTUN_MULTIPLIER, 0.8)
                //set_hitbox_value(attack, 5, HG_HITSTUN_MULTIPLIER, 0.8)
                //set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 4)
                //set_hitbox_value(attack, 4, HG_EXTRA_HITPAUSE, 4)
                //set_hitbox_value(attack, 5, HG_EXTRA_HITPAUSE, 4)
                set_hitbox_value(attack, 1, HG_ANGLE, 70)
                set_hitbox_value(attack, 4, HG_ANGLE, 70)
                set_hitbox_value(attack, 5, HG_ANGLE, 70)
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 6)
                set_window_value(attack, 4, AG_WINDOW_LENGTH, 6)
                
                var dir = (right_down - left_down)
                if (spr_dir != dir and dir != 0 and down_down)
                {
                    create_hitbox(attack, 1, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 3, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
                }
                else if (dir == 0 and down_down)
                {
                    create_hitbox(attack, 2, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 6, x + (15 * spr_dir), y - 40)
                    
                }
                else if (spr_dir == dir and down_down)
                {
                    create_hitbox(attack, 1, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 2, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 4, x + (15 * spr_dir), y - 40)
                }
                else if (spr_dir == dir and !down_down)
                {
                    create_hitbox(attack, 2, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 4, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 6, x + (15 * spr_dir), y - 40)
                }
                else if (spr_dir != dir and dir != 0 and up_down)
                {
                    create_hitbox(attack, 1, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 5, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, 6, x + (15 * spr_dir), y - 40)
                }
                else
                {
                    print("Nspec_Proj: " + string(nspec_proj))
                    print("Nspec_Proj2: " + string(nspec_proj2))
                    print("Nspec_Proj3: " + string(nspec_proj3))
                    print("Nspec_Array: " + string(nspec_array))
                    print("Nspec_Array2: " + string(nspec_array2))
                    print("Nspec_Array3: " + string(nspec_array3))
                    create_hitbox(attack, nspec_proj, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, nspec_proj2, x + (15 * spr_dir), y - 40)
                    create_hitbox(attack, nspec_proj3, x + (15 * spr_dir), y - 40)
                }
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 1)
    {
        if (window_timer == 1)
        {
            reset_hitbox_value(attack, 1, HG_DAMAGE)
            reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 6, HG_DAMAGE)
            reset_hitbox_value(attack, 6, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 6, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 6, HG_BASE_KNOCKBACK)
            reset_hitbox_value(attack, 6, HG_ANGLE)
            //reset_hitbox_value(attack, 6, HG_DRIFT_MULTIPLIER)
            sound_man = 0;
        }
        
        if (shield_pressed and ex_meter >= 30)
        {
            if (ex = 0)
            spawn_hit_fx(x, y - 20, 21)
            if (sound_man = 0)
            {
                sound_play(asset_get("sfx_bird_sidespecial"), 0, 0, 0.5, 1)
                sound_man = 1;
            }
            ex = 1;
            ex_draw = 1;
            ex_draw_x = x;
            ex_draw_y = y;
            set_hitbox_value(attack, 1, HG_DAMAGE, 2)
            set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 6)
            set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, 1)
            set_hitbox_value(attack, 6, HG_BASE_KNOCKBACK, 7)
            set_hitbox_value(attack, 6, HG_DAMAGE, 2)
            set_hitbox_value(attack, 6, HG_ANGLE, 85)
            //set_hitbox_value(attack, 6, HG_DRIFT_MULTIPLIER, 0)
            set_hitbox_value(attack, 6, HG_HITSTUN_MULTIPLIER, 1)
            set_hitbox_value(attack, 6, HG_EXTRA_HITPAUSE, 5)
            
        }
    }
    else if (window == 2){
        
        var inst = collision_rectangle(floor(x + 55 * spr_dir), floor(y-2), floor(x + 65 * spr_dir), floor(y -52), pHurtBox, true, true);
        
        if (inst == noone or ex == 0)
        {
            hsp = 6 * spr_dir;
        }
        else if (inst != noone and ex == 1)
        {
            if (spr_dir = 1 and hsp > 1) or (spr_dir == -1 and hsp < -1)
            hsp *= 0.99;
            else
            hsp = 0.5 * spr_dir;
        }
        
        if (!free and special_pressed and ex == 0){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
        }
        
        if (window_timer == 13 or window_timer == 6)
        {
            if (!hitpause)
            sound_play(asset_get("sfx_swipe_weak2"))
        }
    }
    else if (window == 4)
    {
        has_hit = false;
    }
    if (window >= 5)
    {
        if (has_hit and !hitpause and !was_parried)
        {
            can_jump = true;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL_AIR){
    if (window == 1)
    {
        if (window_timer == 1)
        {
            reset_hitbox_value(attack, 1, HG_DAMAGE)
            reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK)
            //reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE)
            //reset_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER)
            //reset_hitbox_value(attack, 6, HG_EXTRA_HITPAUSE)
            reset_hitbox_value(attack, 6, HG_DAMAGE)
            //reset_hitbox_value(attack, 6, HG_HITSTUN_MULTIPLIER)
            reset_hitbox_value(attack, 6, HG_BASE_KNOCKBACK)
            //reset_hitbox_value(attack, 6, HG_ANGLE)
            //reset_hitbox_value(attack, 6, HG_DRIFT_MULTIPLIER)
            reset_window_value(attack, 3, AG_WINDOW_LENGTH)
            sound_man = 0;
        }
        if (shield_pressed and ex_meter >= 30)
        {
            if (ex = 0)
            spawn_hit_fx(x, y - 20, 21)
            if (sound_man = 0)
            {
                sound_play(asset_get("sfx_bird_sidespecial"), 0, 0, 0.5, 1)
                sound_man = 1;
            }
            ex = 1;
            ex_draw = 1;
            ex_draw_x = x;
            ex_draw_y = y;            
            set_hitbox_value(attack, 1, HG_DAMAGE, 2)
            set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 6)
            //set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 6)
            //set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, 1)
            set_hitbox_value(attack, 6, HG_DAMAGE, 2)
            set_hitbox_value(attack, 6, HG_BASE_KNOCKBACK, 6)
            //set_hitbox_value(attack, 6, HG_ANGLE, 90)
            //set_hitbox_value(attack, 6, HG_DRIFT_MULTIPLIER, 0)
            //set_hitbox_value(attack, 6, HG_HITSTUN_MULTIPLIER, 1)
            //set_hitbox_value(attack, 6, HG_EXTRA_HITPAUSE, 5)
            set_window_value(attack, 3, AG_WINDOW_LENGTH, 12)
            
        }
    }
    else if (window == 2){
        if (window_timer == 6 or window_timer == 13)
        {
            if (!hitpause)
            sound_play(asset_get("sfx_swipe_weak2"))
        }
    }
    if (window >= 2)
    {
        can_wall_jump = true;
        if (!free)
        {
            if (!was_parried)
            {
                set_state(PS_LANDING_LAG);
                state_timer = 0;
                landing_lag_time = 8;
            }
            else if (was_parried)
            {
                set_state(PS_PRATFALL);
            }
            
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    if (window == 1)
    {
        if (window_timer == 1)
        {
            sound_man = 0;
        }
        if (shield_pressed and ex_meter >= 30)
        {
            if (ex = 0)
            spawn_hit_fx(x, y - 20, 21)
            if (sound_man = 0)
            {
                sound_play(asset_get("sfx_bird_sidespecial"), 0, 0, 0.5, 1)
                sound_man = 1;
            }
            ex = 1;
            ex_draw = 3;
            ex_draw_x = x;
            ex_draw_y = y;
        }
        if (window_timer == 1)
        {
            reset_window_value(attack, 3, AG_WINDOW_VSPEED);
            reset_window_value(attack, 4, AG_WINDOW_LENGTH);
            reset_window_value(attack, 4, AG_WINDOW_TYPE);
        }
    }
    else if (window == 2)
    {
        if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH))
        {
            spawn_hit_fx(x, y - 10, dust);
        }
        if (ex == 1)
        {
            set_window_value(attack, 3, AG_WINDOW_VSPEED, -12);
            set_window_value(attack, 4, AG_WINDOW_LENGTH, 16);
            set_window_value(attack, 4, AG_WINDOW_TYPE, 1); 
            
        }
    }
    else if (window == 4)
    {
        can_wall_jump = true;
    }
    can_move = true;
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
    if (window == 1)
    {
        if (window_timer == 1)
        {
            reset_window_value(attack, 2, AG_WINDOW_LENGTH);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
            sound_man = 0;
        }
        else if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
        {
            if (!hitpause and ex == 1)
            create_hitbox(AT_DSPECIAL, 2, x, y);
        }
        if (shield_pressed and ex_meter >= 30)
        {
            if (ex = 0)
            spawn_hit_fx(x, y - 20, 21)
            if (sound_man = 0)
            {
                sound_play(asset_get("sfx_bird_sidespecial"), 0, 0, 0.5, 1)
                sound_man = 1;
            }
            ex = 1;
            ex_draw = 4;
            ex_draw_x = x;
            ex_draw_y = y;
            set_window_value(attack, 2, AG_WINDOW_LENGTH, 14)
            set_window_value(attack, 3, AG_WINDOW_LENGTH, 10)
        }
    }
    else if (window == 2)
    {
        if (window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH))
        {
            if (ex == 0)
            {   
                if (instance_exists(bento) and !instance_exists(bento2))
                {
                    bento2 = bento;
                }
                else if (instance_exists(bento) and instance_exists(bento2))
                {
                    bento_trash = bento2;
                    bento2 = bento;
                    bento_trash.timer = 0;
                    bento_trash.phase = 2;
                }
                bento = instance_create(x + (54 * spr_dir), y, "obj_article1");
                bento.spr_dir = spr_dir;
                bento.aerial = free;
                if (special_down)
                {
                    bento.hold = 1;
                    bento.phase = -1;
                }
            }
            else if (ex == 1)
            {
                if (instance_exists(bento))
                {
                    bento_trash = bento;
                    bento_trash.timer = 0;
                    bento_trash.phase = 2;
                }
                if (instance_exists(bento2))
                {
                    bento_trash2 = bento2;
                    bento_trash2.timer = 0;
                    bento_trash2.phase = 2;
                }
                bento = instance_create(x + (54 * spr_dir), y, "obj_article1");
                bento2 = instance_create(x + (54 * spr_dir), y, "obj_article1");
                bento.spr_dir = spr_dir;
                bento2.spr_dir = spr_dir;
                bento2.hold = 1;
                bento2.phase = -1;
                bento.aerial = free;
                bento2.aerial = free;
            }
        }
    }
    can_fast_fall = false;
    can_move = false
}

if (attack == AT_TAUNT)
{
    if (window == 1)
    {
        if (window_timer == 1)
        {
            if (get_match_setting(SET_PRACTICE))
            {
                ex_ring = 2;
        	    training_menu = true;
        	}
        }
    }
    if (window == 2)
    {
        if (window_timer >= 10)
        {
            if (training_menu)
            {
                window_timer = 10;
            }
        }
    }
}
/* For next patch
if (window == 1)
{
    if (window_timer == 1)
    {
        meter_build = true;
    }
}*/
if (has_hit and (attack != AT_USPECIAL and attack != AT_FSPECIAL and attack != AT_FSPECIAL_AIR and attack != AT_NSPECIAL and attack != AT_DSPECIAL and attack != AT_USTRONG))
{
    if (!hitpause)
    {
        if (window != 8)
        can_special = true;
    }
    
}
if (window == get_attack_value(attack, AG_NUM_WINDOWS) and (attack != AT_FSPECIAL or attack != AT_FSPECIAL_AIR))
{
    ex_alpha_draw -= 0.05;
    if (window_timer == get_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_LENGTH))
    {
        ex = 0;
        ex_spend = 0;
    }
}
else if (window == 3 and (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR))
{
    ex_alpha_draw -= 0.05;
    if (window_timer == get_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_LENGTH))
    {
        ex = 0;
        ex_spend = 0;
    }
}
if (ex == 1 and ex_spend == 0)
{
    ex_alpha_draw = 0.4
    ex_meter -= 30;
    ex_spend = 1;
    //ex_ring -= 1;
    //meter_build = false; //For next patch
}