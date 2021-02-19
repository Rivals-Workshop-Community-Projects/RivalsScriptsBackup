// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_FSPECIAL)
{

    move_cooldown[AT_FSPECIAL] = 145;

}
if (attack == AT_DSPECIAL)
{
    can_fast_fall = false;
    can_move = false;
    if window == 1
    {
    item_menu_active = true;
    char_height = 92;
    }
    if window = 2 && window_timer = 9
    {
        window = 2;
        window_timer = 0;
    }
    if (down_down && special_pressed && window == 2) || (shield_pressed && window == 2)
    {
        window = 3;
        window_timer = 0;
        item_menu_active = false;
        char_height = 52;
        chosen_item = 0;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }

    if item_menu_active = true
    {
        if attack_pressed
        {
            switch (chosen_item)
            {
                case 0:
                    if legend_used = 0 && general_cooldown = 0
                    {
                        sound_play(sound_get("snd_hero")); 
                        legend_used = 1;
                        general_cooldown = 600;
                        cd_hero = 1200;
                        buff_active = true;
                    }
                    else
                    {
                        sound_play(sound_get("h"));
                    }
                break;
                case 1:
                    if ribbon_used = 0 && general_cooldown = 0
                    {
                        ribbon_used = 1;
                        general_cooldown = 600;
                        cd_ribbon = 1200;
                        armor_active = true;
                    }
                    else
                    {
                        sound_play(sound_get("h"));
                    }
                break;                
                case 2:
                    if tea_used = 0 && general_cooldown = 0
                    {
                        sound_play(sound_get("snd_speedup")); 
                        tea_used = 1;
                        general_cooldown = 900;
                        cd_tea = 1800;
                        initial_dash_speed = 10;
                        dash_speed = 9.5;
                        walk_speed = 5.25;
                        walk_accel = 0.4;
                        leave_ground_max = 10;
                        air_accel = .8;
                        speedbuff_active = true;
                    }
                    else
                    {
                        sound_play(sound_get("h"));
                    }
                break;
                case 3:
                    if sandwich_used = 0 && general_cooldown = 0
                    {
                        sandwich_used = 1;
                        general_cooldown = 300;
                        cd_sandwich = 300;
                    }
                    else
                    {
                        sound_play(sound_get("h"));
                    }
                break;
            }
            sound_play(sound_get("snd_select"));
            window = 3;
            window_timer = 0;
            item_menu_active = false;
            char_height = 52;
            chosen_item = 0;
        }
        if left_pressed && chosen_item>0
        {
            chosen_item-=1;
            sound_play(sound_get("snd_squeak"));
        }
        if right_pressed && chosen_item<3
        {
            chosen_item+=1;
            sound_play(sound_get("snd_squeak"));
        }
    }
    
}
if (attack == AT_DATTACK)
{
    fuckingdie = false;
    if (window == 1)
    {
        if (window_timer == 9) && flowy_active == false
        {
            flowy_active = true;
            var flowy = instance_create(x, y-32,"obj_article2");  
        }
        if (window_timer == 1) && flowy_active == true
        {
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacknf"));
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
        } 
        else if (window_timer == 1) && flowy_active == false
        {
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));    
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_flowy_hurt"));
        }

    }
}
if attack == AT_NSPECIAL
{
    if (window == 2 || window == 3) && cancel == true && !free
    {
        window = 4;
        window_timer = 16;
        cancel = false;
        buffer = 0;
        attack_end();
    }
    reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
    
    if window == 2 && window_timer ==  0
    {
        sound_play(sound_get("snd_heartshot"));
    }
    
    //GROUNDDDDDDDD AAAAAAAAAAAAAAAAAAAAAAA
    if free && (window < 4 && window_timer < 13)
    {
        notinfuckinland = true;
    }
    else if free && (window == 4 && window_timer > 13)
    {
        notinfuckinland = false;
    }
    if !free && (notinfuckinland == true && (window == 1 || window == 2 && window_timer >= 10) && cancel == false)
    {
        cancel = true;
        window = 1;
        window_timer = 15;
        buffer = 0; 
        notinfuckinland = false;
    }
    else if !free && (notinfuckinland == true 
    && (window == 1 && window_timer <= 10 || (window >= 2 && window_timer > 0)))
    {
         window = 4;
         window_timer = 16;
         buffer = 0;        
         notinfuckinland = false;
         attack_end();
    }
    //
    if free 
    {

        set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);

        if window == 3 && window_timer > 12 && special_pressed
        {
            window_timer = 0;
            window = 2;
        }
    }
    else
    {
        if window == 3 && window_timer > 15 && special_pressed
        {
            window_timer = 0;
            window = 2;
        }    

    }
    if !free
    {
        if buffer > 0 && ((window == 3 && window_timer > 15) && window > 1)
        {
            window_timer = 12;
            window = 1;        
            buffer = 0;
        }
    }
    else
    {
        if buffer > 0 && ((window == 3 && window_timer > 10) && window > 1)
        {
            window_timer = 12;
            window = 1;         
            buffer = 0;
        }        
    }

    if special_pressed && (window <= 4 && window > 1)
    {
        buffer++;
        clear_button_buffer( PC_SPECIAL_PRESSED );
    }    


}
if (attack == AT_USTRONG) || (attack == AT_UTILT)
{
    if window >= 1
    {
    char_height = lerp(char_height,143,0.2);
    }
}

if (attack == AT_USPECIAL)
{
    can_fast_fall = false;
    can_wall_jump = true;
    move_cooldown[AT_USPECIAL] = 99999999999;
}