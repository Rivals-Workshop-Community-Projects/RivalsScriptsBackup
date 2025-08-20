//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//scale up to actual size.
draw_xscale = 2*spr_dir;
draw_yscale = 2;

if(attack == AT_DSPECIAL)
{
    if(hbox_num == 1)
    {
        //block projectiles and give sarolyn resources!
        with(asset_get("pHitBox"))
        {
            if(place_meeting(x,y,other) && player != other.player && hit_priority > 0 && hit_priority <= 10)
            {
                if(type == 2 && id != other.id && !transcendent && !plasma_safe)
                {
                    sound_play(sound_effect);
                    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y, 302);
                    other.player_id.saro_frenzy ++;
                    other.player_id.white_flash_timer = 10;
                    sound_play(asset_get("sfx_ori_charged_flame_release"),false,noone,1,1.2);
                    destroyed = true;
                }
            }
        }
    }
    else if(hbox_num == 2)
    {
        visible = false;
        switch(dspec_level)
        {
            case 1: image_xscale = 70/200;  image_yscale = 70/200; break;
            case 2: image_xscale = 100/200;  image_yscale = 100/200; break;
            case 3: image_xscale = 130/200;  image_yscale = 130/200; break;
        }
        switch(nspec_control)
        {
            //Spawn
            case 0:
                image_index = anim_timer/3;
                if(anim_timer == 0) sound_play(sound_get("blackhole"), false, noone, 1, 1);
                if(anim_timer == 12) 
                {
                    hitbox_timer = 0;
                    nspec_control = 1;
                    anim_timer = 0;
                    bhole_sfx = sound_play(sound_get("blackholeloop"), true, noone, 1, 1);
                }
                break;
            //ABSORB!!
            case 1:
                image_index = 4+anim_timer/4;
                if(anim_timer == 39) 
                    anim_timer = 0;
                if(hitbox_timer > 600 || player_id.state == PS_RESPAWN || player_id.state == PS_DEAD || player_id.was_parried)
                {
                    hitbox_timer = 0;
                    anim_timer = 0;
                    nspec_control = 2;
                    sound_play(asset_get("sfx_abyss_seed_fall"),false,noone,1,1.2);
                    sound_play(asset_get("sfx_syl_dspecial_plantaway"),false,noone,1,1);
                    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,0.7,1);
                }
                //Find player if above level 1
                with(oPlayer)
                {
                    if(place_meeting(x,y,other) && id != other.player_id)
                    {
                        //hit players inside if detected!
                        if(state_cat == SC_HITSTUN && state != PS_HITSTUN_LAND && other.player_id.my_grab_id == noone && (last_attack != AT_DSPECIAL && other.player_id.attack != AT_DSPECIAL))
                        {
                            with(other)
                            {
                                anim_timer = 0;
                                nspec_control = 2;
                                hbox = create_hitbox(AT_DSPECIAL, 3, other.x,other.y);
                                hbox.draw_colored = false;
                                hbox.hsp = hsp;
                                hbox.psuedo_melee_hitbox = false;
                                hbox.multihit_amount = 0;
                                hbox.homing_enabled = false;
                                if(other.id == player_id)
                                {
                                    for (var i = 0; i < 20; i++) 
                                    {
                                        if(i != other.player)
                                            hbox.can_hit[other.hit_player_obj.player] = false;
                                    }
                                    hbox.can_hit_self = true;
                                }
                            }
                        }
                        //drag players near this every other frame.
                        if(get_gameplay_time() % 4-other.dspec_level == 0)
                        {
                            drag_spd = 1.5;
                            drag_dir = point_direction(x,y,other.x,other.y);
                            hsp += lengthdir_x(drag_spd,drag_dir)
                            if(free) vsp += lengthdir_y(drag_spd,drag_dir)
                        }
                    }
                    //If this is UAIR, detonate!!
                    else if(place_meeting(x-10*other.player_id.spr_dir,y-40,other) && other.player_id.vsp > 1 && id == other.player_id && other.player_id.my_grab_id != noone && other.player_id.attack == AT_UAIR)
                    {
                        with(other.player_id)
                        {
                            window = 6;
                            window_timer = 0;
                        }
                    }
                }
                //block projectiles and give sarolyn resources!
                with(asset_get("pHitBox"))
                {
                    if(place_meeting(x,y,other) && player != other.player && hit_priority > 0 && hit_priority <= 10)
                    {
                        if(type == 2 && id != other.id && !transcendent && !plasma_safe)
                        {
                            sound_play(sound_effect);
                            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y, 302);
                            with(other)
                            {
                                dspec_level ++;
                                hitbox_timer = 0;
                                fx = spawn_hit_fx(x,y,67);
                                fx.depth = depth-1;
                                sound_play(asset_get("sfx_boss_shine"),false,noone,2);
                                sound_play(asset_get("sfx_forsburn_spew2"),false,noone,1,0.75);
                                sound_play(asset_get("sfx_boss_vortex_start"),false,noone,0.7,1.2);
                                dspec_level = clamp(dspec_level,1,3);
                            }
                            destroyed = true;
                        }
                    }
                }
                break;
            // bye :(
            case 2:
                sound_stop(bhole_sfx);
                image_index = 13+anim_timer/5;
                if(anim_timer >= 15)
                {
                    y = -999;
                    destroyed = true;
                }
                break;
        }
        anim_timer ++;
    }
}
else if(attack == AT_NSPECIAL && hbox_num == 1)
{
    visible = false;
    player_id.move_cooldown[AT_NSPECIAL] = 40;
    //STATE SYSTEM YIPEE
    switch(nspec_control)
    {
        //APPROACH
        case 0:
            image_index = (anim_timer/4);
            if(anim_timer == 5) anim_timer = 0;
            if(hitbox_timer >= 29 || player_id.state_cat == SC_HITSTUN || player_id.state == PS_RESPAWN || player_id.was_parried)
            {
                hitbox_timer = 0;
                anim_timer = 0;
                nspec_control = 2;
                sound_play(asset_get("sfx_boss_shine"), false, noone, 0.7, 1);
                sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.9, 1.5);
            }
            else if(player_id.special_pressed && !nspec_hitpause)
            {
                hitbox_timer = 0;
                anim_timer = 0;
                nspec_control = 1;
                sound_play(sound_get("swing2"));
            }
            else
            {
                //block projectiles and give sarolyn resources!
                with(asset_get("pHitBox"))
                {
                    if(place_meeting(x,y,other) && player != other.player && hit_priority != 0 && hit_priority <= 10)
                    {
                        if(type == 1 && proj_break == 0)
                        {
                            sound_play(sound_effect);
                            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y, hit_effect);
                            
                            with(other)
                            {
                                hitbox_timer = 0;
                                anim_timer = 0;
                                nspec_control = 2;
                                sound_play(asset_get("sfx_boss_shine"), false, noone, 0.7, 1);
                                sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.9, 1.5);
                                destroyed = true;
                            }
                        }
                        else if(type == 2 && id != other.id && proj_break == 0 && !transcendent && !plasma_safe)
                        {
                            sound_play(sound_effect);
                            fx = spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y, 302);
                            fx.depth = depth-1;
                            other.player_id.saro_frenzy ++;
                            other.player_id.white_flash_timer = 10;
                            sound_play(asset_get("sfx_ori_charged_flame_release"),false,noone,1,1.2);
                            if(other.nspec_life == 1) 
                            {
                                other.nspec_hitpause = true;
                                other.nspec_hitpause_timer = hitpause;
                                other.nspec_life --; 
                            }
                            else 
                            {
                                with(other)
                                {
                                    hitbox_timer = 0;
                                    anim_timer = 0;
                                    nspec_control = 2;
                                    sound_play(asset_get("sfx_boss_shine"), false, noone, 0.7, 1);
                                    sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.9, 1.5);
                                    destroyed = true;
                                }
                            }
                            destroyed = true;

                        }
                    }
                }
            }
            break;
        //SLASH
        case 1:
            hsp /= 1.2;
            image_index = 2+(anim_timer/(image_index<=3?3:4));
            if(anim_timer == 4)
            {
                hbox = create_hitbox(AT_NSPECIAL, 2, x+10*spr_dir,y);
                hbox.draw_colored = false;
                hbox.hsp = hsp;
                hbox.psuedo_melee_hitbox = false;
                hbox.multihit_amount = 0;
                hbox.homing_enabled = false;
            }
            else if(anim_timer == 22){
                sound_play(asset_get("sfx_boss_shine"), false, noone, 0.7, 1);
                sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.9, 1.5);
            }
            if(image_index == 11)
            {
                y = -999;
                destroyed = true;
            }

            //HitDetection
            with(asset_get("pHitBox"))
            {
                if(place_meeting(x,y,other) && player != other.player && hit_priority != 0 && hit_priority <= 10)
                {
                    if(type == 1 && proj_break == 0)
                    {
                        sound_play(sound_effect);
                        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y, hit_effect);
                        
                        with(other)
                        {
                            hitbox_timer = 0;
                            anim_timer = 0;
                            nspec_control = 2;
                            sound_play(asset_get("sfx_boss_shine"), false, noone, 0.7, 1);
                            sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.9, 1.5);
                            destroyed = true;
                        }
                    }
                }
            }
            
            break;
        //FADE
        case 2:
            hitbox_timer = 0;
            image_index = 11+(anim_timer/4);
            hsp /= 2;
            if(anim_timer >= 20) 
            {
                y = -999;
                destroyed = true;
            }
            break;

    }
    //:eye:
    if(!nspec_hitpause) anim_timer ++;
    else 
    {
        hitbox_timer --;
        x -= hsp;
        nspec_hitpause_timer--;
        if(nspec_hitpause_timer <= 0) nspec_hitpause = false;
    }
}

