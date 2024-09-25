//article2_update - electro afterimage

depth = player_id.depth-1;
state_timer ++;

switch (state)
{
    case 0: //hitbox startlag
        if (state_timer == 1) spawn_hit_fx(x, y, player_id.fx_dspec_spawn);
        if (state_timer == 10)
        {
            state = 1;
            state_timer = 0;
            sound_play(asset_get("sfx_absa_new_whip1"))
        }
        break;
    case 1: //active
        sprite_index = sprite_get("artc_dspec_afterimage");

        //spawn hitbox
        if (state_timer == 1 && !instance_exists(hitbox))
        {
            spr_dir = player_id.spr_dir;
            hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
            hitbox.fx_particles = 2;
        }

        //countdown
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
        if (state_timer % 3 == 0)
        {
    	    var aura_angle = random_func(9, 360, true);
            var aura_y = random_func(10, 4, true)*8;
            var aura_x = (random_func(11, 5, true)-2)*4;

    	    var aura_dir = random_func(12, 2, true)-1;
    	    if (aura_dir == 0) aura_dir = spr_dir;

    	    var aura = spawn_hit_fx(x+aura_x, y-aura_y+16, player_id.fx_electro_aura);
    	    aura.draw_angle = aura_angle;
    	    aura.spr_dir = aura_dir;
            aura.depth = -3;
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

        //end
        if (state_timer == despawn_time || !instance_exists(hitbox) && state_timer > 1 || hitbox.was_parried
        || (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN))
        {
            //despawn effect - also used when it's destroyed by a hitbox
            var fx_end = spawn_hit_fx(x, y, player_id.fx_dspec_despawn);
            fx_end.depth = -6;
            fx_end.spr_dir = spr_dir;
            sound_play(asset_get("sfx_absa_singlezap1"));

            player_id.afterimage_amount --;

            player_id.move_cooldown[AT_DSPECIAL] = 40;
            instance_destroy();
        }
        break;
}