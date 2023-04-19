//hitbox_update

switch (attack)
{
    case AT_USTRONG:
        generate_particles(hbox_num-4); //particles
        if (hbox_num == 5) if (instance_exists(fx)) fx.draw_angle = proj_angle+45*spr_dir;
        break;
    //light dagger
    case AT_NTHROW: case AT_NSPECIAL_AIR:
        generate_particles(hbox_num-1); //particles
    
        if (place_meeting(x, y, asset_get("par_block"))) destroyed = true;

        if (hitbox_timer == length - 1 || destroyed) //disappear effect
        {
            switch (hbox_num)
            {
                case 1:
                    spawn_hit_fx(x, y, player_id.fx_lightblow[0]);
                    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
                    break;
                case 2:
                    spawn_hit_fx(x, y, player_id.fx_fireblow[0]);
                    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
                    break;
            }
        }
        
        if (attack == AT_NSPECIAL_AIR)
        {
            proj_angle = -45 * spr_dir;
            if (was_parried) proj_angle = 45 * spr_dir;
        }
        break;
    //light hookshot
    case AT_EXTRA_2:
        if ("explosive_spear" in self) generate_particles(explosive_spear); //particles

        if (hbox_num == 1 && player_id.is_attacking)
        {
            if (!explosive_spear)
            {
                if (player_id.hook_grab == 0)
                {
                    if (has_hit && player != other) player_id.hook_grab = 1; //players
                    else if (place_meeting(x, y, asset_get("par_block"))) player_id.hook_grab = 2; //the ground and walls
                }
                if (player_id.hook_grab > 0) destroyed = true;
            }
            else
            {
                if (place_meeting(x, y, asset_get("par_block")))
                {
                    create_hitbox(attack, 2, x, y); //the ground and walls
                    sound_play(asset_get("sfx_burnconsume"))
                    destroyed = true;
                }
            }
        }
        
        if (hbox_num == 2 && hitbox_timer == 1) spawn_hit_fx(x, y, player_id.fx_fireblow[2])
        break;
    //polaris
    case AT_USPECIAL_2:
        var proj_speed = 0;
        var hit_sound_played = false;
        
        //hit particles
        fx_particles = 1;

        //afterimage effect
        if (hitbox_timer % 4 == 0) spawn_hit_fx(x, y, player_id.fx_skill7_afterimage);

        //target changing
        if (!instance_exists(player_id.hit_player_obj))
        {
            if (player_id.hit_player_obj.clone || player_id.hit_player_obj.custom_clone) //if they had a clone, go track the original
            {
                with (oPlayer) if (player == other.player_id.hit_player_obj) other.player_id.polaris_id = self;
            }
            else //search for new target if the hit_player_obj doesn't exist
            {
                var closest_distance = 9999999999999;
                with (oPlayer)
                {
                    if (self != other.player_id && point_distance(x, y, other.x, other.y) < closest_distance)
                    {
                        closest_distance = point_distance(x, y, other.x, other.y);
                        other.player_id.polaris_id = self;
                    }
                }
            }
        }

        if (was_parried) player_id.polaris_id = player_id;

        //hit detection
        for(var i = array_length(can_hit); i > -1; i--;)
        {
            if (i != player_id.polaris_id.player) can_hit[i] = false;
            else can_hit[i] = true;
        }
        
        //homing
        if (player_id.polaris_id != noone && !was_parried)
        {
            if (hitbox_timer < 30) proj_speed = -10 + hitbox_timer;
            else proj_speed = 20;

            var angle = point_direction(x, y, player_id.polaris_id.x, player_id.polaris_id.y-player_id.polaris_id.char_height+16);
            hsp = lengthdir_x(proj_speed, angle);
            vsp = lengthdir_y(proj_speed, angle);

            if (hitbox_timer == length)
            {
                sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
                spawn_hit_fx(x, y, player_id.fx_lightblow[0]);
            }

            //if the target is dead kill this hitbox
            if (player_id.polaris_id.state == PS_RESPAWN || player_id.polaris_id.state == PS_DEAD) length = 0;
        }

        //if the projectile was parried, return to sender
        if (was_parried)
        {
            length = 300;
            proj_speed = 10;
            kb_angle = 70;
            kb_value = 8;
            hitpause = 20;

            if (hitbox_timer == 0)
            {
                angle = point_direction(x, y, player_id.x, player_id.char_height+16);
                hsp = lengthdir_x(proj_speed, angle);
                vsp = lengthdir_y(proj_speed, angle);
            }
        }
        break;
    //theikos D-strong
    case AT_DSTRONG_2:
        switch (hbox_num)
        {
            case 1:
                grounds = (hitbox_timer < 3 && !player_id.dstrong2_was_freemd && player_id.strong_charge > 0); //makes it so it only passes through the first platform

                if ((freemd || !free && hitbox_timer > 1 || hitbox_timer == length - 1) && grounds == 0)
                {
                    destroyed = true;
                    var hit_collision = create_hitbox(attack, 2, x, y);
                    hit_collision.fx_particles = 2;

                    dstrong2_fire_spread();
                }

                if (player_id.theikos_type > 0)
                {
                    length = 9999999;
                    projectile_parry_stun = 0;
                    transcendent = 1;
                }
                break;
            case 2: case 3:
                if (player_id.theikos_type > 0)
                {
                    projectile_parry_stun = 0;
                    if (transcendent == 0) transcendent = 1;
                }
                break;
        }
        break;
    //rune I debris projectile
    case AT_DSTRONG:
        if (hbox_num == 5 && hitbox_timer == length-1) spawn_hit_fx(x, y, 301); //change to a custom hit effect of a rock breaking maybe?
        break;
    //lightstun hitbox
    case 48:
        //it needs to hit only 1 person, the one affected by the lightstun countdown
        can_hit_self = true;

        for (var i = 0; i < 20; ++i) can_hit[i] = 0;
        with (oPlayer) if (lightstun_type == 1) other.can_hit[player] = 1;
        break;
}



///////////////////////////////////////////////////////////////////////////////

#define generate_particles(type)
{
    var random_x = (random_func(24, 5, true)-2)*4;
    var random_y = (random_func(25, 5, true)-2)*4;
    var random_fx = random_func(26, 3, true);

    switch (type)
    {
        case 0: //light particles
            type = player_id.fx_light_follow;
            break;
        case 1: //fire particles
            type = player_id.fx_burn;
            break;
    }

    fx = spawn_hit_fx(floor(x+random_x), floor(y+random_y), type);
    fx.spr_dir = -spr_dir;
}
#define dstrong2_fire_spread
{
    var fx_collision = spawn_hit_fx(x, y, player_id.fx_fireblow[2]);
    fx_collision.depth = -7;
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);

    if (!player_id.dstrong2_active && hbox_num == 1 && (freemd || !free && hitbox_timer > 1))
    {
        player_id.dstrong2_active = true;
        player_id.dstrong2_startpos = [x, y];
    }
}