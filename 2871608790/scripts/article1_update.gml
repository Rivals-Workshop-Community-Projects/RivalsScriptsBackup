//article1_update.gml
//nspec items

/////////////////////////////////////////////////////////////////////////// ITEM GENERAL ////////////////////////////////////////////////////////////////////////////

if (!hitpause) item_timer ++;

//prevent article from being hit by the owner's teammates (unless tester is using fspecial or can hit the article with rune H)
with (oPlayer)
{
    if (player == other.player && other.item[other.item_type].name == "banana")
    {
        //can_be_hit works similarly to a move_cooldown, where it's a timer that counts down to 0
        other.can_be_hit[player] = 2;
    }
}

//physics
if (free) vsp += grav;
hsp = sign(hsp) * max((abs(hsp) - (free ? a_fric : g_fric)), 0);
    
//wall bounce
if (hit_wall) hsp = -rec_hsp / 2;
else rec_hsp = hsp;

//ground bounce
if (item_bouncy)
{
    if (free) rec_vsp = vsp;
    else vsp = ceil(-rec_vsp / 2);
}

//hitpause
if (hitstop > 0) hitpause = true;
else if (hitpause)
{
    hsp = old_hsp;
    vsp = old_vsp;
    hitpause = false;
}

//hitbox work
if (item_hbox_num > 0)
{
    if (item_timer >= hbox_spawn_time && !instance_exists(item_hbox))
    {
        item_hbox = create_hitbox(AT_NSPECIAL, item_hbox_num, floor(x), floor(y));
        item_hbox.owner = self;
    }
    else if (instance_exists(item_hbox))
    {
        item_hbox.length = item_timer;
        item_hbox.hitbox_timer --;
        item_hbox.x = x + hsp;
        item_hbox.y = y + vsp;

        if (!item_hit_azi || item_timer < item_hit_azi_grace) item_hbox.no_azi_backfire = 1;
        else if (item_timer >= item_hit_azi_grace) item_hbox.no_azi_backfire = 0;

        if (item_hbox.destroyed)
        {
            destroy_item();
            exit;
        }

        //parry reflect
        if (!item_hbox.does_not_reflect && reflected_item)
        {
            if (item[item_type].name == "car")
            {
                car_state = 1;
                car_state_timer = 0;
                hsp = -2 * spr_dir;
                vsp = -10;
                hitbox_destroy();
            }
            else
            {
                hsp = -hsp;
                vsp = -vsp;
            }
            reflected_item = false;
        }

        //collision with other hitboxes
        
        with (item_hbox)
        {
            var hitbox_check = instance_place(x, y, pHitBox);

            if (hitbox_check)
            {
                if (proj_break) exit;

                if (hitbox_check.player_id != player_id && hitbox_check.owner != other ||
                    hitbox_check.attack != AT_NSPECIAL && hitbox_check.attack != AT_DSPECIAL && hitbox_check.attack != AT_DSPECIAL_AIR)
                {
                    sound_play(sound_effect);
                    spawn_hit_fx(x, y, hit_effect);

                    with (other) //item reactions to being hit
                    {
                        item_has_hit = true;
                        switch (item[item_type].name)
                        {
                            case "bell":
                                sound_stop(other.sound_effect);
                                sound_play(asset_get("sfx_blow_medium2"));
                                break;
                            case "textbook": //check with spider
                                hitbox_destroy();
                                grav = 0.4;
                                vsp = -5;
                                rec_timer = item_timer;
                                item_landed = true;
                                break;
                            case "soap": case "bomb":
                                item_hit_lockout = hitstop_full + floor(orig_knock/2);
                                hsp *= -1;
                                vsp = -abs(vsp);
                                break;
                        }
                    }
                }
            }
        }
    }
}

//despawn item if it reached the borders of the room
if (x < -100 || x > room_width + 100 || y > room_height)
{
    if (instance_exists(item_hbox)) item_hbox.destroyed = true;
    instance_destroy();
    exit;
}

