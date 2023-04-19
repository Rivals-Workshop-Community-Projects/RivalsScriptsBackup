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
        
        if (hbox_num == 3) //restore speed to the projectile if it doesn't hit the next multihit on time (if it wasn't parried)
        {
            if (proj_gap_timer <= 1)
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