//B - Reversals
if(attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
{
    trigger_b_reverse();
}

//Nether Portal
if(attack == AT_UTILT && window == 4 && window_timer == 1)
{
    plat_variant = 0;
    instance_create(x, y-160, "obj_article_platform");
}

//Mushroom
if(attack == AT_USTRONG && window == 5 && window_timer == 1)
{
    plat_variant = 1;
    instance_create(x, y-224, "obj_article_platform");
}

//Slime Cube
if(attack == AT_FTILT && window == 3 && window_timer == 9)
{
    plat_variant = 2;
    instance_create(x+(80*spr_dir), y-64, "obj_article_platform");
}

//Crafting Table
if(attack == AT_DTILT && window == 3 && window_timer == 6)
{
    plat_variant = 3;
    instance_create(x+(72*spr_dir), y-32, "obj_article_platform");
}

//Grass Platform
if(attack == AT_NSPECIAL_AIR && window == 1 && window_timer == 1)
{
    plat_variant = 4;
    instance_create(x, y, "obj_article_platform");
}

//Tnt
if(attack == AT_NSPECIAL && window == 1 && window_timer == 1)
{
    if(tnt_cooldown <= 0)
    {
        sound_play(sound_get("tnt"));
        tnt_cooldown = tnt_cooldown_total;
        y -= 64;
        plat_variant = 5;
        instance_create(x, y, "obj_article_platform");
    }
    else
    {
        window = 2;
        window_timer = 20;
    }
}

//Ender Pearl
if(attack == AT_FSPECIAL)
{
    if(window == 2 && window_timer == 1)
    {
        move_cooldown[AT_FSPECIAL] = 60;
        instance_create(x+(16*spr_dir), y-64, "obj_article2");
    }
}

//Chicken Jockey
if(attack == AT_USPECIAL)
{
    riding_chicken = true;
    if(window == 1 && free)
    {
        vsp = -6;
    }

    if(window == 1)
    {
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }

    if(window == 3)
    {
        move_cooldown[AT_USPECIAL] = 480;
        can_shield = true;
        if(jump_pressed || special_pressed)
        {
            jump_pressed = true;
            clear_button_buffer(PC_SPECIAL_PRESSED);
            can_jump = true;
            free = true;
            set_state(PS_DOUBLE_JUMP);
            vsp = -djump_speed;
        }

        if(!joy_pad_idle && !free)
        {
            hsp  = clamp(hsp+(0.6*sign(lengthdir_x(1.0, joy_dir))), -chicken_max_hsp, chicken_max_hsp);
            if(abs(hsp) > 1 && sign(hsp) != spr_dir)
            {
                spr_dir = -spr_dir;
                destroy_hitboxes();
                window_timer = 0;
                attack_end();
            }
        }
        else
        {
            hsp = clamp(hsp+(air_accel*spr_dir), -chicken_max_hsp, chicken_max_hsp);
        }

        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH))
        {
            window_timer = 0;
            attack_end();
        }
    }
}

//Diamond Armor Cancel
if(attack == AT_NAIR && window == 3 && window_timer >= 8)
{
    can_jump = true;
    can_attack = true;
    can_special = true;
}

//Elytra Wingsuit
if(attack == AT_UAIR)
{
    move_cooldown[AT_UAIR] = 25;
    if(window <= 4)
    {
        hsp = clamp(hsp, -2, 2);
    }
}

//Herobrine
if(attack == AT_DSPECIAL)
{   
    if(window == 1 && window_timer == 3)
    {
        air_herobrine = free;
    }

    if(!air_herobrine && ((window == 1 && window_timer >= 6) || (window >= 1 && window <= 5)))
    {
        super_armor = true;
    }
    else
    {
        super_armor = false;
    }

    if(window == 5 && window_timer == 1)
    {
	    shake_camera(16, 25);
    }
}

//FStrong Cooking Hitbox
if(attack == AT_FSTRONG)
{
    if(window == 3 && window_timer <= 1)
    {
        instance_create(x+(86*spr_dir), y, "obj_article3");
    }
}

//DStrong Cooking Hitbox
if(attack == AT_DSTRONG)
{
    if(window == 3 && window_timer <= 1)
    {
        instance_create(x, y, "obj_article3");
    }
}

if(attack == AT_TAUNT)
{
    can_move = true;
    can_jump = true;
    can_shield = true;
}

if(hit_player_obj != -4)
{
    if(hit_player_obj.activated_kill_effect = 1 && hit_player_obj.state_timer = 0 && lava_attack_timer == -1)
    {
        sound_play(sound_get("lethal_hit"));
        suppress_stage_music(0);
        lethal_hit_timer = 0;
        hit_player_obj.state_timer = 1;
    }
}