//dspec shenanigans
if (item_dspec_bounced <= 0)
{
    if (item[item_type].name != "car" || car_state != 2) //exceptions
    {
        with (pHitBox) if (place_meeting(x, y, other) && "url" in player_id && player_id.url == 2871608790 && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR))
        {
            sound_play(asset_get("sfx_frog_nspecial_shove"))
            spawn_hit_fx(other.x, other.y - 16, HFX_WRA_WIND_SMALL);
            
            var vsp_check = clamp(other.vsp, other.item_bounce_range[0], other.item_bounce_range[1]);

            if (attack == AT_DSPECIAL && other.vsp >= 0) other.vsp = -vsp_check; //bounce up
            if (attack == AT_DSPECIAL_AIR && (other.vsp < 0 || !other.free))
            {
                other.vsp = (other.free ? vsp_check * 2 : -vsp_check); //bounce down unless item is on the ground
            }

            other.item_dspec_bounced = 5;

            print (other.vsp)
        }
    }
}
else
{
    item_dspec_bounced--;
    spawn_hit_fx(x, y - 16, HFX_ORI_SEIN_HIT);
}

if (place_meeting(x, y, asset_get("plasma_field_obj")))
{
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(x, y, 301);
    destroy_item();
    exit;
}

/////////////////////////////////////////////////////////////////////////// ITEM SPECIFIC ///////////////////////////////////////////////////////////////////////////

