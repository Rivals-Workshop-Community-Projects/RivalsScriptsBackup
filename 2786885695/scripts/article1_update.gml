//article1_update - lightning stilleto

depth = (instance_exists(player_id.stilleto_id) && player_id.stilleto_id != noone) ? player_id.stilleto_id.depth-2 : player_id.depth-2;
state_timer ++;
mask_index = sprite_get("artc_nspec_mask");

switch (state)
{
    case 0: //aiming
        sprite_index = sprite_get("artc_nspec_cursor");
        image_index += 0.15;
        active_time = 0;

        if (state_timer == 1) image_index = 4;

        if (state_timer == 2)
        {
            var electro_timer = spawn_hit_fx(x-1*-player_id.spr_dir+1, y, player_id.fx_nspec_cursorspawn);
            electro_timer.depth = depth-1;
        }

        if (player_id.shield_pressed || player_id.state_cat == SC_HITSTUN ||
        (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)) instance_destroy();
        break;
    case 1: //marker idle
        sprite_index = sprite_get("artc_nspec_idle");
        active_time ++;
        if (active_time < 0) active_time = -1;

        //when it starts up
        with (player_id) 
        {
            //effect spawn
            if (artc_marker.state_timer == 2) if (stilleto_id == noone)
            {
                var fx_spawn = spawn_hit_fx(artc_marker.x-1*-spr_dir+1, artc_marker.y, fx_nspec_marker_spawn);
                fx_spawn.depth = other.depth-1;
            }

            //cooldown
            if (artc_marker.state_timer == 1) if (nspec_cd_start)
            {
                if (!debug_keqing) nspec_cd = 300;
                nspec_cd_start = false;
            }
        }

        //every 60 frames, an animation plays that makes the sprite jitter
        //along with some extra electric sparks
        if (state_timer % 60 == 0)
        {
            var elec_random = random_func(6, 3, true);
            var elec_angle = random_func(7, 360, true);

            var elec_dir = random_func(8, 2, true)-1;
            if (elec_dir == 0) elec_dir = spr_dir;

            var electro_effect = spawn_hit_fx(x, y, player_id.fx_electro[elec_random]);
            electro_effect.draw_angle = elec_angle;
            electro_effect.spr_dir = elec_dir;

            play_anim = true;
        }

        //fog aura
        if (state_timer % 12 == 0)
        {
    	    var aura_angle = random_func(9, 360, true);

    	    var aura_dir = random_func(10, 2, true)-1;
    	    if (aura_dir == 0) aura_dir = spr_dir;

    	    var aura = spawn_hit_fx(x, y, player_id.fx_electro_aura);
    	    aura.draw_angle = aura_angle;
    	    aura.spr_dir = aura_dir;
            aura.depth = depth+1;
        }

        if (play_anim)
        {
            if (image_index == 0) sound_play(asset_get("sfx_absa_orb_missrelease"));
            image_index += 0.5;
            if (image_index == 4)
            {
                play_anim = false;
                image_index = 0;
            }
        }

        //if keqing hits the article with F-spec, she makes the marker explode and bounces off it
        with (pHitBox)
        {
            if (player_id.attack == AT_FSPECIAL) if (variable_instance_exists(player_id, "artc_marker"))
            {
                if (place_meeting(x, y, other) && player_id.artc_marker.state == 1 && player_id.stilleto_id == noone) with (player_id)
                {
                    artc_marker.state = 2;
                    artc_marker.state_timer = 0;
                    vsp = -9;
                    sound_play(asset_get("sfx_absa_harderhit"));
                }
            }
        }

        //condition list:
        // - it reaches the time limit
        // - keqing dies
        // - the targeted player dies
        if (active_time >= despawn_time || (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) ||
        player_id.stilleto_id != noone && (!instance_exists(player_id.stilleto_id) || player_id.stilleto_id.state == PS_DEAD || player_id.stilleto_id.state == PS_RESPAWN))
        {
            player_id.stilleto_id = noone;

            //despawn spark
            var fx_nspec_marker_despawn = spawn_hit_fx(x, y, player_id.fx_nspec_marker_despawn);
            fx_nspec_marker_despawn.depth = depth-1;
            sound_play(asset_get("sfx_absa_jab1"));

            instance_destroy();
        }
        break;
    case 2: //explosion
        sprite_index = player_id.empty;

        if (player_id.stilleto_id != noone) player_id.stilleto_id = noone;

        if (state_timer == 1) 
        {
            var explode = create_hitbox(AT_NSPECIAL, 1, floor(x), floor(y));
            explode.fx_particles = 2;

            //explosion effect (temp)
            spawn_hit_fx(floor(x), floor(y)-4, player_id.fx_nspec_marker_explode);

            sound_play(asset_get("sfx_clairen_hit_strong"));
        }
        if (state_timer == 10) instance_destroy();
        break;
}