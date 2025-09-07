// Article 4 -- Placed Object
// diagonal offset calculation
if (queued_destruction)
{
    //print_debug("destroying");
    if (item_id = 12)
    {
    	instance_destroy(platform);
    }
    instance_destroy();
    exit;
}
if (!initialized)
{
    sprite_index = sprite_get(obj_stage_main.item_sprites[item_id]);
    switch (item_id)
    {
        case 1: // Dynamite
        {
            bomb_timer = 60;
            depth = -5;
            break;
        }
        
        case 2: // Board
        {
            var offsetX = get_relative_coordinate_x(1, 0);
            var offsetY = get_relative_coordinate_y(1, 0);
            create_grid_hitbox(0, 0, true);
            create_grid_hitbox(offsetX, offsetY, true);
            create_grid_hitbox(offsetX * 2, offsetY * 2, true);
            break;
        }
        case 3: // Ball Launcher
        {
            create_grid_hitbox(0, 0, true);
            launch_timer = 60;
            projectile = noone;
            //closest_dist = 100000;
            break;
        }
        case 4: // Black Hole
        {
            create_grid_hitbox(0, 0, false);
            black_hole_force = 0.45;
            black_hole_is_in_range = false;
            break;
        }
        case 5: // Beehive
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 1), get_relative_coordinate_y(1, 1), false);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), false);
            has_bees = true;
            beehive_hitbox = noone;
            intialized_bees = false;
            //player_hit = true;
            //player_to_attack = -4;
            break;
        }
        case 6: // Flamethrower
        {
            create_grid_hitbox(0, 0, true);
            flamethrower_timer = 0;
            break;
        }
        case 7: // Metal Box
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(1, 1), get_relative_coordinate_y(1, 1), true);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), true);
            break;
        }
        case 8: // Girder
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(2, 0), get_relative_coordinate_y(2, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(3, 0), get_relative_coordinate_y(3, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), true);
            create_grid_hitbox(get_relative_coordinate_x(0, 2), get_relative_coordinate_y(0, 2), true);
            create_grid_hitbox(get_relative_coordinate_x(0, 3), get_relative_coordinate_y(0, 3), true);
            break;
        }
        case 9: // Bumper
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 1), get_relative_coordinate_y(1, 1), false);
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            break;
        }
        case 10: // Flower
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            attack_time = -1;
            trigger_hitbox = noone;
            initialized_hitbox = false;
            break;
        }
        case 11: // Platform
        {
        	//if (image_angle == 90 && image_angle == 270)
        	//	break;
        	create_grid_hitbox_platform(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), get_relative_coordinate_x_no_flip(1, 0) * 12);
            create_grid_hitbox_platform(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), get_relative_coordinate_x_no_flip(1, 0) * 12);
            create_grid_hitbox_platform(get_relative_coordinate_x(2, 0), get_relative_coordinate_y(2, 0), get_relative_coordinate_x_no_flip(1, 0) * 12);
            create_grid_hitbox_platform(get_relative_coordinate_x(3, 0), get_relative_coordinate_y(3, 0), get_relative_coordinate_x_no_flip(1, 0) * 12);
            break;
        }
        case 12: // Moving Platform 1
        {
        	create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), false);
        	create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), false);
        	platform = instance_create(x, y, "obj_stage_article_solid", 7);
        	platform.depth = -1;
        	depth = 1;
        	image_index = 1;
        	break;
        }
        case 13: // Bomb
        {
            bomb_timer = 60;
            depth = -5;
            break;
        }
        case 14: // Crossbow
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), true);
            launch_timer = 60;
            projectile = noone;
            projectile_angle = 0;
            break;
        }
        case 15: // Spike Ball
        {
            create_grid_hitbox(0, 0, true);
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            break;
        }
        case 16: // Stairs
        {
        	create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(1, 1), get_relative_coordinate_y(1, 1), true);
            create_grid_hitbox(get_relative_coordinate_x(2, 2), get_relative_coordinate_y(2, 2), true);
            create_grid_hitbox(get_relative_coordinate_x(3, 3), get_relative_coordinate_y(3, 3), true);
            break;
        }
        case 17: // Hockey Machine
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), true);
            launch_timer = 210;
            projectile = noone;
            projectile_angle = 0;
            break;
        }
        case 18: // Spring
        {
            plat1 = create_grid_hitbox_platform(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
            plat2 = create_grid_hitbox_platform(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), true);
            bounce_anim = 0;
            sound_cooldown = 0;
            break;
        }        
        case 19: // Sawblade
        {
            create_grid_hitbox(0, 0, true);
            blade_rotation = 0;
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            break;
        }
        case 20: // Cannon
        {
            create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), false);
            create_grid_hitbox(get_relative_coordinate_x(0, 1), get_relative_coordinate_y(0, 1), false);
            create_grid_hitbox(get_relative_coordinate_x(1, 1), get_relative_coordinate_y(1, 1), false);
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            player_entered_cannon = noone;
            break;
        }        
        case 21: // Wrecking Ball
        {
            create_grid_hitbox(0, 0, true);
            rotation = 0;
            phase = 0;
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            break;
        }
        case 22: // Floor Saw
        {
        	create_grid_hitbox(get_relative_coordinate_x(0, 0), get_relative_coordinate_y(0, 0), true);
        	create_grid_hitbox(get_relative_coordinate_x(1, 0), get_relative_coordinate_y(1, 0), true);
        	create_grid_hitbox(get_relative_coordinate_x(2, 0), get_relative_coordinate_y(2, 0), true);
        	create_grid_hitbox(get_relative_coordinate_x(3, 0), get_relative_coordinate_y(3, 0), true);
        	create_grid_hitbox(get_relative_coordinate_x(4, 0), get_relative_coordinate_y(4, 0), true);
        	create_grid_hitbox(get_relative_coordinate_x(5, 0), get_relative_coordinate_y(5, 0), true);
            bumper_hitbox = noone;
            bumper_cooldown = 1;
            blade_x = x;
            blade_y = y;
            phase = 0;
        	break;
        }
        case 23: // Coin
        {
        	hitbox = create_grid_hitbox(0, 0, false);
        	player_collected_by = noone;
        	break;
        }
        case 24: // Punching Glove
        {
        	create_grid_hitbox(0, 0, true);
			mask_index = sprite_get("punching_glove_mask");
			attack_phase = 0;
        	break;
        }
        default: // Invalid Item
        	create_grid_hitbox(0, 0, false);
        	break;
    }
    initialized = true;
}
switch (item_id)
{
    case 1: // Dynamite
    {
        bomb_timer--;
        
        if (bomb_timer == 0)
        {
            print_debug("bomb go boom");
            sound_play(asset_get("sfx_mol_norm_explode"), false, noone, 1, 1);
            spawn_hit_fx(x, y, HFX_ELL_FSPEC_BREAK);
            print_debug("exploding at " + string(grid_x) + ", " + string(grid_y));
            with (obj_stage_article) explode(other.grid_x, other.grid_y);
            with (obj_stage_article_solid) explode(other.grid_x, other.grid_y);
            with (obj_stage_article_platform) explode(other.grid_x, other.grid_y);
        }
        if (bomb_timer == -1)
        {
            instance_destroy();
            exit;
        }
        break;
    }
    
    
    case 3: // Ball Launcher
    {
        var xOffset = get_relative_coordinate_x(1, 1);
        var yOffset = get_relative_coordinate_y(1, 1);
        if (obj_stage_main.current_stage_state == 2)
        {
            if (launch_timer == 0)
            {
                if (!instance_exists(projectile))
                {

                    //var offsetX = + (dcos(image_angle-45) * spr_dir) * 1.414;
                    //var offsetY = (dsin(-image_angle-45) * spr_dir) * 1.414;
                    var b = create_hitbox(2, 1, x + floor(xOffset * 20), y - floor(yOffset * 20));
                    b.hsp = xOffset * 3;
                    b.vsp = -yOffset * 3;
                    b.owner = self;
                    projectile = b;
                    launch_timer = 60;
                    var closest_dist = 100000;
                    with (oPlayer)
                    {
                        var dist = distance_to_object(other);
                        if (dist < closest_dist)
                            closest_dist = dist;
                    }
                    var sound_distance = 1024 - closest_dist;
                    var volume = (sound_distance / 1024) * 0.75;
                    if (volume < 0)
                        volume = 0;
                    sound_play(asset_get("sfx_ell_dspecial_hit"), false, noone, volume, 0.8);
                    
                    //oTestPlayer.x = b.x;
                    //print_debug("baller");
                }
            }
            else
                launch_timer--;
            if (instance_exists(projectile))
            {
                if (obj_stage_main.current_state_timer % 5 == 0)
                {
                    spawn_hit_fx(projectile.x + random_func_2(8, 16, true) - 8, projectile.y + random_func_2(9, 16, true) - 8, HFX_ZET_GROUNDFIRE_END);
                    spawn_hit_fx(projectile.x + random_func_2(10, 16, true) - 8, projectile.y + random_func_2(11, 16, true) - 8, HFX_ZET_GROUNDFIRE_END);
                }
                if (!projectile.free)
                    instance_destroy(projectile);
            }
        }
        else
        {
            launch_timer = 60;
            if (instance_exists(projectile))
            {
                instance_destroy(projectile);
            }
        }
        break;
    }
    case 4: // Black Hole
    {
        image_angle -= 3 * spr_dir;
        if (obj_stage_main.current_stage_state == 2 && obj_stage_main.current_state_timer > 90)
        {
            //if (!instance_exists(black_hole_death_box))
            //    black_hole_death_box = create_deathbox(x, y, 24, 24, -1, true, 0, 10, 1);
            //create_deathbox(x, y, 1, 1, -1, true, 0, 0, 1);
            black_hole_is_in_range = false;
            var target = noone
            with (oPlayer)
            {
        		if (is_player_on(player))
        		{
                	if (distance_to_point(other.x, other.y) < 128)
                	{
                	    angle = arctan2(other.y - y, other.x - x);
                	    hsp += cos(angle) * other.black_hole_force;
                	    vsp += sin(angle) * other.black_hole_force * 1.2;
                	}
                	if (distance_to_point(other.x, other.y) < 8)
                	{
            	    	//y = 10000;   
                		other.black_hole_is_in_range = true;
                		if (!uch_immune_to_blackhole)
                			target = self;
                	}
        		}
            }
            if (black_hole_is_in_range)
                create_deathbox(x, y, 1, 1, target, true, 0, 0, 1);
            with (pHitBox)
            {
                if (type == 2 && walls != 1 && !variable_instance_exists(self, "cannot_orbit_black_hole"))
                {
                    if (distance_to_object(other) < 128)
                    {
                        angle = arctan2(other.y - y, other.x - x);
                        hsp += cos(angle) * other.black_hole_force;
                        vsp += sin(angle) * other.black_hole_force;
                    }
                }
            }
        }
        else
        {
        }
        break;
    }
    case 5: // Beehive
    {
        if (has_bees)
        {
            image_index = (floor(get_gameplay_time() / 5) % 3) + 1;
        }
        if (obj_stage_main.current_stage_state = 2 && obj_stage_main.prev_stage_state = 2 && obj_stage_main.current_state_timer > 90)
        {
            if (has_bees)
            {
                if (!instance_exists(beehive_hitbox))
                {
                    if (!initialized_bees)
                    {
                        beehive_hitbox = create_hitbox(3, 2, floor(x + (get_relative_coordinate_x(1, 1) * 16)), floor(y - (get_relative_coordinate_y(1, 1) * 16)));
                        beehive_hitbox.owner = self;
                        initialized_bees = true;
                    }
                    else
                    {
                        var closest_player = -1;
                        var closest_dist = 1000000;
                        with (oPlayer)
                        {
                            var dist = distance_to_object(other);
                            if (dist < closest_dist)
                            {
                                closest_dist = dist;
                                closest_player = player;
                            }
                        }
                        if (closest_player != -1)
                        {
                            var bees = instance_create(x, y, "obj_stage_article", 6);
                            bees.chasing_player = closest_player;
                            image_index = 0;
                            has_bees = false;
                        }
                    }
                }
                /*
                with(oPlayer)
                {
                    //if (distance_to_object(other) < 16)
                    if (place_meeting(x, y, other))
                    {
                        if (other.has_bees)
                        {
                            var bees = instance_create(other.x, other.y, "obj_stage_article", 6);
                            bees.chasing_player = player;
                            other.has_bees = false;
                            other.image_index = 0;
                        }
                    }
                }
                
                var playerHit = false;
	            var hurtboxPlayerID = undefined;
                with (pHurtBox)
                {
			        var article = instance_place(x, y, obj_stage_article);
				    if (article == other.id) 
				    {
					    playerHit = true;
					    hurtboxPlayerID = playerID;
					    //other.player_hit = true;
					    //other.player_to_attack = playerID;
				    }
                }
                if (playerHit)
                {
                    with (oPlayer)
                    {
                        if (hurtboxPlayerID == player)
                        {
                            if (other.has_bees)
                            {
                                var bees = instance_create(other.x, other.y, "obj_stage_article", 6);
                                bees.chasing_player = player;
                                other.has_bees = false;
                                other.image_index = 0;
                            }
                        }
                    }
                }
                */
			}
		}
        else
        {
            has_bees = true;
            initialized_bees = false;
            if (instance_exists(beehive_hitbox))
                instance_destroy(beehive_hitbox);
        }
        break;
    }
    
    case 6: // Flamethrower
    {
        if (obj_stage_main.current_stage_state == 2)
        {
            flamethrower_timer++;
            if (flamethrower_timer == 90)
            {
                sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 1, 1);
                sound_play(asset_get("sfx_upbcharge"), false, noone, 1, 1);
                var hb1 = create_hitbox(1, 1, floor(x + (get_relative_coordinate_x(1, 1) * 48)), floor(y - (get_relative_coordinate_y(1, 1) * 48)));
                hb1.owner = self;
                //var hb2 = create_hitbox(1, 1, floor(x + (get_relative_coordinate_x(2, 2) * 16)), floor(y - (get_relative_coordinate_y(2, 2) * 16)));
                //hb2.owner = self;
                //hb2.priority = 3;
            }
            if (flamethrower_timer > 180)
                flamethrower_timer = 0;
            if (flamethrower_timer > 90)
                image_index = (floor(get_gameplay_time() / 4) % 3 + 2);
            else
            {
                if (flamethrower_timer > 84)
                    image_index = 1;
                else
                    image_index = 0;
            }
        }
        else
        {
            flamethrower_timer = 0;
            image_index = 0;
        }
        break;
    }
    case 9: // Bumper
    {
        if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 20;
            if (bumper_cooldown > 16)
            {
                image_index = 1;
            }
            else
                image_index = 0;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(4, 1, x + (get_relative_coordinate_x(1, 1)  * 16), y - (get_relative_coordinate_x(1, 1)  * 16));
                bumper_hitbox.owner = self;
                bumper_cooldown = 20;
                //print_debug("created bumper");
            }
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
        break;
    }
    
    case 10: // Flower
    {
        if (attack_time == -1)
        {
            var anim_frame = (floor(get_gameplay_time() / 6) % 13) + 1
            if (anim_frame > 6)
                anim_frame = 6 - (anim_frame - 7);
            image_index = anim_frame;
        }
        if (obj_stage_main.current_stage_state = 2 && obj_stage_main.prev_stage_state = 2 && obj_stage_main.current_state_timer > 90)
        {
            if (attack_time == -1)
            {
                if (!instance_exists(trigger_hitbox))
                {
                    if (!initialized_hitbox)
                    {
                        trigger_hitbox = create_hitbox(5, 2, floor(x + (get_relative_coordinate_x(0, 3) * 16)), floor(y - (get_relative_coordinate_y(0, 3) * 16)));
                        trigger_hitbox.owner = self;
                        initialized_hitbox = true;
                    }
                    else
                    {
                        var closest_player = noone;
                        var closest_dist = 1000000;
                        with (oPlayer)
                        {
                            var dist = distance_to_object(other);
                            if (dist < closest_dist)
                            {
                                closest_dist = dist;
                                closest_player = self;
                            }
                        }
                        if (instance_exists(closest_player))
                        {
                            //print_debug("found player");
                            sound_play(asset_get("sfx_plant_stepped"), false, noone, 1, 1.2);
                            sound_play(asset_get("sfx_syl_dspecial_growth"), false, noone, 1, 1);
                            try{
                            switch (image_angle)
                            {
                                case 0:
                                    spr_dir = sign(closest_player.x - x);
                                    break;
                                case 90:
                                    spr_dir = sign(y - closest_player.y);
                                    break;
                                case 180:
                                    spr_dir = sign(x - closest_player.x);
                                    break;
                                case 270:
                                    spr_dir = sign(closest_player.y - y);
                                    break;
                            }
                        	}
                        	catch (_exception)
	                        	{
	                        		print_debug("what happened? " + _exception);
	                        	}
                            //var bees = instance_create(x, y, "obj_stage_article", 6);
                            //bees.chasing_player = closest_player;
                            //image_index = 0;
                        	attack_time = 90;
                        }
                    }
                }
			}
			else
			{
			    attack_time--;
			    // excuse the spaghetti code pt 2
			    if (attack_time > 85)
			        image_index = 7;
			    else if (attack_time > 80)
			        image_index = 8;
			    else if (attack_time > 40)
			        image_index = 9;
			    else
			    {
			        var anim_frame = floor((40 - attack_time) / 5) + 9;
			        if (anim_frame > 14)
			            anim_frame = 14;
			        image_index = anim_frame;
			    }
			    if (attack_time == 30)
			    {
			        sound_play(asset_get("sfx_leafy_hit2"), false, noone, 1, 1);
			        var hb = create_hitbox(5, 1, floor(x + get_relative_coordinate_x(16, 16)), floor(y - (get_relative_coordinate_y(16, 16) * 2.2)));
			        hb.owner = self;
			        hb.spr_dir = spr_dir;
			    }
			    if (attack_time == 0)
			        initialized_hitbox = false;
			}
		}
        else
        {
            attack_time = -1;
            initialized_hitbox = false;
            if (instance_exists(trigger_hitbox))
                instance_destroy(trigger_hitbox);
        }
        break;
    }
	case 12: // Moving Platform 1
	{
        depth = 1;
		if (obj_stage_main.current_stage_state = 2)
		{
			platform.x = x + get_relative_coordinate_x(1, 0) * (-dcos(obj_stage_main.current_state_timer) + 1) * 96;
			platform.y = y - get_relative_coordinate_y(1, 0) * (-dcos(obj_stage_main.current_state_timer) + 1) * 96;
		}
		else
		{
			platform.x = x;
			platform.y = y;
		}
		break;
	}
	case 13: // Bomb
    {
        bomb_timer--;
        
        if (bomb_timer == 0)
        {
            print_debug("bomb go boom");
            sound_play(asset_get("sfx_mol_flare_explode"), false, noone, 1, 1);
            sound_play(asset_get("sfx_mol_bat_whack"), false, noone, 0.5, 1);
            spawn_hit_fx(x, y, HFX_MOL_BOOM_NORM);
            print_debug("exploding at " + string(grid_x) + ", " + string(grid_y));
            for (var xx = -1; xx < 2; xx++) for (var yy = -1; yy < 2; yy++)
            {
            	with (obj_stage_article) explode(other.grid_x + xx, other.grid_y + yy);
            	with (obj_stage_article_solid) explode(other.grid_x + xx, other.grid_y + yy);
            	with (obj_stage_article_platform) explode(other.grid_x + xx, other.grid_y + yy);
            }
        }
        if (bomb_timer == -1)
        {
            instance_destroy();
            exit;
        }
        break;
    }
	case 14: // Crossbow
    {
        var xOffset = get_relative_coordinate_x(2.5, 0);
        var yOffset = get_relative_coordinate_y(2.5, 0);
        
        var vxOffset = get_relative_coordinate_x(2, 0);
        var vyOffset = get_relative_coordinate_y(2, 0);
        if (obj_stage_main.current_stage_state == 2)
        {
            if (launch_timer == 0)
            {
                {
                    var finalOffset = 0;
                    if (image_angle == 180 || (image_angle == 0 && spr_dir == -1))
                    	finalOffset = -16;
                    var b = create_hitbox(6, 1, x + floor(xOffset * 20) + finalOffset, y - floor(yOffset * 20));
                    b.hsp = vxOffset * 5;
                    b.vsp = -vyOffset * 5;
                    b.owner = self;
                    b.spr_dir = sign(b.hsp);
                    if (b.spr_dir == 0)
                    	b.spr_dir = 1;
                    	
                	// projectiles are dumb and this does not work
                    //b.proj_angle = point_direction(0, 0, b.hsp, b.vsp) - 180 * (b.spr_dir == -1);
                    projectile_angle = point_direction(0, 0, b.hsp, b.vsp);
                    
                    projectile = b;
                    launch_timer = 120;
                    var closest_dist = 100000;
                    with (oPlayer)
                    {
                        var dist = distance_to_object(other);
                        if (dist < closest_dist)
                            closest_dist = dist;
                    }
                    var sound_distance = 1024 - closest_dist;
                    var volume = (sound_distance / 1024) * 0.75;
                    if (volume < 0)
                        volume = 0;
                    sound_play(asset_get("sfx_rag_plant_shoot"), false, noone, volume, 0.8);
                }
            }
            if (launch_timer > 0)
            	launch_timer--;
            if (launch_timer < 32)
            {
            	image_index = floor((32 - launch_timer) / 8) + 1;
            }
            else
            	image_index = 0;
            	
            if (instance_exists(projectile))
            {
            	projectile_angle = point_direction(0, 0, projectile.hsp, projectile.vsp);
                if (!projectile.free)
                    instance_destroy(projectile);
            }
        }
        else
        {
            launch_timer = 120;
            image_index = 0;
            if (instance_exists(projectile))
            {
                instance_destroy(projectile);
            }
        }
        break;
    }
    case 15: // Spike Ball
    {
        if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 25;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(7, 1, x, y);
                bumper_hitbox.owner = self;
                bumper_cooldown = 20;
                //print_debug("created bumper");
            }
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
        break;
    }
	
	
	case 17: // Hockey Machine
    {
        var xOffset = get_relative_coordinate_x(1.5, 0);
        var yOffset = get_relative_coordinate_y(1.5, 0);
        
        var vxOffset = get_relative_coordinate_x(1, 0);
        var vyOffset = get_relative_coordinate_y(1, 0);
        if (obj_stage_main.current_stage_state == 2)
        {
            if (launch_timer == 0)
            {
                {
                    var finalOffset = 0;
                    if (image_angle == 180 || (image_angle == 0 && spr_dir == -1))
                    	finalOffset = -16;
                    var b = create_hitbox(8, 1, x + floor(xOffset * 20) + finalOffset, y - floor(yOffset * 20));
                    b.hsp = vxOffset * 50;
                    b.vsp = -vyOffset * 50;
                    b.owner = self;
                    b.spr_dir = -sign(b.hsp);
                    b.cannot_orbit_black_hole = true;
                    if (b.spr_dir == 0)
                    	b.spr_dir = 1;
                    	
                    projectile_angle = point_direction(0, 0, b.hsp, b.vsp);
                    
                    projectile = b;
                    launch_timer = 210;
                    var closest_dist = 100000;
                    with (oPlayer)
                    {
                        var dist = distance_to_object(other);
                        if (dist < closest_dist)
                            closest_dist = dist;
                    }
                    var sound_distance = 1024 - closest_dist;
                    var volume = (sound_distance / 1024) * 0.75;
                    if (volume < 0)
                        volume = 0;
                    sound_play(asset_get("sfx_mol_bat_bombhit"), false, noone, volume, 0.8);
                }
            }
            if (launch_timer > 0)
            	launch_timer--;
            if (launch_timer == 60)
            {
            	sound_play(asset_get("mfx_tut_fail"), false, noone, 1, 1);
            }
            if (launch_timer < 62)
            {
            	if (launch_timer < 32)
            		image_index = 4;
            	else
            		image_index = floor((62 - launch_timer) / 8) + 1;
            }
            else if (launch_timer < 190)
            	image_index = 0;
            else
            	image_index = -floor((launch_timer - 189)/7) + 7
            	//image_index = floor((189 - launch_timer) / 7) + 5;
            	
            if (instance_exists(projectile))
            {
            	projectile_angle = point_direction(0, 0, projectile.hsp, projectile.vsp);
                if (!projectile.free)
                    instance_destroy(projectile);
            }
        }
        else
        {
            launch_timer = 120;
            image_index = 0;
            if (instance_exists(projectile))
            {
                instance_destroy(projectile);
            }
        }
        break;
    }
	
	case 18: // Spring
	{
		if (instance_exists(plat1) && instance_exists(plat2))
		{
			with (oPlayer)
			{
				if (is_player_on(player))
				{
					if (!free && (col_jumpthrough == other.plat1 || col_jumpthrough == other.plat2) && state != PS_HITSTUN_LAND && state != PS_HITSTUN)
					{
						//vsp = jump_down ? -20 : -15; // jumping on the spring is hard, so just have one speed
						vsp = -15;
						if (state == PS_FIRST_JUMP || state == PS_JUMPSQUAT || state == PS_WAVELAND || state == PS_DOUBLE_JUMP)
						// originally also accounted for airdodging but was way too buggy || state == PS_AIR_DODGE)
						{
							set_state(PS_IDLE_AIR);
							//invince_time = 0;
							//invincible = false;
						}
						clear_button_buffer(PC_JUMP_PRESSED);
						other.bounce_anim = 8;
						if (other.sound_cooldown <= 0)
						{
							sound_play(asset_get("sfx_springgo"), false, noone, 1, 1);
							other.sound_cooldown = 25;
						}
					}
				}
			}
		}
		if (bounce_anim > 0)
		{
			bounce_anim--;
			image_index = 1;
		}
		else
			image_index = 0;
		if (sound_cooldown > 0)
			sound_cooldown--;
		break;
	}
	
	case 19: // Sawblade
    {
    	image_index = 1;
        if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 25;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(9, 1, x, y);
                bumper_hitbox.owner = self;
                bumper_cooldown = 20;
                //print_debug("created bumper");
            }
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
        
        if (obj_stage_main.current_stage_state == 2)
        {
        	blade_rotation += -1.2 * spr_dir;
        	if (blade_rotation > 360)
        		blade_rotation -= 360;
        	if (instance_exists(bumper_hitbox))
        	{
        		bumper_hitbox.x = x + (dcos(blade_rotation + image_angle + 90) * 64);
        		bumper_hitbox.y = y - (dsin(blade_rotation + image_angle + 90) * 64);
        	}
        }
        else
        	blade_rotation = 0;
        break;
    }
	
	case 20: // Cannon
    {
        var xOffset = get_relative_coordinate_x(1, 1);
        var yOffset = get_relative_coordinate_y(1, 1);
    	// Note: in the original game it should be able to redirect projectiles
    	// but i do not feel like adding this functionality rn
        if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 67;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(10, 1, x + (xOffset * 16), y - (yOffset * 16));
                var angl = point_direction(0, 0, xOffset, -yOffset);
                bumper_hitbox.angle = angl;
                //print_debug(angl);
                bumper_hitbox.owner = self;
                //bumper_cooldown = 62;
                //print_debug("created bumper");
            }
        }
        else
        {
        }
        if (instance_exists(player_entered_cannon))
        {
         	player_entered_cannon.grabbed_invisible = true;
           	player_entered_cannon.x = x + (xOffset * 16);
           	player_entered_cannon.y = y - (yOffset * 16);
           	if (player_entered_cannon.hitpause = 0)
           	{
           		sound_play(asset_get("sfx_ell_utilt_cannon"), false, noone, 1, 1);
           		player_entered_cannon = noone;
           	}
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
        break;
    }
	
	case 21: // Wrecking Ball
    {
    	// its funny how this works
    	// this is derived from the sawblade code which in turn is derived from bumper code
    	image_index = 1;
        if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 25;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(11, 1, x, y);
                bumper_hitbox.owner = self;
                bumper_cooldown = 20;
                //print_debug("created bumper");
            }
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
        
        if (obj_stage_main.current_stage_state == 2)
        {
        	phase++;
        	if (phase > 198)
        		phase -= 198;
        	rotation = 80 * spr_dir * dcos(phase / 1.1 * 2);
        	if (instance_exists(bumper_hitbox))
        	{
        		bumper_hitbox.x = x + (dcos(rotation + image_angle - 90) * 148);
        		bumper_hitbox.y = y - (dsin(rotation + image_angle - 90) * 148);
        	}
        }
        else
        {
        	rotation = 80 * spr_dir;
        	phase = 0;
        }
        break;
    }
	
	case 22: // Floor Saw
	{
		image_index = 1;
		if (!instance_exists(bumper_hitbox))
        {
            if (bumper_cooldown == 0)
                bumper_cooldown = 25;
            if (bumper_cooldown == 1)
            {
                bumper_hitbox = create_hitbox(12, 1, x, y);
                bumper_hitbox.owner = self;
                bumper_cooldown = 20;
                //print_debug("created bumper");
            }
        }
        if (bumper_cooldown > 0)
            bumper_cooldown--;
		if (obj_stage_main.current_stage_state == 2)
		{
			var blade_destX = get_relative_coordinate_x(5, 0) * 32 + x;
			var blade_destY = -(get_relative_coordinate_y(5, 0) * 32) + y;
			var point = 1 - ((dcos(phase * 3/2) + 1) / 2);
			blade_x = ease_linear(x, blade_destX, floor(point * 240), 240);
			blade_y = ease_linear(y, blade_destY, floor(point * 240), 240);
			phase++;
			if (phase == 240)
				phase = 0;
		}
		else
		{
			phase = 0;
			blade_x = x;
			blade_y = y;
		}
		if (instance_exists(bumper_hitbox))
		{
			
			var offsetX = get_relative_coordinate_x(0, 1) * 16;
			var offsetY = get_relative_coordinate_y(0, 1) * 16;
			bumper_hitbox.x = blade_x + offsetX;
			bumper_hitbox.y = blade_y - offsetY;
		}
		break;
	}
	case 23: // Coin
	{
		image_index = floor (get_gameplay_time() / 6) % 6;
		// originally the coin was supposed to fly out of the blast zone if a player collecting it died
		// but, it was buggy, so code was commented out
		if (!instance_exists(player_collected_by))
		{
			//x += hsp;
			//y += vsp;
			//hsp -= sign(hsp);
			//vsp -= sign(vsp);
			if (obj_stage_main.current_stage_state == 2)
			{
				var player_in_range = noone;
		     	with (oPlayer)
    	    	{
    		 		if (is_player_on(player))
        			{
						if (state == PS_DEAD || state == PS_RESPAWN)
							continue;
    	        		if (distance_to_point(other.x, other.y) < 8)
        	    		{
	        	    		player_in_range = self;
	            			break;
    	    	    	}
        		}
        	}
        	if (instance_exists(player_in_range))
        	{
        		sound_play(asset_get("sfx_coin_collect"), false, noone, 1, 1);
        		player_collected_by = player_in_range;
        	}
			}
		}
		else
		{
			//hsp = 0;
			//vsp = 0;
			
			if (player_collected_by.state == PS_DEAD || player_collected_by.state == PS_RESPAWN)
			{
				//var launch_angle = point_direction(x, y, get_marker_x(1), get_marker_y(1));
				//print_debug(launch_angle);
				//hsp = round(dcos(launch_angle) * 20);
				//vsp = round(-dsin(launch_angle) * 20);
				player_collected_by = noone;
			}
			
			if (instance_exists(player_collected_by))
			{
				var t = get_gameplay_time();
				// i gave the coin a little animation, so that it can be seen when you have multiple coins
				x = player_collected_by.x + 20 + dcos(t + id) * 8;
				y = player_collected_by.y - 60 + dsin(t + id) * 8;
			}
		}
		if (obj_stage_main.current_stage_state == 3)
		{
        	if (instance_exists(player_collected_by))
        	{
        		sound_play(asset_get("mfx_mm_coin_win"), false, noone, 1, 1);
        		if (get_match_setting(SET_STOCKS) > 0)
        			set_player_stocks(player_collected_by.player, get_player_stocks(player_collected_by.player) + 1);
        		else
        			set_player_damage(player_collected_by.player, 0);
        		instance_destroy(hitbox);
        		instance_destroy(self);
        	}
        	else
        	{
        		//hsp = 0;
        		//vsp = 0;
        		x = hitbox.x;
        		y = hitbox.y;
        	}
        }
		break;
	}
	
	case 24: // Punching Glove
	{
		if (obj_stage_main.current_stage_state == 2)
		{
			var is_touched = place_meeting(x, y, oPlayer) || place_meeting(x, y, pHitBox);
			if (is_touched && attack_phase = 0)
			{
				attack_phase++;
				sound_play(asset_get("sfx_springswitch"), false, noone, 1, 1);
			}
			if (attack_phase > 0 && attack_phase != 15)
			{
				attack_phase++;
				if (attack_phase > 30)
					attack_phase = 0;
			}
			if (!is_touched && attack_phase = 15)
			{
				attack_phase++;
			}
			// too lazy to animate via math
			if (attack_phase > 0)
			{
				if (attack_phase < 3)
					image_index = 1;
				else if (attack_phase < 6)
					image_index = 2;
				else if (attack_phase < 24)
					image_index = 3;
				else if (attack_phase < 27)
					image_index = 2;
				else
					image_index = 1;
				
			}
			else
				image_index = 0;
			{
				if (attack_phase = 2)
				{
					var offsetX = get_relative_coordinate_x(0, 1) * 32;
					var offsetY = get_relative_coordinate_y(0, 1) * 32;
					var angl = point_direction(0, 0, offsetX, offsetY);
					var hb = create_hitbox(13, 1, x + offsetX, y - offsetY);
					hb.angle = angl;
				}
				if (attack_phase = 3)
				{
					
					var offsetX = get_relative_coordinate_x(0, 2) * 32;
					var offsetY = get_relative_coordinate_y(0, 2) * 32;
					var angl = point_direction(0, 0, offsetX, offsetY);
					var hb = create_hitbox(13, 1, x + offsetX, y - offsetY);
					hb.angle = angl;
				}
				if (attack_phase = 6)
				{
					var offsetX = get_relative_coordinate_x(0, 3) * 32;
					var offsetY = get_relative_coordinate_y(0, 3) * 32;
					var angl = point_direction(0, 0, offsetX, offsetY);
					var hb = create_hitbox(13, 1, x + offsetX, y - offsetY);
					hb.length = 5;
					hb.angle = angl;
				}
			}
		}
		break;
	}
	
}

