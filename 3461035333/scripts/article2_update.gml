if (type = "uspec_smear")
{
    image_angle -= 10*sign(spr_dir);
    if (player_id.attack == AT_USPECIAL)
    {
        if (player_id.window == 1) and (player_id.window_timer < 9)
        {
            hsp = 0;
            vsp = 0;
            die_trigger = 1;
        }
        if (player_id.window == 3)
        {
            die_trigger = 1;
        }
    }
    else
    {
        die_trigger = 1;
    }
    
    if (player_id.state != PS_ATTACK_AIR) 
    and (player_id.state != PS_ATTACK_GROUND)
    {
        die_trigger = 1;
    }
    
    if (die_trigger == 1)
    {
        image_alpha -= 0.06;
        if (image_alpha <= 0)
        {
            instance_destroy();
        }
    }
    
    if (player_id.state == PS_DEAD) or (player_id.state == PS_RESPAWN)
    {
        instance_destroy();
    }
}
if (type == "after_image")
{
    image_alpha -= 0.07;
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
}
if (type == "dspec_hit_fx")
{
    down_b_timer++;
    
    //Stupid manual animation
    if (down_b_timer < 4)
    {
        image_index = 0;
    }
    else if (down_b_timer < 8)
    {
        image_index = 1;
    }
    else if (down_b_timer < 12)
    {
        image_index = 2;
    }
    
    if (down_b_timer == 12)
    {
        image_angle = 0;
        if (player_id.sage_mode == 1) sprite_index = sprite_get("sage_doublejump") else sprite_index = sprite_get("doublejump");
        image_speed = 0.9;
        hsp = -lengthdir_x(7,player_id.last_dspec_angle);
        vsp = -lengthdir_y(7,player_id.last_dspec_angle) - 7;
    }
    
    if (down_b_timer >= 12 and down_b_timer < 23)
    {
        // Gravity
        vsp += 0.7;
    }
    
    if (down_b_timer > 23)
    {
        if (player_id.sage_mode == 1) sprite_index = sprite_get("sage_clone_idle") else sprite_index = sprite_get("clone_idle");
        vsp = vsp / 1.1;
        hsp =  hsp / 1.1;
        image_speed = 0.2;
        image_alpha -= 0.04;
        if (image_alpha <= 0)
        {
            instance_destroy();
        }
    }
}