//if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

if (psuedo_melee_hitbox)
{
    player_id.has_hit = has_hit;
    player_id.has_hit_player = has_hit_player;
    
    if (in_hitpause)
    {
        hitbox_hitstop = player_id.hitstop;
        if (hitbox_hitstop <= 0) in_hitpause = false;
    }
}

//multihit projectile code, only should run if multihit_hit_player actually exists
if (multihit_amount > 0)
{
    if (instance_exists(multihit_hit_player) && multihit_hit_player != noone)
    {
        if (!in_hitpause)
        {
            if (proj_hit_count <= multihit_amount - 1 && !proj_multihit_final) //multihitting
            {
                with (multihit_hit_player) //forces the hit player to travel along the projectile so they won't fall off
                {
                    //what this chunk of code does is record the size of the hitbox
                    other.old_xscale = other.image_xscale;
                    other.old_yscale = other.image_yscale;

                    //this part increases the size of the hitbox for the collision check
                    other.image_xscale = ((other.image_xscale*200)+other.additional_radius)/200;
                    other.image_yscale = ((other.image_yscale*200)+other.additional_radius)/200;

                    if (place_meeting(x, y, other)) //collision check
                    {
                        //this checks how close the hit player is to the center of the projectile
                        //affecting their pull into it, making it harded to DI the closer the player is to the center
                        var dist = point_distance(x, y, other.x, other.y);
                        var target_hsp = other.hsp * 0.6;
                        var target_vsp = other.vsp - gravity_speed * !free;
                        hsp = lerp(hsp, target_hsp, (1-clamp(0.05*dist, 0, 1))); //pull towards the center of the projectile
                        vsp = lerp(vsp, target_vsp, (1-clamp(0.05*dist, 0, 1)));

                        other.multihit_escape_time = 0; //reset the escape value, which allows the hit player to escape the projectile
                    }
                    else
                    {
                        other.multihit_escape_time ++; //counts up, if it goes over 5 the player will escape the projectile
                        if (other.multihit_escape_time > 5) other.multihit_hit_player = noone;
                    }

                    //reset the size of the hitbox to the proper size so it doesn't stay and grow
                    other.image_xscale = other.old_xscale;
                    other.image_yscale = other.old_yscale;
                }

                proj_gap_timer --; //will count down all the time and act as a cooldown
                if (proj_gap_timer == 0) proj_hit_count ++; //increment hit count when the timer reaches 0
                
                if (proj_gap_timer <= 0) //if the gap timer is/under 0, allow the proectile to hit again
                {
                    for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
                    if (proj_hit_count >= multihit_amount - 1) proj_multihit_final = true; //if the hit count is almost reaching the amount, count the next hit as final
                }
            }
            
            if (proj_multihit_final) //final hit
            {
                kb_value = multproj_saved_values[0];
                kb_scale = multproj_saved_values[1];
                hitpause = multproj_saved_values[2];
                hitpause_growth = multproj_saved_values[3];
                hit_effect = multproj_saved_values[4];
                sound_effect = multproj_saved_values[5];
                kb_angle = multproj_saved_values[6];
                damage = multproj_saved_values[7];
                can_tech = multproj_saved_values[8];
            }
        }
        else
        {
            hitbox_hitstop = multihit_hit_player.hitstop;
            if (hitbox_hitstop <= 0) in_hitpause = false;
        }
    }
}