#define get_relative_coordinate_x(pos_x, pos_y)
{
    var xCoord = dcos(image_angle) * spr_dir * pos_x;
    var yCoord = dcos(image_angle + 90) * pos_y;
    return xCoord + yCoord;
}
#define get_relative_coordinate_y(pos_x, pos_y)
{
    var xCoord = dsin(image_angle) * spr_dir * pos_x;
    var yCoord = dsin(image_angle + 90) * pos_y;
    return xCoord + yCoord;
}

#define create_grid_hitbox(pos_x, pos_y, is_solid)
{
    var article = "obj_stage_article";
    if (is_solid)
    {
        article = "obj_stage_article_solid";
    }
    var hb = instance_create(x + (pos_x * 32), y - (pos_y * 32), article, 5);
    hb.grid_x = grid_x + pos_x;
    hb.grid_y = grid_y - pos_y;
    hb.local_x = pos_x;
    hb.local_y = pos_y;
    hb.owned_by = id;
    
    return hb;
}
#define create_grid_hitbox_platform(pos_x, pos_y, plat_y_offset)
{
    var article = "obj_stage_article_platform";
    var hb = instance_create(x + (pos_x * 32), y - (pos_y * 32) - plat_y_offset - 4, article, 5);
    hb.grid_x = grid_x + pos_x;
    hb.grid_y = grid_y - pos_y;
    hb.owned_by = id;
    
    return hb;
}

#define get_relative_coordinate_x_no_flip(pos_x, pos_y)
{
    var xCoord = dcos(image_angle) * pos_x;
    var yCoord = dcos(image_angle + 90) * pos_y;
    return xCoord + yCoord;
}
#define explode(pos_x, pos_y)
{
	if (get_article_script(id) == 5)
                {
                	//print_debug("destructible object at " + string(grid_x) + ", " + string(grid_y));
                    if (floor(grid_x) == floor(pos_x))
                            if (floor(grid_y) == floor(pos_y))
                            {
                                queued_destruction = true;
                            }
                }
}