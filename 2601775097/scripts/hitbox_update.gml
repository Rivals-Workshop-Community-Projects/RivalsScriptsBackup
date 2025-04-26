//hitbox_update

if (was_parried) draw_xscale = spr_dir;

switch (attack)
{
    case AT_USTRONG:
        generate_particles(hbox_num-4); //particles
        if (hbox_num == 5) if (instance_exists(fx)) fx.draw_angle = proj_angle+45*spr_dir;

        image_angle = proj_angle-90;

        if (place_meeting(x, y, asset_get("par_block"))) destroyed = true;

        if (hbox_num == 4 && player_id.rune_H_active)
        {
            artc.chain_end[0] = x;
            artc.chain_end[1] = y;
            if (hitbox_timer % 2 == 0) artc.chain_amount ++;
            if (hitbox_timer >= length - 1 || destroyed) remove_light_chains();
        }
        break;
    case AT_NTHROW: case AT_NSPECIAL_AIR: //light dagger
        generate_particles(hbox_num-1); //particles
    
        if (place_meeting(x, y, asset_get("par_block")) || "touching_childe_wall" in self && touching_childe_wall) destroyed = true;

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
        break;
    case AT_USPECIAL_2: //polaris
        //hit particles
        fx_particles = 1;

        if (!shoot_projectile)
        {
            depth = 3;
            length ++;

            if (hitbox_timer > 2) with (player_id) if (attack == other.attack && y - other.y < 32) other.depth = depth-1;
        }
        else
        {
            depth = player_id.depth - 1;

            if (image_xscale == 0)
            {
                image_xscale = saved_size_x;
                image_yscale = saved_size_y;
            }

            //afterimage effect
            if (hitbox_timer % 4 == 0) spawn_hit_fx(x, y, player_id.fx_skill7_afterimage);

            //target changing
            if (!instance_exists(home_id))
            {
                var closest_distance = 9999999999999;
                with (oPlayer)
                {
                    if (self != other.player_id && point_distance(x, y, other.x, other.y) < closest_distance && get_player_team(player) != get_player_team(other.player))
                    {
                        closest_distance = point_distance(x, y, other.x, other.y);
                        other.home_id = self;
                    }
                }
                with (obj_stage_article) if ("enemy_stage_article" in self)
                {
                    if (self != other.player_id && point_distance(x, y, other.x, other.y) < closest_distance)
                    {
                        closest_distance = point_distance(x, y, other.x, other.y);
                        other.home_id = self;
                    }
                }
            }

            if (was_parried) home_id = player_id;

            //hit detection
            for(var i = array_length(can_hit); i > -1; i--;)
            {
                if (i == home_id.player) can_hit[i] = true;
                else can_hit[i] = false;
            }
            
            //homing
            if (home_id != noone && !was_parried)
            {
                var angle = point_direction(x, y, home_id.x, home_id.y-home_id.char_height+16);
                //if the target is dead kill this hitbox
                if (home_id.state == PS_RESPAWN || home_id.state == PS_DEAD ||
                    "enemy_stage_article" in home_id && home_id.state == 9) length = 0;
                
                if (hitbox_timer == 1)
                {
                    hsp = lengthdir_x(-proj_speed, angle);
                    vsp = lengthdir_y(-proj_speed, angle);
                }
                hsp = lerp(hsp, proj_speed * dcos(angle), proj_turn_spd);
                vsp = lerp(vsp, -proj_speed * dsin(angle), proj_turn_spd);

                if (hitbox_timer == length)
                {
                    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
                    spawn_hit_fx(x, y, player_id.fx_lightblow[0]);
                }
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
        }
        break;
    case AT_EXTRA_2: //light hookshot
        if (hbox_num < 3) generate_particles( (hbox_num == 2) ); //particles

        if (hbox_num == 1 && player_id.is_attacking)
        {
            if (player_id.hook_grab == 0 && player_id.attack == attack)
            {
                //players
                if (has_hit && player != other) player_id.hook_grab = 1;
                else if (place_meeting(x, y, asset_get("par_block")) || "touching_childe_wall" in self && touching_childe_wall) player_id.hook_grab = 2;
                //the ground and walls

                player_id.hook_dist = abs(player_id.x - x);
                
                var segments = floor(6-abs(hsp/6)); //dynamically changes the amount of chain links on the image
                if (hitbox_timer % segments == 0) artc.chain_amount ++;
                artc.chain_end[0] = x;
                artc.chain_end[1] = y;
            }
            if (player_id.hook_grab > 0) destroyed = true;

            if (hitbox_timer >= length - 1 || destroyed) remove_light_chains();
        }
        else if (hbox_num == 2)
        {
            if (place_meeting(x, y, asset_get("par_block")) || "touching_childe_wall" in self && touching_childe_wall)
            {
                create_hitbox(attack, 3, x, y); //the ground and walls
                sound_play(asset_get("sfx_burnconsume"));
                destroyed = true;
            }
        }
        
        if (hbox_num == 3 && hitbox_timer == 1) spawn_hit_fx(x, y, player_id.fx_fireblow[2])
        break;
    case AT_EXTRA_1: //chasm burster
        if (hbox_num == 2 || hbox_num == 4)
        {
            //this timing needs to match the vfx
            //come back later to put the visual of the hitbox as part of the hitbox itself rather than a hit effect (might be more optimized to spawn 1 object than 2 lol)
            if (hitbox_timer == 4)
            {
                y -= y_pos + 40;
                image_yscale = 90/200;
            }
        }
        break;
    case AT_DSTRONG_2: //theikos D-strong
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
    case AT_DSTRONG: //rune I debris projectile
        if (hbox_num == 5 && hitbox_timer == length-1) spawn_hit_fx(x, y, 301); //change to a custom hit effect of a rock breaking maybe?
        break;
    
    case 48: //lightstun hitbox
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
#define remove_light_chains
{
    for (var i = 0; i < instance_number(obj_article1); i++)
    {
        var obj = instance_find(obj_article1, i);
        if ("is_bar_artcmaster" in obj && obj.state == "hook_chain" && obj.player_id == player_id)
        {
            with (obj)
            {
                window = 3;
                window_timer = 0;
            }
            break;
        }
    }
}