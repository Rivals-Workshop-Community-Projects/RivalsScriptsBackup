//Update the buffer with the Player's current Position
buffer_history[buffer_index] = [player_id.x, player_id.y]
buffer_index = (buffer_index + 1) % buffer_frames;

if (spawn_buffer < 25){
    spawn_buffer++;
    return;
}



// Get the players position 20 frames ago
var new_index = (buffer_index - buffer_frames + buffer_frames) % buffer_frames;
var travel_point = buffer_history[new_index];
travel_point_x = travel_point[0];
travel_point_y = travel_point[1];

//print(string(new_index) + " --- " + string(travel_point_x) + ", " + string(travel_point_y));

switch (fidget_state) {
    case 0:
        if (sprite_index != spr_idle) sprite_index = spr_idle;
        image_index = fidget_timer / 5;
        //var resting_x = travel_point_x + 50 * -player_id.spr_dir;
        var x_dist = point_distance(x, 0, travel_point_x, 0);
        var y_dist = point_distance(0, y, 0, travel_point_y);

        // If fidget is close enough, set the travel point behind Dust
        // This avoids crazy movement when turning around
        if (x_dist < 70) {
            travel_point_x += 50 * -player_id.spr_dir;
            x_dist = point_distance(x, 0, travel_point_x, 0);
        }

        if (x_dist > 5) {
            if (travel_point_x > x) hsp = x_dist * travel_speed;
            else hsp = -(x_dist * travel_speed);
        }
        else hsp = 0;

        if (y_dist > 5) {
            if (travel_point_y > y) vsp = y_dist * travel_speed;
            else vsp = -(y_dist) * travel_speed;
        }
        else vsp = 0;

        if (x > player_id.x) spr_dir = -1;
        else spr_dir = 1;

        // OLD CODE
        // Flatly set the x and y to the buffer point?
        //x = travel_point_x + 20;
        //y = travel_point_y - 10;
        // Stick to the player
        //x = player_id.x - 40;
        //y = player_id.y - 40;
        //spawn_hit_fx( x, y - 32, 302 );

        if (player_id.special_pressed && input_buffer == 0 && !fid_panic) {
            if (player_id.down_down) {
                if (player_id.active_spell == 2) player_id.active_spell = 0;
                else player_id.active_spell++;
                player_id.spell_change_anim = true;
            }
            else if (!player_id.up_down && !player_id.right_down && !player_id.left_down) {
                if (player_id.active_spell == 0 && !player_id.exhausted) {
                    player_id.stamina -= player_id.spell_one_cost;
                    switch_state(3);
                }
                if (player_id.active_spell == 1 && !player_id.exhausted) {
                    player_id.stamina -= player_id.spell_two_cost;
                    switch_state(1)
                }
                if (player_id.active_spell == 2 && !player_id.exhausted) {
                    sound_play(asset_get("sfx_absa_cloud_crackle"));
                    player_id.stamina -= player_id.spell_three_cost;
                    switch_state(2);
                }
            }
            
            input_buffer += 8;
        }
        break;

    case 1:
        // Fireball
        if (sprite_index != spr_fire) sprite_index = spr_fire;
        image_index = fidget_timer / 4;
        // Write lerp values later
        vsp = 0;
        hsp = 0;
        if (fidget_timer == 1) {
            if (voiced) sound_play(vc_shot3);
            sound_play(asset_get("sfx_zetter_fireball_fire"));
        }
        if (fidget_timer <= 8 && fid_panic) {
            switch_state(4);
        }
        if (fidget_timer == 8) {
            var new_proj = create_hitbox(AT_NSPECIAL, 2, x, y - 40);
            new_proj.hsp = 7 * spr_dir;
            new_proj.spr_dir = spr_dir;
            new_proj.draw_xscale = spr_dir;
        }

        if (fidget_timer == 20) { 
            switch_state(0);
        }
        break;
    case 2:
        // I got really drunk and rewrote this
        // Only God knows what it does now

        // Lightning
        if (sprite_index != spr_light) sprite_index = spr_light;
        image_index = fidget_timer / 45;
        //Write Lerp values later
        vsp = 0;
        hsp = 0;
        //if (player_id.special_down && fidget_timer < 4) {
        //    fidget_timer -= 1;
        //    player_id.stamina -= 1;
        //    if (player_id.stamina <= 0) {
        //        player_id.stamina = 0;
        //        fidget_timer = 5;
        //    }
        //}
        if (fidget_timer == 1) {
            spawn_hit_fx(x, y - 40, 21);   
        }
        if (fidget_timer <= 54 && fid_panic) {
            //draw_circle_color(x, y, 50, c_blue, c_blue, true);
            switch_state(4);
        }
        if (fidget_timer == 54) {
            if (voiced) sound_play(vc_light1);
            sound_play(asset_get("sfx_absa_boltcloud"));
            spawn_hit_fx(x, y - 40, 20);
            // this is where shit gets complicated
            if ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_FSPECIAL_AIR) && (player_id.window > 1 && player_id.window < 5)) {
                //print("Confirmed")
                for (var i = 0; i < array_length(opponents); i++) {
                    var opp = opponents[i];
                    var opp_y = opp.y - floor(sprite_get_height(opp.hurtbox_spr) / 2);
                    //var opp_dist = point_distance(x, y - 40, opp.x, opp_y);
                    //var opp_dir = point_direction(x, y - 40, opp.x, opp_y);
                    //var opp_step_size = 50 / opp_dist;

                    var plr_y = player_id.y - floor(sprite_get_height(player_id.hurtbox_spr) / 2);
                    var plr_dist = point_distance(x, y - 40, player_id.x, plr_y);
                    var plr_dir = point_direction(x, y - 40, player_id.x, plr_y);
                    var plr_step_size = 50 / plr_dist;

                    var plr_opp_dist = point_distance(player_id.x + 38 * player_id.spr_dir, player_id.y - 40, opp.x, opp_y);
                    var plr_opp_dir = point_direction(player_id.x + 38 * player_id.spr_dir, player_id.y - 40, opp.x, opp_y);
                    var plr_opp_step_size = 50 / plr_opp_dist;

                    // Empowered Lightning travels to Dust, then to opponent

                    if (plr_dist <= light_range && plr_opp_dist <= light_range) {
                        var plr_num_points = floor(plr_dist / 50);
                        var opp_num_points = floor(plr_opp_dist / 50);

                        for (var j = 0; j < plr_num_points; j++) {
                            var t = j * plr_step_size;
                            var light_x = floor(lerp(x, player_id.x, t));
                            var light_y = floor(lerp(y - 40, plr_y, t));
                            //print(string(light_x) + " --- " + string(light_y));
                            var new_proj = create_hitbox(AT_NSPECIAL, 3, light_x, light_y);
                            if (j == 0) {
                                new_proj.sprite_index = spr_lightning_pop;
                            }
                            else {
                                new_proj.proj_angle = plr_dir;
                                new_proj.spr_dir = spr_dir;
                                new_proj.draw_xscale = 1;
                            }
                            //new_proj.proj_angle = plr_dir;
                            //new_proj.spr_dir = spr_dir;
                            //new_proj.draw_xscale = 1;
                            // Projectile spr_dir is horribly broken
                            //print(spr_dir);
                        }

                        var guarantee_proj = create_hitbox(AT_NSPECIAL, 3, player_id.x, plr_y);
                        guarantee_proj.sprite_index = spr_lightning_pop;
                        //guarantee_proj.proj_angle = plr_dir;
                        //guarantee_proj.spr_dir = spr_dir;
                        //guarantee_proj.draw_xscale = 1;

                        spawn_hit_fx( player_id.x, plr_y, 197 );
                        sound_play(asset_get( "sfx_gus_land" ));
                        sound_play(player_id.sfx_lightningheavy);

                        for (var j = 0; j < opp_num_points; j++) {
                            var t = j * plr_opp_step_size;
                            var light_x = floor(lerp(player_id.x, opp.x, t));
                            var light_y = floor(lerp(player_id.y - 40, opp_y, t));
                            //print(string(light_x) + " --- " + string(light_y));
                            var new_proj = create_hitbox(AT_NSPECIAL, 4, light_x, light_y);
                            if (j == 0) {
                                new_proj.sprite_index = spr_lightning_pop;
                            }
                            else {
                                new_proj.proj_angle = opp_dir;
                                new_proj.spr_dir = spr_dir;
                                new_proj.draw_xscale = 1;
                            }
                            //new_proj.proj_angle = plr_opp_dir;
                            //new_proj.spr_dir = spr_dir;
                            //new_proj.draw_xscale = 1;
                            // Projectile spr_dir is horribly broken
                            //print(spr_dir);
                        }
                        var guarantee_proj_two = create_hitbox(AT_NSPECIAL, 4, opp.x, opp_y);
                        guarantee_proj_two.sprite_index = spr_lightning_pop;
                        //guarantee_proj_two.proj_angle = plr_opp_dir;
                        //guarantee_proj_two.spr_dir = spr_dir;
                        //guarantee_proj_two.draw_xscale = 1;
                        player_id.old_vsp = player_id.vsp;
                        player_id.old_hsp = player_id.hsp;
                        player_id.vsp = 0;
                        player_id.hsp = 0;
                        player_id.hitpause = true;
                        player_id.hitstop = 20;
                    }
                }
            }
            else {
                for (var i = 0; i < array_length(opponents); i++) {
                    var opp = opponents[i];
                    //print(opp);
                    var opp_y = opp.y - floor(sprite_get_height(opp.hurtbox_spr) / 2);
                    var opp_dist = point_distance(x, y - 40, opp.x, opp_y);
                    var opp_dir = point_direction(x, y - 40, opp.x, opp_y);
                    var step_size = 50 / opp_dist;
                    if (opp_dist <= light_range) {
                        var num_points = floor(opp_dist / 50);
                        //print(string(num_points));
                        //debugging stuff
                        for (var j = 0; j < num_points; j++) {
                            var t = j * step_size;
                            var light_x = floor(lerp(x, opp.x, t));
                            var light_y = floor(lerp(y - 40, opp_y, t));
                            print(string(light_x) + " --- " + string(light_y));
                            var new_proj = create_hitbox(AT_NSPECIAL, 3, light_x, light_y);
                            if (j == 0) {
                                //array_push(lightning_nodes, new_proj);
                                new_proj.sprite_index = spr_lightning_pop;
                            }
                            else {
                                //other.lightning_start = new_proj;
                                //array_push(lightning_nodes, new_proj);
                                new_proj.proj_angle = opp_dir;
                                new_proj.spr_dir = spr_dir;
                                new_proj.draw_xscale = 1;
                                // Projectile spr_dir is horribly broken
                                //print(spr_dir);
                            }
                            //new_proj.proj_angle = opp_dir;
                            //new_proj.spr_dir = spr_dir;
                            //new_proj.draw_xscale = 1;
                            // Projectile spr_dir is horribly broken
                            //print(spr_dir);
                        }
                        var guarantee_proj = create_hitbox(AT_NSPECIAL, 3, opp.x, opp_y);
                        //array_push(lightning_nodes, guarantee_proj);
                        guarantee_proj.sprite_index = spr_lightning_pop;
                        //guarantee_proj.proj_angle = opp_dir;
                        //guarantee_proj.spr_dir = spr_dir;
                        //guarantee_proj.draw_xscale = 1;
                    }
                }
            }
        }

        if (fidget_timer == 90) {
            switch_state(0);
        }
        break;
    case 3:
        // Light shot
        if (sprite_index != spr_shot) sprite_index = spr_shot;
        image_index = fidget_timer / 3;
        // Write lerp values later
        vsp = 0;
        hsp = 0;

        if (fidget_timer == 3) {
            if (voiced) sound_play(vc_shot1);
            sound_play(asset_get("sfx_bubblepop"));
            //Top
            var proj1 = create_hitbox(AT_NSPECIAL, 1, x, y - 40);
            proj1.spr_dir = spr_dir;
            proj1.draw_xscale = 1;
            proj1.proj_angle = 5;
            proj1.vsp = -2;
            proj1.hsp = 7.5 * spr_dir;
            
            // Middle
            var proj2 = create_hitbox(AT_NSPECIAL, 1, x, y - 40);
            proj2.spr_dir = spr_dir;
            proj2.draw_xscale = 1;
            proj2.hsp = 7.5 * spr_dir;
            // Bottom
            var proj3 = create_hitbox(AT_NSPECIAL, 1, x, y - 40);
            proj3.spr_dir = spr_dir;
            proj3.draw_xscale = 1;
            proj3.proj_angle = -5;
            proj3.vsp = 2;
            proj3.hsp = 7.5 * spr_dir;
        }
        if (fidget_timer >= 15) {
            switch_state(0);
        }
        break;
    case 4:
        if (sprite_index != spr_scream) sprite_index = spr_scream;
        image_index = fidget_timer / 45;
        //Write Lerp values later
        vsp = 0;
        hsp = 0;
        if (fidget_timer >= 30) {
            fid_panic = false;
            switch_state(0);
        }
        break;
}


if (fidget_state != 4 && fid_panic == true) {
    fid_panic = false;
}
fidget_timer++;
if (input_buffer > 0) input_buffer -= 1;
//print("X: " + string(x) + " --- Y: " + string(y));
//print(spr_index)

#define switch_state(state_num)
fidget_timer = 0;
fidget_state = state_num;