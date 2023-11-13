//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

switch (attack)
{
    case AT_NSPECIAL: //multihit
        if (hbox_num == 2 && has_rune("E")) //rune E makes the 2nd charge explode on impact
        {
            //these two are added so it ignore the default walls/ground check
            grounds = 1;
            walls = 1;

            //we place our own check here, which sees if the projectile hit a wall, platform or it's time ran out
            if (place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")) || hitbox_timer == length-1)
            {
                sound_play(asset_get("sfx_ori_seinhit_medium")); //plays explosion sound
                create_hitbox(AT_NSPECIAL, 4, x, y); //spawns explosion projectile
                destroyed = true; //destroy the projectile when everything is done
            }
        }
        
        //restore speed to the projectile if it doesn't hit the next multihit on time (if it wasn't parried or homing isn't enabled)
        if (hbox_num == 3)
        {
            if (should_record_nspec3_values && proj_gap_timer <= 1)
            {
                hsp = was_parried ? -nspec3_hsp : nspec3_hsp; //these vaules are recorded on creation
                vsp = was_parried ? -nspec3_vsp : nspec3_vsp;
            }
        }

        if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over
        break;
    case AT_FSPECIAL: //tether
        if (hbox_num == 2)
        {
            //if the hitbox sees blocks it should collide with, the fspec_found_target variable is set to true
            if (place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough"))) player_id.fspec_found_target = true;
        }
        break;
}

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



//final smash workshop compatibility
if (attack == player_id.fs_char_attack_index)
{
    //this code allows the projectile to refresh it's hits, similarly to multihits
    //but instead of applying to all players it applies to players individually
    for (var i = 0; i < array_length(can_hit); i++)
    {
        if (can_hit[i] <= 0) //technecally speaking, everything below 0 (or false) still counts as false
        {
            can_hit[i] --;
            if (can_hit[i] <= -100) can_hit[i] = 1; //if it reaches -100 (100 frames), it refreshes the hit
        }
    }

    stop_effect = false; //this lets the hit effect spawn again

    //will force the projectile to disappear if it's offscreen
    //image_xscale*200 will check the real size width of the projectile and offset it from there (the hitbox image in the game files is 200 x 200, which is why it's checked like it)
    if ((x + (image_xscale*200) < get_stage_data(SD_LEFT_BLASTZONE_X) || x - (image_xscale*200) > get_stage_data(SD_RIGHT_BLASTZONE_X)) && hitbox_timer < length-1)
    {
        hitbox_timer = length;
    }

    //spawns the hit effect with a sound when the projectile is nearing the end of it's time
    if (hitbox_timer == length - 1)
    {
        sound_play(asset_get("sfx_abyss_despawn"));
        spawn_hit_fx(x, y, hit_effect);
    }
}