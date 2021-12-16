//article2_update
//various attacks

switch (state)
{
    case 4: //accel blitz indicator
        free = true;
        can_be_grounded = false;
        ignores_walls = false;
        mask_index = sprite_get("artc_accelblitz_indicator");

        sprite_index = sprite_get("accelblitz_indicator");
        image_xscale = 2;
        image_yscale = 2;
        image_alpha = 0.8;
        
        //visual work
        if (player_id.attack == player_id.AT_SKILL4 && player_id.window == 2)
        {
            if (golden && alt_cur != 26) image_index = alt_cur+27;
            else
            {
                image_index = alt_cur;
                if (!player_id.is_8bit && alt_cur != 9) image_alpha = 1;
                else image_alpha = 0.8;
            }
        }
        else image_alpha = 0;
        break;

    case 12: //theikos D-strong
        can_be_grounded = true;
        ignores_walls = false;
        
        //graphical stuff
        if (golden) sprite_index = sprite_get("theikos_fx_dstrong_fireground");
        else sprite_index = sprite_get("fx_dstrong_t_fireground");
        anim_speed = 0.38;
        image_index += anim_speed;

        //hitbox
        //thanks Frtοud!
        if (!instance_exists(groundfire))
        {
            groundfire = create_hitbox(AT_DSTRONG_2, 3, x, y-8);
            groundfire.fx_particles = 2;
            if (player_id.user_event_1_active) groundfire.fx_particles = 6;
        }
        if (state_timer % 10 == 0)
        {
            for (var p = 0; p < array_length(groundfire.can_hit); p++) groundfire.can_hit[p] = true; 
        }

        //time based stuff
        state_timer ++;

        //sound stuff
        if (state_timer == 1) sound_play(player_id.sfx_fire, 1, 0, 0.2);
        else if (state_timer == 79)
        {
            sound_stop(player_id.sfx_fire);
            sound_play(asset_get("sfx_burnend"), 0, 0, 0.2);
        }
        //destruction of the article
        if (state_timer >= 80 || image_index > 31) instance_destroy();
        break;
}