//projectile homing
if (homing_enabled) //original code by DarkDakurai, modified slightly by Bar-Kun
{
    if (!in_hitpause) //should only work if the projectile isn't in hitpause
    {
        //homing detection
        with (oPlayer) if (player != other.player) //make sure the player isn't the current owner of the projectile and isn't a clone
        {
            //if the target doesn't exist set it to the current player
            //otherwise if there is another, closer target, set the target to them instead
            if (other.home_target == noone) other.home_target = self;
            else if (distance_to_object(other) < point_distance(other.x, other.y, other.home_target.x, other.home_target.y)) other.home_target = self;
        }

        //apply homing to nearest target
        if (instance_exists(home_target))
        {
            //helps us detect the actual center of the target's hurtbox, otherwise it would aim for their feet
            var near_angle = point_direction(x, y, home_target.x, home_target.y - home_target.char_height/2);
            hsp = lerp(hsp, home_max_speed * dcos(near_angle), home_turn_speed);
            vsp = lerp(vsp, -home_max_speed * dsin(near_angle), home_turn_speed);
        }

        //optional - make projectile tilt along the direction it's moving (* make sure the projectile's sprite goes straight right for the best results)
        proj_angle = point_direction(x, y, x + hsp * spr_dir, y + vsp * spr_dir);
    }
}