//item specific logic
switch (item[item_type].name)
{
    case "pencil": case "ruler": case "scissors":
        if (!hitpause) image_angle += (2 + item_timer/5) * spr_dir;

        if (item_has_hit)
        {
            if (hitpause)
            {
                old_hsp *= -0.75;
                old_vsp *= -0.75;
            }
            else
            {
                hsp *= -0.75;
                vsp *= -0.75;
            }
            item_has_hit = false;
            hitbox_destroy();

            if (venus_article_reflect != 0) venus_article_reflect = 0;
        }
        break;
    case "water":
        if (item_timer == 1 || item_landed || reflected_item || hit_wall) water_dir = sign(hsp);

        if (!item_landed && item_timer >= hbox_spawn_time)
        {
            //hitbox logic
            if (instance_exists(item_hbox))
            {
                with (item_hbox)
                {
                    if (place_meeting(x, y, pHitBox) && pHitBox.player_id != player_id)
                    {
                        sound_play(sound_effect);
                        hitbox_destroy();
                    }
                    else if (has_hit)
                    {
                        other.item_landed = true;
                        hitbox_destroy();
                    }
                }
            }
            else
            {
                spawn_hit_fx(x, y, player_id.fx_water_hit);
                destroy_item();
            }

            if (vsp < 0) item_hit_azi_grace = item_timer+2;

            //land detection + movement
            // "couldn't find instance" erorr happens when players hit the bottle
            image_angle += water_dir * 2;

            if (!free && instance_exists(item_hbox))
            {
                spawn_hit_fx(x, y, player_id.fx_water_hit);
                sound_play(asset_get("sfx_orcane_dsmash"), false, 0, 0.3);
                sound_play(asset_get("sfx_orca_soak"));
                vsp = -3;
                hsp = 5 * water_dir;
                rec_timer = item_timer;
                item_landed = true;
            }
        }
        else if (item_landed)
        {
            hitbox_destroy();
            can_be_pocket = false;

            water_time ++;
            image_angle -= water_dir * 10;
            
            if (water_time % 5 == 0)
            {
                var hbox = create_hitbox(AT_NSPECIAL, 4 + (water_time == 15), x, y-16);
                hbox.no_azi_backfire = !item_hit_azi;
                spawn_hit_fx(x, y-16, (water_time == 15) ? fx_water_final : fx_water_multi); //might wanna change these
            }
            else if (water_time > 15) destroy_item();
        }
        break;
    case "lunchbox":
        if (item_timer > 20) with (oPlayer) if (place_meeting(x, y, other) && !hurtboxID.dodging && state != PS_RESPAWN && state != PS_DEAD)
        {
            set_player_damage(player, clamp(get_player_damage(player) - 10, 0, 999));
            sound_play(asset_get("mfx_hp_spawn"));
            with (other)
            {
                spawn_hit_fx(x, y-8, HFX_ORI_BLUE_SMALL);
                destroy_item();
            }
        }
        break;
    case "banana":
        if (item_timer >= hbox_spawn_time)
        {
            if (banana_slip)
            {
                is_hittable = true;

                with (oPlayer)
                {
                    if (place_meeting(x, y, other) && invince_time <= 0 && !hurtboxID.dodging && state != PS_RESPAWN && state != PS_DEAD &&
                        (player != other.player || other.item_timer >= other.item_hit_azi_grace))
                    {
                        if (perfect_dodging) //parry
                        {
                            old_hsp = hsp;
                            old_vsp = vsp; 
                            hitpause = true;
                            hitstop = 5;
                            perfect_dodged = true;
                            if (self != other)
                            {
                                invincible = true;
                                invince_time = 60;
                                iasa_script();
                            }

                            with (other)
                            {
                                sound_play(asset_get("sfx_parry_success"));
                                var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 18);
                                newdust.x = floor(other.x);
                                newdust.y = floor(other.y-other.char_height/2);
                                newdust.dust_fx = 9;
                                newdust.player = other.player;
                                newdust.player_id = other;

                                destroy_item();
                            }
                        }
                        else if (state != PS_PRATFALL && state != PS_PRATLAND) //slip
                        {
                            was_parried = true;
                            banana_prat_time = other.banana_prat_time_set;

                            set_state(free ? PS_PRATFALL : PS_PRATLAND);
                            hsp = 0;
                            with (other) sound_play(sound_get("sfx_banana_slip"));
                        }

                        with (other)
                        {
                            spawn_hit_fx(x, y-8, HFX_ORI_BLUE_SMALL);
                            destroy_item();
                        }
                    }
                }
            }
        }
        break;
    case "bell":
        if (item_timer == 0) hsp = hsp * 1.5 + 2 * spr_dir;

        if (car_state == 2 && item_timer > hbox_spawn_time + 1) //after-car interraction
        {
            hitbox_destroy();
            destroy_item();
            exit;
        }

        if (!item_landed)
        {
            if (instance_exists(item_hbox) && item_has_hit)
            {
                if (!hitpause) spawn_hit_fx(x, y, 301);
                hitbox_destroy();
                destroy_item();
                exit;
            }

            if (item_timer >= 16)
            {
                hsp = 0;
                vsp = 10;
                if (!free)
                {
                    item_landed = true;
                    hitbox_destroy();
                }
            }
        }
        else
        {
            grav = 0.4;

            bell_time ++;
            if (bell_time >= 40) destroy_item();

            if (venus_article_reflect != 0) venus_article_reflect = 0;
        }
        break;
    case "textbook":
        if (!item_landed)
        {
            if (!free)
            {
                hitbox_destroy();
                create_hitbox(AT_NSPECIAL, 1, floor(x), floor(y));
                spawn_hit_fx(x, y, HFX_KRA_ROCK_HUGE);
                sound_play(asset_get("sfx_blow_heavy2"));
                grav = 0.4;
                vsp = -5;
                rec_timer = item_timer;
                item_landed = true;
            }
            else if (vsp > 1)
            {
                if (item_has_hit)
                {
                    item_hit_lockout = 10;
                    item_has_hit = false;
                }

                if (!hitpause) item_hit_lockout --;
                if (item_hit_lockout > 0) hitbox_destroy();
                else item_hbox_num = 17;
            }
        }
        else
        {
            if (free) image_angle += sign(hsp);
            else destroy_item();

            if (venus_article_reflect != 0) venus_article_reflect = 0;
        }
        break;
    case "car":
        if (!hitpause) car_state_timer ++;

        //destroy car with dodging
        with (oPlayer) if (place_meeting(x, y, other) && hurtboxID.dodging && other.car_state != 2) with (other)
        {
            var hb_explode = create_hitbox(AT_NSPECIAL, 16, x, y-8);
            hb_explode.kb_angle = spr_dir == 1 ? hb_explode.kb_angle : 90 - hb_explode.kb_angle + 90;
            other.knock_dir = hb_explode.kb_angle;

            spawn_hit_fx(x, y-8, fx_car_explode);
            sound_play(asset_get("sfx_mol_huge_explode"));

            destroy_item();
            exit;
        }

        switch (car_state)
        {
            case 0: //idle
                image_index += abs(hsp) * (car_idle_anim_speed / 2);
                if (image_index >= image_number - 1) image_index = 0;

                if (!free && item_timer > 0)
                {
                    if (spitting && abs(hsp) > car_init_speed[0]) hsp = lerp(car_init_speed[1] * spr_dir, car_init_speed[0] * spr_dir, item_timer / 50);
                    else hsp = (car_init_speed[0] - item_timer / car_slowdown_rate) * spr_dir;

                    if (car_sees_wall > 0) car_sees_wall --;
                    if (hit_wall && car_sees_wall == 0) car_sees_wall = 2;

                    if (!place_meeting(x + 32 * spr_dir, y + 1, asset_get("par_block"))
                    && !place_meeting(x + 32 * spr_dir, y + 1, asset_get("par_jumpthrough")) || car_sees_wall == 2) spr_dir *= -1;

                    if (item_timer > 1 && hsp == 0) destroy_item(); //when the car stops the car dies
                }

                if (car_item_held == -1) //item grab
                {
                    with (obj_article1) if ("is_an_azi_and_baggy_item" in self && self != other && collision_circle(x, y, 2, other, false, true))
                    {
                        if (!item_hit_player && !item_landed && item[item_type].name != "car")
                        {
                            other.car_item_held = item_type;

                            sound_stop(item_loop_sound);
                            instance_destroy(self);
                            exit;
                        }
                    }
                }
                break;
            case 1: //flipped
                image_index = 4;
                item_bouncy = true;
                hitbox_destroy();
                if (car_state_timer >= 120) destroy_item();
                break;
            case 2: //exploding on player
                if (venus_article_reflect != 0) venus_article_reflect = 0;

                if (car_state_timer == 1)
                {
                    hsp = 0;
                    vsp = -10;
                }

                if (car_player_id != noone) //car command grab
                {
                    car_grab_time ++;

                    with (car_player_id)
                    {
                        if (other.car_grab_time < hitstop_full) //transition to grab position
                        {
                            x = lerp(x, other.x, other.car_grab_time/hitstop_full);
                            y = lerp(y, other.y, other.car_grab_time/hitstop_full);
                        }
                        else //has enemy on top of it
                        {
                            x = other.x;
                            y = other.y;
                        }
                        hitstop = 2;

                        var hbox_check = other.player_id.my_hitboxID;
                        if (last_player != other.player || instance_exists(hbox_check) && //let go of grabbed players if they are hit
                            (hbox_check.attack != AT_NSPECIAL || hbox_check.hbox_num != 15 && hbox_check.hbox_num != 16))
                        {
                            hitstop = 0;
                            other.car_state = 1;
                            other.car_state_timer = 0;
                            other.vsp = -10;
                            other.car_player_id = noone;
                        }
                        else
                        {
                            with (other)
                            {
                                if (abs(vsp) <= 0.5 && free && car_grab_time > hitstop_full + 6)
                                {
                                    if (car_item_held != 9 && car_item_held != 11) //if you change the order these need to change too
                                    {
                                        var hb_explode = create_hitbox(AT_NSPECIAL, 16, x, y-8);
                                        hb_explode.kb_angle = spr_dir == 1 ? hb_explode.kb_angle : 90 - hb_explode.kb_angle + 90;
                                        car_player_id.knock_dir = hb_explode.kb_angle;

                                        spawn_hit_fx(x, y-8, fx_car_explode);
                                        sound_play(asset_get("sfx_mol_huge_explode"));
                                    }

                                    x = car_player_id.x + car_player_id.hsp;
                                    y = car_player_id.y + car_player_id.vsp;
                                    item_has_hit = false;

                                    if (car_item_held != -1)
                                    {
                                        item_type = car_item_held;
                                        sprite_index = sprite_get("artc_nspec_" + item[item_type].name);
                                        switch (item[car_item_held].name)
                                        {
                                            case "pencil": case "ruler": case "scissors":
                                                item_timer = hbox_spawn_time;
                                                item_hbox_num = 8 + car_item_held;
                                                can_be_grounded = false;
		                                        ignores_walls = true;
                                                break;
                                            case "water":
                                                item_landed = true;
                                                vsp = -5;
                                                break;
                                            case "lunchbox": //sends the lunchbox the opposite direction
                                                item_timer = 0;
                                                hsp = -4 * spr_dir;
                                                vsp = -7;
                                                grav = 0.6;
                                                g_fric = 1;
                                                item_bouncy = true;
                                                break;
                                            case "paper": //paper should home into the hit player
                                                item_timer = 0 - car_player_id.hitstop_full;
                                                item_hbox_num = 11;
                                                ignores_walls = true;
                                                grav = 0.05;

                                                paper_movement = false;
                                                paper_homing = true;
                                                paper_homing_id = car_player_id;
                                                hsp = -paper_homing_spd * paper_homing_id.spr_dir;
                                                vsp = -paper_homing_spd;
                                                break;
                                            case "banana":
                                                banana_slip = true;
                                                break;
                                            case "bell":
                                                item_hbox_num = 7;
                                                item_timer = hbox_spawn_time;
                                                vsp = -6;
                                                break;
                                            case "soap": //both soap and bomb replace the car's explosion entirely, rather than stack on top of it
                                                item_timer = soap_time - 3;
                                                break;
                                            case "bomb":
                                                item_timer = bomb_time + bomb_flash_time - 3;
                                                break;
                                        }

                                        car_player_id = noone;
                                    }
                                    else
                                    {
                                        destroy_item();
                                        exit;
                                    }
                                }
                            }
                        }
                    }
                }
                break;
        }
        break;
    case "paper":
        image_angle = point_direction(x, y, x + hsp * spr_dir, y + vsp * spr_dir);

        //movement
        if (paper_movement) for (var i = 0; i < array_length(paper_coords); i ++)
        {
            //i'm using the rec_timer variable to do some gap math
            if (item_timer == paper_coords[i][2]) rec_timer = item_timer;

            if (i + 1 != array_length(paper_coords)) if (item_timer < paper_coords[i][2] && item_timer >= paper_coords[i-1][2])
            {
                //the gap math, constantly resetting the timer basically
                var time_math = (item_timer - rec_timer) / (paper_coords[i][2] - paper_coords[i-1][2]);

                hsp = lerp(
                    (paper_coords[i][0] + player_input) * spr_dir,
                    (paper_coords[i+1][0] + player_input) * spr_dir,
                    time_math
                );

                vsp = lerp(
                    paper_coords[i][1] + player_input,
                    paper_coords[i+1][1] + player_input,
                    time_math
                );
            }
        }
        else if (paper_homing && paper_homing_id != noone)
        {
            //angle calculation
            var angle_player = point_direction(x, y, paper_homing_id.x, paper_homing_id.y - floor(paper_homing_id.char_height) / 2);
            var angle_cur = point_direction(x, y, x + hsp, y + vsp);
            if ("angle_final" not in self) angle_final = 0;

            if (angle_player >= (angle_cur + 180)) angle_cur += 360;
            if (angle_player < (angle_cur - 180)) angle_cur -= 360;

            var angle_diff = angle_player - angle_cur;

            if (angle_diff < -paper_homing_turn_speed) angle_diff = -paper_homing_turn_speed;
            if (angle_diff > paper_homing_turn_speed) angle_diff = paper_homing_turn_speed;

            angle_final += angle_diff;

            //angle results
            hsp = lengthdir_x(paper_homing_spd, angle_final);
            vsp = lengthdir_y(paper_homing_spd, angle_final);

            if (instance_exists(item_hbox)) for (var i = 0; i < array_length(item_hbox.can_hit); i++) item_hbox.can_hit[i] = true;
        }
        else grav = 0.3;
        

        if (paper_hit_times < paper_hit_times_max) //multi hits
        {
            if (item_has_hit)
            {
                paper_hit_times ++;
                if (paper_hit_times < paper_hit_times_max)
                {
                    item_has_hit = false;
                    item_hit_lockout = plane_hit_lockout;
                }
            }

            if (!hitpause) item_hit_lockout --;
            if (item_hit_lockout > 0) hitbox_destroy();
            else item_hbox_num = 11;
        }
        if (instance_exists(item_hbox) && paper_hit_times >= paper_hit_times_max && item_has_hit) //final hit
        {
            paper_movement = false;
            paper_homing = false;
            paper_homing_id = noone;
            if (hitpause)
            {
                old_hsp *= -0.2;
                old_vsp = -3;
            }
            else
            {
                hsp *= -0.2;
                vsp = -3;
            }
            hitbox_destroy();

            if (venus_article_reflect != 0) venus_article_reflect = 0;
        }
        break;
    case "soap":
        //VFX logic

        //this part just tells the soap item what particles it should use
        for (var i = 0; i < array_length(soap_state_change); i++) if (item_timer < soap_time && item_timer == soap_state_change[i]) soap_state = i;

        //var soap_math = floor(soap_time / 60) - floor((item_timer - 1) / 60);
        var soap_math = (soap_state * 2 - array_length(soap_state_change) * 2 )* -1;

        //spawn particles
        if (item_timer % soap_math == 0)
        {
            spawn_hit_fx(
                x + (random_func(1, 5, true) - 2) * 4,
                y + (random_func(2, 5, true) - 2) * 4,
                fx_soap_part
            );
        }

        //particle physics
        with (hit_fx_obj) if (hit_fx == other.fx_soap_part)
        {
            switch (other.soap_state)
            {
                case 0:
                    vsp += 0.02;
                    break;
                case 1:
                    if (step_timer == 0)
                    {
                        hsp = (random_func(1, 6, true) - 3)/2;
                        vsp = -4 - random_func(2, 2, true);
                    }
                    else vsp += 0.3;
                    break;
                case 2:
                    if (step_timer == 0)
                    {
                        hsp = (random_func(1, 6, true) - 3);
                        vsp = -5 - random_func(2, 3, true);
                    }
                    else vsp += 0.3;
                    break;
            }
        }

        //HITBOX logic
        if (!hitpause) item_hit_lockout --;

        //when the soap lands it stops being an active hitbox
        if (!free && abs(hsp) < 0.1 || item_hit_lockout > 0) hitbox_destroy();
        else item_hbox_num = soap_hbox;

        //explode
        if (item_timer >= soap_time || item_hit_player)
        {
            create_hitbox(AT_NSPECIAL, 14, x, y-16);
            spawn_hit_fx(x, y-16, fx_soap_explode);
            sound_play(asset_get("sfx_mol_huge_explode"));

            if (instance_exists(item_hbox)) hitbox_destroy();
            destroy_item();
            exit;
        }
        break;
    case "bomb":
        //destroy bomb with dodging
        with (oPlayer) if (place_meeting(x, y, other) && hurtboxID.dodging && other.item_timer < other.bomb_time) other.item_timer = other.bomb_time;

        //image index shenanigans - before it's gonna blow up it stays on the last frame for a bit
        if (item_timer <= bomb_time) image_index = lerp(0, image_number-1, item_timer/bomb_time);
        else image_index = image_number-1;

        if (item_timer == bomb_time)
        {
            sound_stop(item_loop_sound);
            sound_play(asset_get("sfx_mol_flash_light"));
        }

        //HITBOX logic
        if (!hitpause) item_hit_lockout --;

        //when the bomb lands it stops being an active hitbox
        if (!free && abs(hsp) < 0.1 || item_hit_lockout > 0) hitbox_destroy();
        else item_hbox_num = bomb_hbox;

        //explode
        if (item_timer >= bomb_time + bomb_flash_time || item_hit_player)
        {
            var hbox = create_hitbox(AT_NSPECIAL, 3, floor(x), floor(y));
            hbox.no_azi_backfire = !item_hit_azi;
            spawn_hit_fx(x, y, fx_bomb_explode);
            sound_play(asset_get("sfx_mol_huge_explode"));

            if (instance_exists(item_hbox)) hitbox_destroy();
            destroy_item();
            exit;
        }
        break;
    case "sandwich":
        if (!hitpause)
        {
            if (free) rec_vsp = vsp;
            else
            {
                spawn_hit_fx(x, y, 301);
                sound_play(asset_get("sfx_blow_weak1"));
                vsp = -rec_vsp;
                
                image_index = image_number - item_hp;
                item_hp --;
                hitbox_destroy();
                item_hbox_num = sandwich_hbox;
                if (item_hp < 0) destroy_item();
            }
        }
        break;
    case "fail":
        if (vsp > 1)
        {
            vsp = 1;

            if (failpaper_sway_time >= failpaper_sway_time_max || failpaper_sway_time <= 0) failpaper_sway_inc = !failpaper_sway_inc;
            failpaper_sway_time += !failpaper_sway_inc ? 1 : -1;
            hsp = ease_cubeInOut(2, -2, failpaper_sway_time, failpaper_sway_time_max) * spr_dir;
        }
        else
        {
            hsp = lerp((3 + player_input * 1.5), 0, (vsp - 10) / (-10 + 2)) * -spr_dir;
        }
        image_angle = hsp*10 + hsp*10/2;
        break;
}


#define hitbox_destroy()
{
    if ("item_hbox" in self && instance_exists(item_hbox))
    {
        item_hbox.length = 0;
        item_hbox = noone;
        item_hbox_num = 0;
    }
}
#define destroy_item()
{
    car_player_id = noone;
    paper_homing_id = noone;

    sound_stop(item_loop_sound);
    hitbox_destroy();
    instance_destroy();
    exit;
}