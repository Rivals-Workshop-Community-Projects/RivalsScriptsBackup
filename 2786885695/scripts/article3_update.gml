//article3_update - damage numbers

state_timer ++;

switch (state)
{
    case 0: //damage numbers
        if (is_healing)
        {
            color = $30f408;
            is_crit = false;
        }

        //crit setup
        if (is_crit && state_timer == 1)
        {
            scale = 5;
            destroy_on = 50;
        }

        if (player_id.is_gb) color = c_white;

        move -= 0.5;
        if (scale > 2+is_crit*0.5) scale -= 0.25;
        else if (scale <= 2) scale = 2;

        if (state_timer > destroy_on - 5) alpha -= 0.2;

        if (state_timer >= destroy_on) instance_destroy();
        break;
    case 1: //elemental particles
        //setup
        sprite_index = is_orb ? sprite_get("runeE_orb") : sprite_get("runeE_part");
        can_be_grounded = true;
        ignores_walls = false;

        image_index = state_timer*part_anim_speed;

        //check distance
        var dist = point_distance(x, y, player_id.x, player_id.y-32);
        var angle = point_direction(x, y, player_id.x, player_id.y-32);
        collecting_particle = (dist < 300 && state_timer > 40);

        if (state_timer < 2)
        {
            //friction setup
            if (part_angle > 90 && part_angle < 270) spr_dir = -1;
            else spr_dir = 1;
        }

        //afterimage
        if (abs(hsp) > 0 || abs(vsp) > 1)
        {
            var fx_ai = spawn_hit_fx(x, y, player_id.fx_runeE_afterimage);
            fx_ai.depth = depth + 1;
        }
        

        //collecting
        if (!collecting_particle)
        {
            collect_time = 0;

            if (!free && hsp*spr_dir > 0) //"ground friction"
            {
                hsp -= 0.7*spr_dir;
                hsp = clamp(hsp, spr_dir*10, 0);

                vsp += 1; //"gravity"
            }

            vsp += 0.3; //"gravity"
        }
        else
        {
            collect_time ++;
            hsp = lengthdir_x(collect_time/20, angle) + hsp;
            vsp = lengthdir_y(collect_time/20, angle) + vsp;

            //collecting elemental particles
            if (place_meeting(x, y, player_id))
            {
                if (player_id.has_burst) player_id.burst_charge += (is_orb*3+1)*3;
                if (player_id.has_resolve_mechanic) player_id.resolve_cur += (is_orb*3+1)*3;
                sound_play(sound_get("sfx_orb_collect"), false, 0, is_orb*0.25+0.25);
            }
        }

        //despawn particles
        if (state_timer >= 300 && !collecting_particle || collecting_particle && place_meeting(x, y, player_id)
        || y < -32 || y > room_height+32 || x < -32 || x > room_width+32)
        {
            player_id.particle_amount --;
            instance_destroy();
        }
        break;
}

