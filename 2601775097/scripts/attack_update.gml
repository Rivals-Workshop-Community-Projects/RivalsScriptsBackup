// attack_update

//normals
switch (attack)
{
    case AT_UTILT:
        can_fast_fall = false;
        break;
    case AT_NAIR:
        if ((window == 3 || window == 4 && window_timer < 17) && has_hit) //N-air canceling
        {
            window = 4;
            window_timer = 18;
            destroy_hitboxes();
        }
        break;

    case AT_DAIR:
        if (window == 4)
        {
            hurtboxID.sprite_index = hurtbox_spr;
            if (free) state = PS_IDLE_AIR;
            else state = PS_LAND;
        }

        if (has_rune("D") || fuck_you_cheapies && theikos_active) //makes bar's D-air do the earthquake attack from D-strong
        {
            if (!free)
            {
                //redirection
                if (window == 1 || window == 2)
                {
                    window = 5;
                    window_timer = 0;
                    destroy_hitboxes();
                }
                else if (window == 3)
                {
                    window = 6;
                    window_timer = 0;
                    destroy_hitboxes();
                }
        
                //attack
                if (window == 6)
                {
                    if (window_timer == 1 && !hitpause)
                    {
                        create_hitbox(AT_DAIR, 3, 0, -56);
                        spawn_hit_fx(x, y-16, 155);
                    }
                    if (window_timer == 2) shake_camera(5, 10); //power, time
                }
            }
        }
        else
        {
            //yes, i need to check the windows individually...
            if ((window == 1 || window == 2 || window == 3) && !free && state == PS_ATTACK_GROUND) 
            {
                attack_end();
                landing_lag_time = 12 + 1; //+1 is cuz it just goes back to 0 for some reason
                set_state(PS_LANDING_LAG); //also yes, i need to set this shit manually
                if (state_timer >= 12) state = PS_IDLE;
            }
        }
        break;
    case AT_USTRONG:

        //initial attack mana cost + reset targetting
        if (window == 1 && window_timer == 1)
        {
            mp_current -= strong_cost;
            tracking_target = noone;
        }
    
        //if bar has enough mana and presses special, throw the spear
        if (window == 5 && window_timer >= 5 && special_down && mp_current >= strong_cost)
        {
            set_attack(AT_USTRONG) window = 6;
        }

        //trajectory logic
        if (window == 7 && window_timer == 1) 
        {
            mp_current -= strong_cost;

            //effect/hitbox setup
            if (burningfury_active) 
            {
                var spear = create_hitbox(AT_USTRONG, 5, x+40*spr_dir, y-40);
                spear.fx_particles = 2;
                if (user_event_1_active) spear.fx_particles = 6;
                spear.mask_index = hb_burn_0;
            }
            else
            {
                var spear = create_hitbox(AT_USTRONG, 4, x+40*spr_dir, y-40);
                spear.fx_particles = 1;
                if (user_event_1_active) spear.fx_particles = 5;
                spear.mask_index = hb_light_0;
            }

            //credit to rioku
            if(tracking_target != noone)
            {
                var tempx = tracking_target.x-tracking_target.spr_dir*10 - spear.x;
                var tempy = tracking_target.y - spear.y;
                var speed = 18;
                var a = darctan2(tempy, tempx);
                a = a < -90? max(a, -140):min(a, -70);
                spear.proj_angle = -a - 90;
                spear.hsp = speed*dcos(a);
                spear.vsp = speed*dsin(a);

                runeH_pullx = spear.hsp;
                runeH_pully = spear.vsp;
                runeH_angle = spear.proj_angle;

                tracking_target = noone;
            }
            else
            {
                if ((left_down && spr_dir) || (right_down && -spr_dir)) //pressing away from direction
                {
                    spear.vsp = -16;
                    spear.hsp = -5 * spr_dir;
                    spear.proj_angle = 15 * spr_dir;
                }
                else if ((left_down && -spr_dir) || (right_down && spr_dir)) //pressing towards direction
                {
                    spear.vsp = -18;
                    spear.hsp = 3 * spr_dir;
                    spear.proj_angle = -10 * spr_dir;
                }
                else //nothing pressed
                {
                    spear.vsp = -20;
                    spear.hsp = 0;
                }

                runeH_pullx = spear.hsp;
                runeH_pully = spear.vsp;
                runeH_angle = spear.proj_angle;
            }
        }

        //don't throw spear if special isn't pressed or he doesn't have enough mana
        if (window == 5 && (!special_down || mp_current < strong_cost)) 
        {
            if (has_hit) { //hitting = 15 frames || whiff = 23 frames
                if (window_timer == get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH)) {
                    window = 9;
                    window_timer = 0;
                }
            }
            else {
                if (window_timer == 23) {
                    window = 9;
                    window_timer = 0;
                }
            }
        }

        if (window == 7 && window_timer == 3) burningfury_active = false;
        break;
    
    case AT_DSTRONG:
        if (window == 2) //charge
        {
            if (strong_charge % 6 == 0 && strong_charge != 0) mp_current --;
            
            if (strong_charge >= 0 && strong_charge <= 60) mpGainable = false;

            if (window_timer == 5 || strong_charge % 10)
            {
                hitbox_cooldown --;

                if (hitbox_cooldown == 0)
                {
                    var dstrong_firecharge = create_hitbox(AT_DSTRONG, 1, 0, -56);
                    dstrong_firecharge.fx_particles = 2;
                    if (user_event_1_active) dstrong_firecharge.fx_particles = 6;

                    attack_end(AT_DSTRONG);
                    hitbox_cooldown = 10;
                }
            }

            if (strong_charge == 30 && mp_current < strong_cost)
            {
                window = 3;
                window_timer = 0;
                smash_charging = false;
            }
            if (strong_charge == 31) sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), 0, 0)
        }
        if (window == 3 && window_timer == get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH)) //enough strong_charge
        {
            if (strong_charge > 30 || has_rune("I") && strong_charge >= 0)
            {
                var fireblast = create_hitbox(AT_DSTRONG, 3, 0, -56);
                fireblast.fx_particles = 2;
                if (user_event_1_active) fireblast.fx_particles = 6;

                sound_play(asset_get("sfx_kragg_rock_shatter"), 0, 0);
                spawn_hit_fx(x, y-16, fx_rockblow);
                window = 6;
                window_timer = 0;
            }
        }

        if ((window == 3 || window == 6) && window_timer < 1 && !hitpause)
        {
            var flameblast = spawn_hit_fx(x, y, fx_dstrong_fireblast);
            flameblast.depth = -6;
        }

        if (window == 5 && ((has_hit && window_timer == 14) || (!has_hit && window_timer == 21)) ) window = 7;

        if (window == 6 && window_timer == get_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH)) //window 6 = earthquake charge attack
        {
            window = 5;
            window_timer = 0;
        }

        //if bar has rune I he will spawn rock projectiles
        if (has_rune("I") && strong_charge > 30)
        {
            //extra effect
            if (window == 3 && window_timer == 3)
            {
                var earth_shatter = spawn_hit_fx(x, y, fx_earthshatter)
                earth_shatter.depth = -6;
            }

            //debris spawn
            if (window == 6 && window_timer == 1 && !hitpause)
            {
                var random_x = 0;
                var random_rot = 0;
                var random_img = 0;
                var rock = noone;

                for (var i = 0; i < 4; i++)
                {
                    random_x[i] = random_func(41+i, 8, true)*16-56;
                    random_rot[i] = random_func(41+i, 180, true)-90;
                    random_img[i] = random_func(41+i, 4, true);
                    rock[i] = create_hitbox(AT_DSTRONG, 5, x+((i*24)-48+16)*spr_dir, y-32);
                    //24 = multiply offset
                    //48 = bringing the center point back to 0
                    //16 = offset

                    //pre-set trajectory
                    if (theikos_active && !is_8bit || get_player_color(player) == 31 || godpower) rock[i].sprite_index = sprite_get("theikos_fx_debris");
                    else rock[i].sprite_index = sprite_get("fx_debris");

                    rock[i].hsp = (i-1.5)*2*spr_dir;
                    rock[i].vsp = -9 - (strong_charge-30)/12;
                    rock[i].proj_angle = random_rot[i];
                    rock[i].image_index = random_img[i];

                    if (i == 0 || i == 3)
                    {
                        rock[i].grav = 0.75;
                    }
                    else rock[i].grav = 0.5;

                    //random trajectory
                    /*
                    if (rock[i].x > x && spr_dir || rock[i].x <= x && -spr_dir)
                    {
                        rock[i].hsp = (abs(random_x[i]+1)*spr_dir;
                        rock[i].proj_angle = random_rot[i];
                        rock[i].image_index = random_img[i];
                    }
                    else
                    {
                        rock[i].hsp = (abs(random_x[i]/32)+1)*-spr_dir;
                        rock[i].proj_angle = random_rot[i];
                        rock[i].image_index = random_img[i];
                    }
                    */
                }
            }
        }

        //camera shake
        if (window == 4 && window_timer == 1) shake_camera(4, 6); //power, time - weak charge
        else if (window == 6 && window_timer == 0) shake_camera(6, 12); //power, time - strong charge
        break;
    case AT_FSTRONG:
        if (has_rune("C") && !burningfury_active && !godpower)
        {
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 25 + strong_charge/2);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_lightblow2);
            set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_COLOR, 3);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
        }
        else
        {
            reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
            reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_COLOR);
            reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM);
        }
}

//////////////////////////////////////////////////SKILLS SECTION//////////////////////////////////////////////////

//B-Reversals - for the following: [0]light dagger, [1]burning fury, [5]chasm burster, [6]power smash, [8]ember fist, [9]light hookshot
if (attack == AT_SKILL0_AIR || attack == AT_SKILL1_AIR || attack == AT_SKILL2 || attack == AT_SKILL5 || attack == AT_SKILL6
|| attack == AT_SKILL8 || attack == AT_SKILL9 || attack == AT_SKILL10 || attack == AT_SKILL11)
{
    trigger_b_reverse();
}

//what if i have no MP, but while doing the moves themselves?
//the initial activation is on set_attack.gml
if (attack == AT_SKILL1 && window == 7 && window_timer == 0 && (left_down || right_down) && special_pressed && mp_current < burningfury_attack_cost) mp_error_active = true;
if (attack == AT_SKILL2 && (window == 4 || (window == 5 && window_timer <= 4)) && attack_down && mp_current < forceleap_attack_cost) mp_error_active = true;

//SKILLS LOGIC
switch (attack)
{
    case AT_NTHROW: case AT_NSPECIAL_AIR: // [0] LIGHT DAGGER
        if (window_timer == 1)
        {
            if (window == 2 || window == 11) mp_current -= lightdagger_cost;

            if (((window == 3 && window_timer == 3) || window == 4) && mp_current < lightdagger_cost) window = 13; //not enough for another?

            if (window == 6) mp_current -= lightdagger_cost; //but if it does have enough - take down the cost again

            if (window == 9 && mp_current >= lightdagger_cost && !burningfury_active) window = 1; //and return back to loop the skill
    
            if (window == 9 && mp_current < lightdagger_cost) set_state(PS_IDLE); //NOTICE: it's not ment to be abrupt
    
            //burning fury support
            if (burningfury_active && window == 1 && window_timer == 1)
            {
                window = 9;
                window_timer = 2;
            }
            if (window == 12)
            {
                burningfury_active = false;
                window = 4;
            }
        }
        if (attack == AT_SKILL0_AIR && !free) set_state(PS_LANDING_LAG);
        break;
    case AT_FTHROW: case AT_FSPECIAL_AIR: // [1] BURNING FURY
        can_wall_jump = true;

        //PHASE 1 - ACTIVATION
        if (window == 2 && window_timer == get_window_value(AT_SKILL1, 1, AG_WINDOW_LENGTH)) mp_current -= buff_activation_cost;

        if (window == 3) burningfury_active = true;

        if (window == 3 && window_timer == 1)
        {
            mp_fc_num = mp_fc_maxNum;
            var burning_fury_on_fx = spawn_hit_fx(x-(28*spr_dir), y-28, fx_fireblow1);
            burning_fury_on_fx.depth = - 5;
        }

        if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
        {
            if(!free) set_state(PS_IDLE);
            else if(free) set_state(PS_IDLE_AIR);
        }

        //PHASE 3 - DASH ATTACK
        if (burningfury_active && (left_down || right_down) && special_down) //input needs to be changed to support the skill selection
        {
            window = 7; //starting attack window
            window_timer = 0;
            fury_cycle = 3;

            if (window == 7 && window_timer == 0)
            {
                burningfury_active = false;
                mp_current -= burningfury_attack_cost;
            }
        }
    
        if (window == 10 && window_timer == get_window_value(AT_SKILL1, 10, AG_WINDOW_LENGTH) && fury_cycle > 0) //making this window loop 4 times
        {
            window_timer = 0;
            attack_end(AT_SKILL1);
            attack_end(AT_SKILL1_AIR);
            fury_cycle --;
        }
        if (window > 10)
        {
            fury_cycle = 3;
            attack_end(AT_SKILL1);
            attack_end(AT_SKILL1_AIR);
        }
        
        //fine tune the foe's position to go alongside bar
        if (burningfury_target != noone)
        {
            if (fury_cycle > 0)
            {
                burningfury_target.hsp = hsp;
        	    burningfury_target.vsp = vsp;
            }
            else if (fury_cycle == 0)
            {
                if (burningfury_target.x > x && spr_dir || burningfury_target.x < x && !spr_dir)
                {
                    burningfury_target.hsp = hsp/2;
        	        burningfury_target.vsp = vsp/2;
                }
                else
                {
                    burningfury_target.hsp = hsp*2;
        	        burningfury_target.vsp = vsp*2;
                }
            }
        }
        if (window >= 11) burningfury_target = noone;


        if (((window == 10 && window_timer >= 3 && fury_cycle == 0) || (window == 11 && window_timer <= 1)) && attack_down) //initiate attack 2
        {
            window = 15;
            window_timer = 0;
        }
        else if (window == 14) window = 18; //don't

        if (attack == AT_SKILL1_AIR && !free)
        {
            if (window <= 7) attack = AT_SKILL1;
            else if (window > 7) set_state(PS_LANDING_LAG);
        }
        break;

    case AT_UTHROW: // [2] FORCE LEAP

        can_wall_jump = true;

        if (window == 1 && window_timer == 1) mp_current -= forceleap_activate_cost;

        //TRAJECTORY LOGIC:
        //if trajectory should be checked once: if (window == 2 && window_timer == 1)
        //if trajectory should be updated every frame of movement: if (window == 2)
        if (window >= 2 && window <= 3) //movement window
        {
            if ((left_down && spr_dir) || (right_down && -spr_dir) || up_down) //pressing away from direction
            {
                forceleap_up = true;
                forceleap_down = false;
                set_window_value(AT_SKILL2, 4, AG_WINDOW_HSPEED, 6);
                set_window_value(AT_SKILL2, 4, AG_WINDOW_VSPEED, -10);
                leap_angle = -30*spr_dir;
                leap_xpos = 32;
                leap_ypos = 40;
            }
            else if ((left_down && -spr_dir) || (right_down && spr_dir) || down_down) //pressing towards direction
            {
                forceleap_up = false;
                forceleap_down = true;
                set_window_value(AT_SKILL2, 4, AG_WINDOW_HSPEED, 10);
                set_window_value(AT_SKILL2, 4, AG_WINDOW_VSPEED, -6);
                leap_angle = -60*spr_dir;
                leap_xpos = 40;
                leap_ypos = 20;
            }
            else //nothing pressed
            {
                forceleap_up = false;
                forceleap_down = false;
                reset_window_value(AT_SKILL2, 4, AG_WINDOW_HSPEED);
                reset_window_value(AT_SKILL2, 4, AG_WINDOW_VSPEED);
                leap_angle = -45*spr_dir;
                leap_xpos = 32;
                leap_ypos = 28;
            }
        }

        if (window > 4)
        {
            forceleap_up = false;
            forceleap_down = false;
        }

        if (window == 4 && window_timer == 3)
        {
            var boost = spawn_hit_fx(x+leap_xpos*spr_dir, y-leap_ypos, fx_boost);
            boost.depth = -6;
            boost.draw_angle = leap_angle;
        }

        if ((window == 4 || (window == 5 && window_timer <= 4)) && attack_down && mp_current >= forceleap_attack_cost) //movement/endlag window
        {
            set_attack(AT_SKILL2) window = 7; //attack window
        }
        if (window == 7 && window_timer == 4) mp_current -= forceleap_attack_cost;

        if (window == 8 && window_timer == 1 && !has_hit)
        {
            spawn_hit_fx(x+(40*spr_dir), y-24, fx_fireblow1);
            sound_play(asset_get("sfx_ell_dspecial_explosion_2"), 0, 0);
        }

        if (window == 7 || window == 8 || window == 9) can_move = false;
        if (!theikos_active) if (window == 6 || window == 10) set_state(PS_PRATFALL);
        if (theikos_active) if (window == 6 || window == 10) set_state(PS_IDLE_AIR);

        //if bar isn't theikos, when the move ends it will send bar into pratfall
        //but theikos bar has infinite force leaps

        //burning fury support
        if (burningfury_active && window == 7 && window_timer == get_window_value(AT_SKILL2, 7, AG_WINDOW_LENGTH)) //overlap window into the buffed move
        {
            window = 11;
            window_timer = 0;
        }
        if (window == 11 && window_timer == 1 && !has_hit)
        {
            spawn_hit_fx(x+(46*spr_dir), y-28, fx_fireblow2);
            sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
        }
        if (window == 11 && window_timer == get_window_value(AT_SKILL2, 11, AG_WINDOW_LENGTH)) //over-overlap window to the endlag
        {
            burningfury_active = false;
        }
        break;

    case AT_DTHROW: // [3] PHOTON BLAST

        can_move = false;

        //resets the variables at the start of the move just in case
        //this prevents theikos bar canceling the move and keeping the charge
        if (window == 1 && window_timer == 1)
        {
            photon_cycle = 0;
            blast_power = 0;
        }
    
        if (window == 2 && window_timer == 1) mp_current -= photonblast_cost; //skill cost
    
        if (special_down) //charge
        {
            if (window == 3)
            {
                photon_cycle = 1;
                blast_power = 1;
            }
            if (window == 4)
            {
                photon_cycle = 2;
                blast_power = 2;
            }
        }
        else if (!special_down) //release
        {
            if (theikos_active && (window == 2 || window == 3 || window == 4) && window_timer >= 2) //theikos bar can instantly unleash photon blast
            {
                window = 5;
                window_timer = 0;
            }
            if (((window == 2 && window_timer >= charge_time/2) || window == 3 || window == 4) && window_timer >= 2) //they all have the same length
            {
                window = 5;
                window_timer = 0;
            }
        }

        //loop around the attack when there's more than 0 photon cycles
        if (window == 5 && window_timer == get_window_value(AT_SKILL3, 5, AG_WINDOW_LENGTH) && photon_cycle > 0)
        {
            window_timer = 0;
            attack_end(AT_SKILL3);
            photon_cycle --;
        }

        //photon blast effect
        if (window == 5 && window_timer == 1) fx_pblast = spawn_hit_fx(x, y, fx_photonblast);

        //reset the variables at the end of the move
        if (window == 6 && window_timer == 1)
        {
            photon_cycle = 0;
            blast_power = 0;
        }

        //attack itself
        if (blast_power == 1)
        {
            set_hitbox_value(AT_SKILL3, 1, HG_DAMAGE, 7);
            set_hitbox_value(AT_SKILL3, 1, HG_BASE_KNOCKBACK, 2);
            set_hitbox_value(AT_SKILL3, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_SKILL3, 1, HG_EXTRA_HITPAUSE, 10);
        }
        if (blast_power == 2)
        {
            set_hitbox_value(AT_SKILL3, 1, HG_DAMAGE, 5);
            set_hitbox_value(AT_SKILL3, 1, HG_BASE_KNOCKBACK, 2);
            set_hitbox_value(AT_SKILL3, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_SKILL3, 1, HG_EXTRA_HITPAUSE, 10);
        }
        if (blast_power == 0 || photon_cycle == 0)
        {
            reset_hitbox_value(AT_SKILL3, 1, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL3, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_SKILL3, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_SKILL3, 1, HG_EXTRA_HITPAUSE);
        }

        //give bar softarmor / superarmor if he's not in theikos
        /*
        if (!theikos_active)
        {
            if (blast_power == 1) soft_armor = 5;
            else if (blast_power == 2) soft_armor = 10;
            else soft_armor = 0;
        }
        */
        break;
    
    case AT_NSPECIAL_2: // [4] ACCEL BLITZ
        
        accelblitz_active = true;
        blur_array_length = 5;
        can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
        can_move = false;
        can_wall_jump = true;
        fall_through = true;
        
        if (window == 1) //this is for rune G, it makes sure that the variable is reset when bar uses accel blitz normally
        {
            last_attack_hit = 0;
            runeG_blitzjump = false;
        }
        if (attack == AT_SKILL4 && window == 5 && window_timer == 14) last_attack_hit = 0;

        //The main teleportation logic. You can place this anywhere in the script.
        //teleport template made by Deor
        if (!accelblitz_done_once)
        {
            //reset positioning
            if (window == 1 && window_timer == 1)
            {
                dist_x = 0;
                dist_y = 0;
            }
            
            //aim logic
            if (window == 2)
            {
                if (!theikos_active) tp_dist = 8; //10
                else if (theikos_active) tp_dist = 15;

                if (window_timer == 1) //setup window
                {
                    mp_current -= accelblitz_cost;
                    tp_dist = 100;
                    tp_angle = 90;
                    //the move will always default up, but if you set a direction and
                    //still holding down the special attack button, it will keep going in that direction

                    //underswap papyrus alt has it's own sound effect that plays
                    if (get_player_color(player) == 13) sound_play(sound_get("sfx_soul"), 0, 0);
                }

                if (!joy_pad_idle)
                {
                    tp_angle = joy_dir;
                    dist_x += lengthdir_x(tp_dist, tp_angle);
                    dist_y += lengthdir_y(tp_dist, tp_angle);
                }

                x_ = x + dist_x; //The coordinates of the desired teleportation destination.
                y_ = y + dist_y;

                accel_drawpoint_x = x_;
                accel_drawpoint_y = y_;
            }         

            //accel blitz start
            if (!special_down && window == 2 || window == 2 && window_timer == get_window_value(AT_SKILL4, 2, AG_WINDOW_LENGTH)) 
            {
                window = 3;
                window_timer = 0;
                var fx_accelbitz_blast = spawn_hit_fx(x, y-32, fx_accelblitz);
                fx_accelbitz_blast.depth = -6;
                var random_angle = random_func(18, 60, true)-30;
                fx_accelbitz_blast.draw_angle = random_angle;
                sound_play(asset_get("sfx_ori_uptilt_single"));
            }
    
            //Teleportation Logic
            if(window == 3 && window_timer == 1)
            {
                /*
                if(place_meeting(x_, y_, asset_get("par_block"))) //Check to see if destination is colliding with the stage.
                {
                    var tp_dest = stage_collide_alt(x, y, x_, y_, tp_prec); //Use alternate collision function to determine the new teleportation destination.
                    x_ = tp_dest[0];
                    y_ = tp_dest[1];
                }
                */
            
                //Change the player's location to the teleport destination.
                x = x_;
                y = y_;

                attack_end(AT_SKILL4);
            }

            //accel blitz exit effect
            if (!hitstop && window == 4 && window_timer == 1) 
            {
                var fx_accelbitz_blast = spawn_hit_fx(x, y-32, fx_accelblitz);
                fx_accelbitz_blast.depth = -6;
                var random_angle = random_func(18, 60, true)-30;
                fx_accelbitz_blast.draw_angle = random_angle;
                sound_play(asset_get("sfx_ori_ustrong_launch"));
            }

            //move end
            if (window == 5 && window_timer == get_window_value(AT_SKILL4, 5, AG_WINDOW_LENGTH))
            {
                accelblitz_active_timer = true;

                if (!theikos_active) accelblitz_done_once = true;
            }
        }
        break;
    case AT_EXTRA_1: // [5] CHASM BURSTER

        can_wall_jump = true;
        if (window == 3) can_jump = true;
        else can_jump = false;

        //mana costs
        if (window == 1 && window_timer == 1) mp_current -= chasmburster_activate_cost;
        if (window == 4 && window_timer == 1 && !hitpause) mp_current -= chasmburster_attack_cost;

        if (attack == AT_SKILL5 && window == 4 && window_timer == 2) shake_camera(6, 8); //power, time
    
        if (window == 5 && window_timer == 1 && !hitpause)
        {
            var earth_punch = spawn_hit_fx(x+32*spr_dir, y, 305)
            earth_punch.depth = depth - 10;
        }

        //chasms bursting
        if ((window == 5 || window == 8) && window_timer < 13 && !hitpause) burst_count ++;

        if ( ((window == 5 && burst_count % 3 == 0) || (window == 8 && burst_count % 2 == 0)) && window_timer < 13 && !hitpause && !reached_max_bursts)
        {
            var chasmburst = create_hitbox(AT_SKILL5, 2, x+burst_pos*spr_dir, y-42);
            chasmburst.fx_particles = 2;
            if (user_event_1_active) chasmburst.fx_particles = 6;

            burst_pos += 40;
        }

        //burst reset
        if (window == 6 && window_timer == 1)
        {
            burst_pos = get_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X);
            burst_count = 0;
        }
        
        if (window == 6 && window_timer == get_window_value(AT_SKILL5, 6, AG_WINDOW_LENGTH)) window = 9;

        //air version logic is now on update.gml
        //besides this hitbox that spawns when bar is falling
        if (free && !hitpause && state_timer == 22)
        {
            create_hitbox(AT_SKILL5, 5, x, y);
            attack_end(AT_SKILL5);
        }
        if (burningfury_active)
        {
            if (!free && window == 4 && window_timer == 1)
            {
                window = 7;
                window_timer = 1;
            }
            if (window == 8 && window_timer == get_window_value(AT_SKILL5, 8, AG_WINDOW_LENGTH))
            {
                burningfury_active = false;
                window = 6;
                window_timer = 0;
            }
        }
        break;
    case AT_FSPECIAL_2: // [6] POWER SMASH

        can_wall_jump = true;
        if (window == 4 && window_timer > 12 || window == 5) can_jump = true;
        else can_jump = false;

        if (window_timer == 1 && !hitpause)
        {
            if (window == 2) mp_current -= powersmash_activate_cost;
            if (window == 6) mp_current -= powersmash_attack_cost;
        }
        
        if (free && window_timer == 1 && window == 1)
        {
            sound_play(asset_get("sfx_swipe_heavy2"), 0, 0);
            mp_current -= powersmash_activate_cost;
            window = 3;
            window_timer = 1;
        }

        if (window == 7)
        {
            if (window_timer == 1 && !hitpause)
            {
                var rockblow = spawn_hit_fx(x-8*spr_dir, y-16, fx_rockblow);
                rockblow.depth = -4;
                shake_camera(7, 16); //power, time
            }

            //works like zetter down b fire
            if (!instance_exists(obj_article3) && window_timer == 2 && !place_meeting(x, y, asset_get("plasma_field_obj")) && !hitpause)
            {
                var powersmash = instance_create(x, y, "obj_article3");
                powersmash.depth = -4;
            }
            else if (instance_exists(obj_article3) && window_timer == 1) instance_destroy(obj_article3);
        }

        if (burningfury_active)
        {
            set_hitbox_value(AT_SKILL6, 1, HG_DAMAGE, 5);
            set_hitbox_value(AT_SKILL6, 1, HG_VISUAL_EFFECT, fx_fireblow2);
            set_hitbox_value(AT_SKILL6, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
            set_hitbox_value(AT_SKILL6, 1, HG_HITBOX_COLOR, 2);
            set_hitbox_value(AT_SKILL6, 1, HG_HIT_PARTICLE_NUM, 2);

            set_hitbox_value(AT_SKILL6, 2, HG_DAMAGE, 10);
            set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow3);
            set_hitbox_value(AT_SKILL6, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
            set_hitbox_value(AT_SKILL6, 2, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_SKILL6, 2, HG_KNOCKBACK_SCALING, 0.9);
            set_hitbox_value(AT_SKILL6, 2, HG_BASE_HITPAUSE, 13);
            set_hitbox_value(AT_SKILL6, 2, HG_HITPAUSE_SCALING, 0.8);

            set_hitbox_value(AT_SKILL6, 3, HG_DAMAGE, 8);
            set_hitbox_value(AT_SKILL6, 3, HG_VISUAL_EFFECT, fx_fireblow2);
            set_hitbox_value(AT_SKILL6, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
            set_hitbox_value(AT_SKILL6, 3, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_SKILL6, 3, HG_KNOCKBACK_SCALING, 0.8);
            set_hitbox_value(AT_SKILL6, 3, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_SKILL6, 3, HG_HITPAUSE_SCALING, 1);
            
            if (window == 7) burningfury_active = false;
        }
        else
        {
            reset_hitbox_value(AT_SKILL6, 1, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL6, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_SKILL6, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_SKILL6, 1, HG_HITBOX_COLOR);

            reset_hitbox_value(AT_SKILL6, 2, HG_DAMAGE);
            set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow2);
            reset_hitbox_value(AT_SKILL6, 2, HG_HIT_SFX);
            reset_hitbox_value(AT_SKILL6, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_SKILL6, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_SKILL6, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_SKILL6, 2, HG_HITPAUSE_SCALING);

            reset_hitbox_value(AT_SKILL6, 3, HG_DAMAGE);
            set_hitbox_value(AT_SKILL6, 3, HG_VISUAL_EFFECT, fx_fireblow1);
            reset_hitbox_value(AT_SKILL6, 3, HG_HIT_SFX);
            reset_hitbox_value(AT_SKILL6, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_SKILL6, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_SKILL6, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_SKILL6, 3, HG_HITPAUSE_SCALING);

        }
        break;
    case AT_USPECIAL_2: // [7] GUARD AURA

        if (window == 1) guard_time = guard_time_max; //variable reset

        //activation
        if (window == 2 && window_timer == 1)
        {
            mp_current -= buff_activation_cost;
            guardaura_active = true;
            spawn_hit_fx(x, y-32, fx_lightblow1);
            var fx_guard = spawn_hit_fx(x, y-32, fx_guardaura);
            fx_guard.depth = -10;
        }

        //counter style
        if (window == 3 && guard_time > 0 && special_down) if (window_timer == get_window_value(AT_SKILL7, 3, AG_WINDOW_LENGTH)) window_timer = 0;

        if (window == 4 && window_timer == 1)
        {
            guardaura_active = false;
            sound_play(asset_get("sfx_abyss_despawn"));
        }

        if (window == 5)
        {
            if(!free) set_state(PS_IDLE);
            else if(free) set_state(PS_IDLE_AIR);
        }

        if (window == 6 && window_timer == 1 && !hitpause)
        {
            mp_current -= guardaura_counter_cost;
            guardaura_active = false;
            guard_explosion = false;
            invincible = true;
            invince_time = 4;
        }
        if (window == 6 && window_timer == 2 && !hitpause)
        {
            spawn_hit_fx(x, y-32, fx_lightblow2);
            sound_play(asset_get("sfx_frog_fspecial_charge_full"), 0, 0); //get new sfx
        }
        break;
    
    case AT_DSPECIAL_2: // [8] EMBER FIST

        can_fast_fall = false;

        if (window == 3 && window_timer == 1) mp_current -= emberfist_cost; //mana consumption

        if (window == 2 && window_timer == get_window_value(AT_SKILL8, 2, AG_WINDOW_LENGTH)) //aiming logic
        {
            var ember_xpos = 8; //arbitrary distance number
            var ember_ypos = 24; //another arbitrary distance number

            if (up_down || down_down) //both up and down have the same X positions
            {
                set_hitbox_value(AT_SKILL8, 1, HG_HITBOX_X, 8+48-ember_xpos);
                set_hitbox_value(AT_SKILL8, 2, HG_HITBOX_X, 8+88-ember_xpos*2);
                set_hitbox_value(AT_SKILL8, 3, HG_HITBOX_X, 8+128-ember_xpos*3);
            }

            if (up_down)
            {
                emberfist_up = true;
                emberfist_down = false;
                set_hitbox_value(AT_SKILL8, 1, HG_HITBOX_Y, -36-ember_ypos);
                set_hitbox_value(AT_SKILL8, 2, HG_HITBOX_Y, -36-ember_ypos*2);
                set_hitbox_value(AT_SKILL8, 3, HG_HITBOX_Y, -36-ember_ypos*3);

                set_hitbox_value(AT_SKILL8, 4, HG_HITBOX_Y, -28-12);
            }
            else if (down_down)
            {
                emberfist_up = false;
                emberfist_down = true;
                set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30+ember_ypos);
                set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -30+ember_ypos*2);
                set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -30+ember_ypos*3);

                set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -28+12);
            }
            else //the +16 is just so it will start further away
            {
                emberfist_up = false;
                emberfist_down = false;
                reset_hitbox_value(AT_SKILL8, 1, HG_HITBOX_X); //16+48
                reset_hitbox_value(AT_SKILL8, 1, HG_HITBOX_Y); //-30

                reset_hitbox_value(AT_SKILL8, 2, HG_HITBOX_X); //16+88
                reset_hitbox_value(AT_SKILL8, 2, HG_HITBOX_Y); //-30

                reset_hitbox_value(AT_SKILL8, 3, HG_HITBOX_X); //16+128
                reset_hitbox_value(AT_SKILL8, 3, HG_HITBOX_Y); //-30

                reset_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y);
            }
        }

        //FX logic
        if (window == 4 && window_timer == 1) 
        {
            //FX position
            var fx_xpos = 0
            var fx_ypos = 0
            if (emberfist_up)
            {
                fx_ypos = 0;
                if (spr_dir) fx_xpos = 12; 
                else fx_xpos = -12;
            }
            else if (emberfist_down)
            {
                fx_ypos = -8;
                if (spr_dir) fx_xpos = -20;
                else fx_xpos = 20;
            }
            
            //actuall FX spawn + depth
            var fx_flamethrower = spawn_hit_fx(x+fx_xpos, y+fx_ypos, fx_emberfist);
            fx_flamethrower.depth = -6;

            //angle control
            if (emberfist_up)
            {
                if (spr_dir) fx_flamethrower.draw_angle = 35;
                else fx_flamethrower.draw_angle = 325;
            }
            else if (emberfist_down)
            {
                if (spr_dir) fx_flamethrower.draw_angle = 325;
                else fx_flamethrower.draw_angle = 35;
            }
        }

        //reset variables
        if (window == 5)
        {
            emberfist_up = false;
            emberfist_down = false;
        }

        if (burningfury_active)
        {
            set_hitbox_value(AT_SKILL8, 4, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_SKILL8, 4, HG_KNOCKBACK_SCALING, 0.02);
            set_hitbox_value(AT_SKILL8, 4, HG_BASE_HITPAUSE, 7);
            set_hitbox_value(AT_SKILL8, 4, HG_HITSTUN_MULTIPLIER, 1.1);
            set_hitbox_value(AT_SKILL8, 4, HG_DAMAGE, 7);
            set_hitbox_value(AT_SKILL8, 4, HG_VISUAL_EFFECT, fx_fireblow1);
            set_hitbox_value(AT_SKILL8, 4, HG_HIT_SFX, asset_get("sfx_burnapplied"));
            set_hitbox_value(AT_SKILL8, 4, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_SKILL8, 4, HG_HITBOX_COLOR, 2);

            set_hitbox_value(AT_SKILL8, 1, HG_DAMAGE, 6);
            set_hitbox_value(AT_SKILL8, 1, HG_VISUAL_EFFECT, fx_fireblow2);
            set_hitbox_value(AT_SKILL8, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
            set_hitbox_value(AT_SKILL8, 1, HG_EXTRA_HITPAUSE, 16);
            set_hitbox_value(AT_SKILL8, 1, HG_HITBOX_COLOR, 2);
            
            if (window == 5) burningfury_active = false
        }
        else
        {
            reset_hitbox_value(AT_SKILL8, 4, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_SKILL8, 4, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_SKILL8, 4, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_SKILL8, 4, HG_HITSTUN_MULTIPLIER);
            reset_hitbox_value(AT_SKILL8, 4, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL8, 4, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_SKILL8, 4, HG_HIT_SFX);
            reset_hitbox_value(AT_SKILL8, 4, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_SKILL8, 4, HG_HITBOX_COLOR);

            reset_hitbox_value(AT_SKILL8, 1, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL8, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_SKILL8, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_SKILL8, 1, HG_EXTRA_HITPAUSE);
            reset_hitbox_value(AT_SKILL8, 1, HG_HITBOX_COLOR);
        }

        if (theikos_active && !is_8bit || get_player_color(player) == 31 || godpower) //this game hates me so i put this code here
        {
            set_hitbox_value(AT_SKILL8, 1, HG_VISUAL_EFFECT, fx_fireblow1);

            if (burningfury_active)
            {
                set_hitbox_value(AT_SKILL8, 4, HG_VISUAL_EFFECT, fx_fireblow1);
                set_hitbox_value(AT_SKILL8, 1, HG_VISUAL_EFFECT, fx_fireblow2);
            }
        }
        break;
    case AT_EXTRA_2: // [9] LIGHT HOOKSHOT
        can_move = false;
        can_fast_fall = false;
        
        //parry cancel
        if (window < 3) can_shield = true;

        //reset variables to their minimum counterpart
        if (window == 1 && window_timer == 1)
        {
            mp_current -= lighthookshot_activate_cost;
            hookshot_chargetime = 0;
            hookshot_retract_timer = 0;
            reset_hitbox_value(AT_SKILL9, 1, HG_EXTRA_HITPAUSE);

            reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_SKILL9, 2, HG_LIFETIME);
            reset_hitbox_value(AT_SKILL9, 2, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL9, 2, HG_DAMAGE);
            reset_hitbox_value(AT_SKILL9, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_SKILL9, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_SKILL9, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_SKILL9, 2, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_SKILL9, 2, HG_EXTENDED_PARRY_STUN);
        }

        //holding down the button will add more extra hitpause and distance on the normal version
        //on the burning version it increases it's speed and killpower capabilities
        if (window == 2 && special_down && hookshot_chargetime < 10)
        {
            if (window_timer == get_window_value(AT_SKILL9, 2, AG_WINDOW_LENGTH))
            {
                hookshot_chargetime ++;
                set_hitbox_value(AT_SKILL9, 1, HG_EXTRA_HITPAUSE, hookshot_chargetime*2+20); //min: 20 || max: 40

                hookshot_liftime = 55-hookshot_chargetime*2.25; //min: 45 || max: 32.5

                set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_HSPEED, hookshot_chargetime/3+14); //min: 14 || max: 19
                set_hitbox_value(AT_SKILL9, 2, HG_DAMAGE, hookshot_chargetime/2.5+10); //min: 10 || max: 14
                set_hitbox_value(AT_SKILL9, 2, HG_BASE_KNOCKBACK, hookshot_chargetime/10+6); //min: 6 || max: 7
                set_hitbox_value(AT_SKILL9, 2, HG_KNOCKBACK_SCALING, 0.8-hookshot_chargetime/50); //min: 0.8 || max: 0.6
                set_hitbox_value(AT_SKILL9, 2, HG_BASE_HITPAUSE, hookshot_chargetime/2+10); //min: 10 || max: 15
                set_hitbox_value(AT_SKILL9, 2, HG_HITPAUSE_SCALING, hookshot_chargetime/50+0.7); //min: 0.7 || max: 0.9
                window_timer = 0;
            }
        }
        //setup before the throwing
        if (window == 3 && window_timer == 1)
        {
            mp_current -= lighthookshot_attack_cost;
            hookshot_lag_count = 0;
        }

        if (window == 4)
        {
            hookshot_lag_count++;
            if (hookshot_lag_count == 1)
            {
                //burning fury support
                if (burningfury_active)
                {
                    hookshot = create_hitbox(AT_SKILL9, 2, x+32*spr_dir, y-32);
                    hookshot.fx_particles = 2;
                    if (user_event_1_active) hookshot.fx_particles = 6;
                }
                else
                {
                    hookshot = create_hitbox(AT_SKILL9, 1, x+32*spr_dir, y-32);
                    hookshot.fx_particles = 1;
                    if (user_event_1_active) hookshot.fx_particles = 5;
                }
            }

            // hookshot_lag_count needs to equal or be bigger than the projectile's lifetime
            if (!burningfury_active)
            {
                if (hookshot_lag_count >= get_hitbox_value(AT_SKILL9, 1, HG_LIFETIME))
                {
                    window = 6;
                    window_timer = 0;
                }
            }
            else if (burningfury_active)
            {
                if (hookshot_lag_count >= 8)
                {
                    window = 6;
                    window_timer = 0;
                    burningfury_active = false;
                }
            }
        }

        //boost effect
        if (window == 5 && window_timer == 3)
        {
            var boost = spawn_hit_fx(x+32*spr_dir, y-12, fx_boost);
            boost.depth = -6;
            boost.draw_angle = -80*spr_dir;
        }
        
        if (window == 5 && window_timer == get_window_value(AT_SKILL9, 5, AG_WINDOW_LENGTH)) window = 7; //skip the fail animation

        if (hookshot_skip)
        {
            window = 6;
            hookshot_skip = false;
        }

        //chain control
        if (window == 5 || window == 6 || state_cat == SC_HITSTUN)
        {
            with (obj_article1)
            {
                if (player_id == other.id && state == 1) particletime = 41;
            }
        }
        break;
    case AT_EXTRA_3: // [10] SEARING DESCENT
        can_fast_fall = false;
        can_wall_jump = true;

        if (burningfury_active) //burning fury support - it gives him more height and damage but at the cost of being able to only cancel 10 frames late
        {
            set_window_value(attack, 2, AG_WINDOW_VSPEED, -13.5);
            descent_timer_reset = 30;

            for (var i = 0; i < 4; i ++) //hitboxes 1-3
            {
                set_hitbox_value(attack, i, HG_DAMAGE, 4);
            }
            set_hitbox_value(attack, 3, HG_BASE_KNOCKBACK, 10); //so it will connect

            set_hitbox_value(attack, 4, HG_DAMAGE, 10);
            set_hitbox_value(attack, 5, HG_DAMAGE, 7);

            if (window == 7 && window_timer == phone_window_end) burningfury_active = false;
        }
        else
        {
            descent_timer_reset = 20;
            reset_window_value(attack, 2, AG_WINDOW_VSPEED);
            for (var i = 0; i < 4; i ++) //hitboxes 1-3
            {
                reset_hitbox_value(attack, i, HG_DAMAGE);
            }
            reset_hitbox_value(attack, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(attack, 4, HG_DAMAGE);
            reset_hitbox_value(attack, 5, HG_DAMAGE);
        }

        if (window == 1 && window_timer == 1) 
        {
            mp_current -= searingdescent_cost;
            descent_timer = descent_timer_reset;
        }

        if (window == 1 && window_timer == phone_window_end) //sound
        {
            array_push(phone_stopped_sounds, sound_play(asset_get("sfx_zetter_fireball_fire")));
            array_push(phone_stopped_sounds, sound_play(asset_get("sfx_ori_ustrong_launch")));
        }

        if (window == 6 && !hitpause) //meteor timer
        {
            descent_timer--;

            if (descent_timer <= 0)
            {
                can_shield = true;
                can_jump = true;
                descent_timer = 0;
            }
        }

        if (window == 7)
        {
            can_move = false;
            if (window_timer < 1 && !hitpause)
            {
                shake_camera(5, 10); //power, time
                var land = spawn_hit_fx(x-4*spr_dir, y, fx_dstrong_fireblast);
                land.depth = -7;
            }
        }
        break;
    case 39: // [12] FLASHBANG
        can_fast_fall = false;

        if (burningfury_active) //burning fury support - it turns the move into a kill move, having a stronger spike
        {
            set_hitbox_value(attack, 2, HG_DAMAGE, 6);
            set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, fx_fireblow2);
            set_hitbox_value(attack, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
            if (user_event_1_active) set_hitbox_value(attack, 2, HG_HIT_PARTICLE_NUM, 6);
            else set_hitbox_value(attack, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(attack, 2, HG_HITBOX_COLOR, 2);
            set_hitbox_value(attack, 2, HG_ANGLE, 230);
            set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, 5.5);
            set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, 0.7);
            set_hitbox_value(attack, 2, HG_BASE_HITPAUSE, 12);
            set_hitbox_value(attack, 2, HG_HITPAUSE_SCALING, 0.8);

            set_window_value(attack, 8, AG_WINDOW_HSPEED_TYPE, 2);
            set_window_value(attack, 8, AG_WINDOW_HSPEED, 3);

            if (window == 8 && window_timer == 1) burningfury_active = false;
        }
        else
        {
            reset_hitbox_value(attack, 2, HG_DAMAGE);
            set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, fx_lightblow2);
            reset_hitbox_value(attack, 2, HG_HIT_SFX);
            if (user_event_1_active) set_hitbox_value(attack, 2, HG_HIT_PARTICLE_NUM, 5);
            else set_hitbox_value(attack, 2, HG_HIT_PARTICLE_NUM, 1);
            reset_hitbox_value(attack, 2, HG_HITBOX_COLOR);
            reset_hitbox_value(attack, 2, HG_ANGLE);
            reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(attack, 2, HG_HITPAUSE_SCALING);

            reset_window_value(attack, 8, AG_WINDOW_HSPEED_TYPE);
            reset_window_value(attack, 8, AG_WINDOW_HSPEED);
        }

        if (window_timer == 1) //variable resets and mana costs
        {
            if (window == 1) mp_current -= flashbang_activate_cost;
            if (window == 8)
            {
                mpGainable = true;
                flashbanged_id = noone; //stop grabbing
            }
        }

        if (flashbanged_id != noone) //grab success
        {
            if (window == 3)
            {
                window = 5;
                window_timer = 0;
            }

            //freeze bar's position when he grabs, he also can't gain mana while grabbing
            hsp = 0;
            vsp = 0;
            can_move = false;
            mpGainable = false;
        }
        else if (window == 4 && flashbanged_id == noone) //grab fail
        {
            if(!free) set_state(PS_IDLE);
            else if(free) set_state(PS_IDLE_AIR);

            if (was_parried)
            {
                if(!free) set_state(PS_PRATLAND);
                else if(free) set_state(PS_PRATFALL);
            }
        }

        with (flashbanged_id) //moving the grabbed guy around
        {
            if (other.window == 5)
            {
                if (x > other.x - 48 && other.spr_dir || x < other.x + 48 && -other.spr_dir) x = x - other.state_timer/2*other.spr_dir;
                if (y < other.y + 16) y = y + other.state_timer/4;

                fall_through = true;
            }
            else if (other.window > 5)
            {
                x = x;
                y = y;
                fall_through = false;
            }

            if (other.window == 5 || other.window == 6) //forces enemies to be in front of bar
            {
                force_depth = true;
                depth = -5;
            }
        }

        if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
        {
            if (burningfury_active) var smear = spawn_hit_fx(x, y, fx_flashbang_firesmear);
            else var smear = spawn_hit_fx(x, y, fx_flashbang_lightsmear);
            smear.depth = -7;
        }

        //flashbang attack cost
        if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) mp_current -= flashbang_attack_cost;
        break;
          
}

if (burningfury_active) //buff perks
{
    //damage increase
    //burning fury damage buff test
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5 * fury_damage);
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9 * fury_damage);
    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12 * fury_damage);
    set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 12 * fury_damage);
    set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12 * fury_damage);
    set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 12 * fury_damage);
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11 * fury_damage);
    set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2 * fury_damage);
    set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7 * fury_damage);
    set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7 * fury_damage);

    //effect change
    set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_fireblow1);

    //hitbox color
    set_hitbox_value(AT_JAB, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_UTILT, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_UTILT, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_FAIR, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_FAIR, 3, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_DAIR, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_COLOR, 2);
    set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_COLOR, 2);


    //burning sfx
    set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
    set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));

    //particle effects
    if (user_event_1_active)
    {
        set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FAIR, 3, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_TAUNT, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_DSTRONG, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 6);
    }
    else
    {
        set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FAIR, 3, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_TAUNT, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_DSTRONG, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 2);
    }
    
}
else //buff reset
{
    //damage increase reset
    reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);

    //effect change reset
    reset_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT);
    set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_lightblow1);

    //hitbox color
    reset_hitbox_value(AT_JAB, 2, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_UTILT, 1, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_UTILT, 2, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_FAIR, 2, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_FAIR, 3, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_DAIR, 1, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_DAIR, 2, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_TAUNT, 1, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_COLOR);
    reset_hitbox_value(AT_USTRONG, 3, HG_HITBOX_COLOR);

    //burning sfx
    reset_hitbox_value(AT_JAB, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_UTILT, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_UTILT, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_FAIR, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_FAIR, 3, HG_HIT_SFX);
    reset_hitbox_value(AT_DAIR, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_DAIR, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX);
    reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX);

    //particle effects
    reset_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_FAIR, 3, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_TAUNT, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_PARTICLE_NUM);

    if (user_event_1_active)
    {
        set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 5);
        set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 5);
        set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 5);
    }
    else
    {
        set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
        set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);
        set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 1);
    }

    if (!has_rune("C"))
    {
        reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
        reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_COLOR);
        reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
        reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM);
    }
}

//////////////////////////////////////////////////THEIKOS SECTION//////////////////////////////////////////////////

//theikos Fstrong rapid punch looping
//theikos fstrong will do more rapid punches with longer charge
//code is based off Jill Katze's sakuya
switch (attack)
{
    case AT_FSTRONG_2:

        can_move = false;

        if (window == 2) //charge window
        {
            fstrong_countup ++;
            if (fstrong_countup >= 15) //every 15 frames restart the count so the loops_remaining won't go hay
            {
                fstrong_countup = 0;
                fstrong_loops_remaining ++; 
            }
        }

        if (window == 3) //attack window
        {
            //make rapid punches actually rapid
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;

            //hitting something will make the screen shake
            if (has_hit) shake_camera(3, 2); //power, time

            //sounds
            if (window_timer % 8 == 0) sound_play(asset_get("sfx_swipe_medium1"), 0, 0, 0.5);
            if (window_timer % 8 == 4) sound_play(asset_get("sfx_swipe_medium2"), 0, 0, 0.5);

            //getting parried cancels the rapid punches, and just does the last attack
            if (was_parried && !fstrong_canceled) 
            {
                fstrong_canceled = true;
                window = 3;
                window_timer = 12;
                fstrong_countup = 0;
                fstrong_loops_remaining = 0;
                fstrong_canceled = false;
            }

            //if turbo_time is true and any input is pressed, allow the attack to be cancelled and reset the variables
            if (turbo_time && (attack_pressed || jump_pressed || special_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed)) 
            {
                fstrong_countup = 0;
                fstrong_loops_remaining = 0;
            }
        }

        //the looping itself on the rapid punches window
        if (window_timer == get_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH) && fstrong_loops_remaining > 0)
        {
            window_timer = 2;
            fstrong_countup = 0;
            fstrong_loops_remaining --;

            if (window_timer == 2 || window_timer == 13) attack_end(AT_FSTRONG_2);
        }

        if (window == 8) //endlag window
        {
            if (has_hit) shake_camera(2, 6); //power, time

            if (!has_hit && window_timer == 11 || has_hit && window_timer == 8)
            {
                var armorbreak = spawn_hit_fx (x, y, fx_armorbreak);
                armorbreak.depth = -8;
                var sfx_random = random_func(9, 3, 0);
                sound_play(sfx_armorbreak[sfx_random], 0, 0, 0.5);
            }
        }

        if (burningfury_active)
        {
            if (window == 8 && window_timer == 8) burningfury_active = false;
            //buff stuff
            set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 1 * fury_damage);
            set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, fx_fireblow1);
            set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));

            set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 10 * fury_damage);
            set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, fx_fireblow3);
        }
        else //buff reset stuff
        {
            reset_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_PARTICLE_NUM);

            reset_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE);
            reset_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_PARTICLE_NUM);
        }
        break;
    case AT_USTRONG_2:

        if (window == 1) lightpillar_alpha = 0.8;

        //size changer
        if (window == 2 && strong_charge > 0)
        {
            set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 50+strong_charge*2);
            lightpillar_xscale += 0.0116;
        }
        else if (window == 2 && strong_charge == 0)
        {
            reset_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH);
            lightpillar_xscale = 0.3;
        }

        lightpillar_frame ++;

        if (window == 2) //charge window (including mana subtruction)
        {
            if (strong_charge % 6 == 0 && strong_charge != 0) mp_current --;
            if (strong_charge >= 0 && strong_charge <= 60) mpGainable = false;

            ustrong_loops_remaining = floor(strong_charge/4);
        }

        //sounds stuff
        if (window == 3 && window_timer == get_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH)) sound_play(asset_get("sfx_boss_vortex"), 0, 0, 0.7);
        else if (window == 5 && window_timer == 1)
        {
            sound_stop(asset_get("sfx_boss_vortex"));
            sound_play(asset_get("sfx_boss_vortex_end"), 0, 0);
        }

        if (window == 4) //attack window
        {
            aura_alpha = 0; //bar's theikos aura will disappear

            //rapid hits
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;

            //getting parried cancels the rapid punches, and just does the last attack
            if (was_parried && !ustrong_canceled) 
            {
                ustrong_canceled = true;
                window = 4;
                window_timer = 4;
                ustrong_countup = 0;
                ustrong_loops_remaining = 0;
                ustrong_canceled = false;
            }

            //if turbo_time is true and any input is pressed, allow the attack to be cancelled and reset the variables
            if (turbo_time && (attack_pressed || jump_pressed || special_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed)) 
            {
                ustrong_countup = 0;
                ustrong_loops_remaining = 0;
                lightpillar_xscale += 0.05;
                lightpillar_alpha -= 0.1;
                aura_alpha = 0.3;
                sound_stop(asset_get("sfx_boss_vortex"));
            }

            //looping
            if (window_timer == get_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH) && ustrong_loops_remaining > 0)
            {
                window_timer = 0;
                ustrong_countup = 0;
                ustrong_loops_remaining --;
                attack_end(AT_USTRONG_2);
            }
        }
    
        if (ustrong_loops_remaining <= 0)  //multi hit
        {
            set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
            set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 7);
            set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.9); 
            set_hitbox_value(AT_USTRONG_2, 1, HG_SDI_MULTIPLIER, 0.01);
            set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 80);
            set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER, 7);
        }
        else //final hit
        {
            reset_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_SDI_MULTIPLIER);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE);
            reset_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER);
        }

        if (window == 5) //reset variables
        {
            lightpillar_xscale += 0.05;
            lightpillar_alpha -= 0.1;;
            aura_alpha = 0.3;
        }
        break;
    case AT_DSTRONG_2:

        if (window == 1) groundfire_count = 3; //reset
        
        if (window == 2) //charge window (including mana subtruction)
        {
            if (strong_charge % 6 == 0 && strong_charge != 0) mp_current --;
            if (strong_charge >= 0 && strong_charge <= 60) mpGainable = false;

            fire_proj_vspeed = 7 + strong_charge/5; //setting the projectile speed depending on charge amount
            if (strong_charge % 15 == 0 && strong_charge != 0) groundfire_count ++; //extend ground fire depending on charge amount
            
            switch (strong_charge) //sound effect stuff
            {
                case 15: sound_play(asset_get("sfx_frog_fspecial_start"));
                case 30: sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
                case 45: sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
                case 60: sound_play(asset_get("sfx_frog_fspecial_charge_full"));
            }

            set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, fire_proj_vspeed);
            set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, fire_proj_vspeed/100 + 0.2);
        }

        if (window == 3 && window_timer == 1)
        {
            var firesmear = spawn_hit_fx(x, y, fx_firesmear);
            firesmear.depth = -8;
        }

        if (burningfury_active)
        {
            if (window == 4 && window_timer == 2) burningfury_active = false;
            set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 8 * fury_damage);
            set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, fx_fireblow2);
            set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 2 * fury_damage);
        }
        else
        {
            reset_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE);
            reset_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE);
        }
        //needs burning fury support
        break;
}

//theikos bar has turbo mode
if (attack != AT_OVERDRIVE) turboToggle();


if (theikos_active) //theikos bar normal strongs alterations
{
    if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) can_move = false;
}
else //normal bar theikos strongs alterations
{
    //theikos F-strong final hit
    if (strong_charge < 30) set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 10);
    else set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 5);
    //theikos U-strong pillar
    set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 1);
    //theikos D-strong grounded fire
    set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 1);

    if (attack == AT_USTRONG_2)
    {
        set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 7);

        if (window == 5 && window_timer == get_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH)) ustrong2_cast = true;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//FINAL SMASH/OVERDRIVE: LORD'S PUNISHMENT
//attack
if (attack == AT_OVERDRIVE)
{
    hurtboxID.sprite_index = hurtbox_spr;
    od_already_active = true;
    od_gainable = false;
    //od_prepare_godpower = true;

    burningfury_active = false;
    guardaura_active = false;

    super_armor = true;
    can_move = false;
    can_wall_jump = false;
    attack_invince = true;

    //stop bar's momentum when he starts casting
    if (window <= 4)
    {
        fs_force_fs = false;
        vsp = 0;
        hsp = 0;
    }

    //ZA WARUDO
    if (OD_stop_timer > 0)
    {
        OD_stop_timer --;

        with (oPlayer)
        {
            if (player != other.player)
            {
                pHurtBox.dodging = false;
                hitpause = true;
                hitstop = 2;
                hsp = 0;
                vsp = 0;

                if (other.OD_stop_timer == other.OD_stop_timer_max-1) with (other)
                {
                    var lightstun_hit = spawn_hit_fx(other.x-2, other.y-(char_height/2), fx_lightblow2); //fx_lightblow3 (fx_photonblast -32)
                    lightstun_hit.depth = -7;
                }
            }
        }

        if (OD_stop_timer == 0)
        {
            with (oPlayer)
            {
                if (player != other.player)
                {
                    old_hsp = 0;
                    old_vsp = 0;
                    hsp = 0;
                    vsp = 0;
                    hitpause = false;
                }
            }
        }
    }

    //record bar's Y position when he starts to leap
    if (window == 5 && window_timer == 1) od_fallthrough_y = y;

    if (window >= 5 && window <= 8) //allow bar to fall through
    {
        if (od_fallthrough_y > y) fall_through = true;
        else fall_through = false;
    }

    //initial power up
    if (window == 3 && window_timer == 1) shake_camera(8, 6); //power, time
    if (window == 4)
    {
        shake_camera(1, 6); //power, time

        if (get_gameplay_time() % 2 == 0)
        {
            var random_hsp = random_func(10, 9,true)-4;
            var firecharge = instance_create(x - 16*spr_dir + 12*spr_dir - 8, y - 50, "obj_article1");
                firecharge.depth = -7;
                firecharge.state = 4;
                firecharge.vsp = -5;
                firecharge.hsp = random_hsp;
        }
    }
     
    //landing
    if (window == 9 && window_timer == 1) shake_camera(8, 20); //power, time

    //fire
    if (window >= 10 && window <= 14)
    {
        od_fire_timer ++;

        if (od_fire_timer % 8 == 0 && od_fire_timer < 96) //fire attack
        {
            var burning_ground = create_hitbox(AT_OVERDRIVE, 2, x, y-24);
            burning_ground.fx_particles = 6;
            

            //final hit
            if (window == 14 && od_fire_timer == 80)
            {
                set_hitbox_value(AT_OVERDRIVE, 2, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_OVERDRIVE, 2, HG_HITSTUN_MULTIPLIER, 0);
                set_hitbox_value(AT_OVERDRIVE, 2, HG_ANGLE, 75);
                set_hitbox_value(AT_OVERDRIVE, 2, HG_ANGLE_FLIPPER, 7);
            }
            else
            {
                reset_hitbox_value(AT_OVERDRIVE, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_OVERDRIVE, 2, HG_HITSTUN_MULTIPLIER);
                reset_hitbox_value(AT_OVERDRIVE, 2, HG_ANGLE);
            }
        }
    }
    if (window == 10 && window_timer == 1) //fire visuals
    {
        var fx_special_fireground = hit_fx_create(sprite_get("theikos_fx_dstrong_fireground"), 90);
        if (is_8bit) fx_special_fireground = fx_fireground;

        sound_play(sfx_fire, 1);
        for (var i = -8; i <= 8; i++)
        {
            spawn_hit_fx(x + groundfire_offset * i, y-16, fx_special_fireground);
        }
    }
    if (window == 15)
    {
        od_fire_timer = 0;
        sound_stop(sfx_fire);
    }

    //fire sword aura
    var fire_x_pos = 1;
    var fire_y_pos = 1;
    var fire_x_mult = 1;
    var fire_y_mult = 1;
    var fire_rate = 1;
    switch (window)
    {
        case 14:
            fire_x_pos = 80;
            fire_y_pos = 128;
            fire_x_mult = 8;
            fire_y_mult = 32;
            fire_rate = 2;
            break;
        case 15: case 16:
            fire_x_pos = 0;
            fire_y_pos = 96;
            fire_x_mult = 8;
            fire_y_mult = 32;
            fire_rate = 1;
            break;
        case 17:
            fire_x_pos = 320;
            fire_y_pos = 48;
            fire_x_mult = 40;
            fire_y_mult = 8;
            fire_rate = 1;
            break;
    }
    if (get_gameplay_time() % fire_rate == 0 && window >= 14 && window <= 17 && window_timer < (get_window_value(AT_OVERDRIVE, window, AG_WINDOW_LENGTH)-3) )
    {
        var randomX = random_func(1, 8,true)*fire_x_mult;
        var randomY = random_func(2, 8,true)*fire_y_mult;
        var fire = instance_create(x - (fire_x_pos*spr_dir) + (randomX*spr_dir), y - (fire_y_pos + randomY), "obj_article1");
            fire.depth = -7;
    }

    //final hit particles
    if (is_8bit) set_hitbox_value(AT_OVERDRIVE, 3, HG_HIT_PARTICLE_NUM, 2);
    else reset_hitbox_value(AT_OVERDRIVE, 3, HG_HIT_PARTICLE_NUM);

    if (window == 17) shake_camera(10, 3); //power, time

    //apply the lord's blessing buff accordingly
    if ("superTrue" in self)
    {
        if (superTrue == 1 && attack == AT_OVERDRIVE && window >= 18 && od_already_active) od_already_active = false; //rivals of fighters version
    }
    else
    {
        if (window == 21 && window_timer == get_window_value(AT_OVERDRIVE, 21, AG_WINDOW_LENGTH))
        {
            if (od_already_active) od_already_active = false;
            if (fs_force_fs) fs_force_fs = false; //final smash version
            if (od_current >= od_max && !theikos) godpower = true; //activates after the OD attack (rune version only)
            if (theikos)
            {
                turbo_time = true;
                od_current = 0;
                od_ready = false;
            }
        }
    }
}

//lord's blessing buff on attacks
if (godpower || fuck_you_cheapies && theikos_active)
{
    set_hitbox_value(AT_SKILL0, 1, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL0, 2, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL3, 1, HG_EXTRA_HITPAUSE, 40+blast_power*20);
    set_hitbox_value(AT_SKILL4, 1, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL4, 2, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_SKILL7, 1, HG_EXTRA_HITPAUSE, 50);
    set_hitbox_value(AT_SKILL9, 1, HG_EXTRA_HITPAUSE, hookshot_chargetime*2+20+40);
    set_hitbox_value(AT_SKILL11, 2, HG_EXTRA_HITPAUSE, 30);
    set_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_HITPAUSE, 40);
    if (!burningfury_active)
    {
        set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 20);
        set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 20);
        set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 20);
        set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 20);
        if (has_rune("C")) set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 25 + strong_charge/2 + 20);
    }
    else
    {
        reset_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE);
        if (!has_rune("C")) reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
    }
}
else
{
    reset_hitbox_value(AT_SKILL0, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL0, 2, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL4, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL4, 2, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL7, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL9, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_SKILL11, 2, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE);
    if (!has_rune("C")) reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_HITPAUSE);
}

//THEIA EVALOGIA - theikos transformation
if (attack == AT_THEIKOS)
{
    super_armor = true;
    can_move = false;
    can_wall_jump = false;
    attack_invince = true;

    if (window == 1) trans_stall = 0;

    if (window == 2)
    {
        shake_camera(floor(window_timer/20), 10); //power, time
        if (window_timer == 1) sound_play(sound_get("sfx_theiaevlogia_charge"));
    }

    //variable tweaks
    if (window == 3 && window_timer == 1) 
    {
        theikos_active = true;
        mp_max = 999999999;
        mp_current = mp_max;

        set_player_stocks(player, 9999);

        with (oPlayer)
        {
            if (player != other.player)
            {
                set_player_stocks(player, 10); //they get 10 stocks
                damage_scaling = 2; //... but they gain double damage
                knockback_adj = 3; //... and are a lot lighter
            }
        }

        sound_play(sound_get("sfx_lordpunishment"));
        sound_play(sound_get("sfx_theiaevlogia_release"));
        sound_stop(sound_get("sfx_theiaevlogia_charge"));
    }

    //transform pose
    if (window == 4) 
    {
        trans_stall ++;

        if (trans_stall < trans_stall_max && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) window_timer = 0;
        else if (trans_stall >= trans_stall_max) trans_stall = trans_stall_max;
    }

    //visual stuff
    if (window == 3 || window == 4) //add constant aura sound
    {
        if (get_gameplay_time() % 5 == 0)
        {
            shake_camera(10, 10); //power, time
            var shockwave = instance_create(x, y-32, "obj_article1");
            shockwave.state = 6;
        }
    }

    if (window == 5)
    {
        trans_stall = 0;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Alternate stage collide function. This must go at the end of attack_update.
#define stage_collide_alt {
    ///stage_collide_alt(x1, y1, x2, y2, prec)
    //This recursive script checks from (x1, y1) to (x2, y2) for the location of coordinates
    //of the edge of the stage along that line, returning it as an array formated: [x, y].
    //
    //This script assumes that there is a collision at (x2,y2) and would need to be modified
    //if this is not assumed in order to function properly.
    //
    //  Arguments:
    //      x1      The x cooridnate of the starting point, real.
    //      y1      The y coordinate of the starting point, real.
    //      x2      The x coordinate of the ending point, real.
    //      y2      The y coordinate of the ending point, real.
    //      prec    The number of samples taken for the measurement, real.
    //
    //Script by Deor
    
    var x1 = argument[0];
    var y1 = argument[1];
    var x2 = argument[2];
    var y2 = argument[3];
    var prec = argument[4];
    
    var qpu_x = (x2 - x1) / prec;  //One nth the length of the x component of the input vector, where n is prec.
    var qpu_y = (y2 - y1) / prec;  //One nth the length of the y component of the input vector.
    var x_ = x2;    //The location of the closest detection point that is colliding with the
    var y_ = y2;    //stage, the default being the destination point.
    
    //Check each detection point to find which is the closest to (x1,y1) while still colliding with the stage.
    for(var i = 1; i < prec; i++) {
        if(place_meeting(x2 - qpu_x * i, y2 - qpu_y * i, asset_get("par_block"))) {
            x_ = x2 - qpu_x * i;
            y_ = y2 - qpu_y * i;
        }
    }
    
    //If the closest colliding detection point is not the destination, recurse with the new destination being the closest colliding point.
    if(x_ != x2 && y_ != y2) {
        return stage_collide_alt(x1, y1, x_, y_, prec);
    }
        
    //Otherwise, return the closest free detection point.
    else {
        return [x2 - qpu_x, y2 - qpu_y];
    }
}

#define turboToggle
{
    if (turbo_time && has_hit && !was_parried && !hitpause)
    {
        //allow turbo mode to these attacks too, but with some restrictions
        if ( (attack != AT_USTRONG || attack == AT_USTRONG && window > 7) && (attack != AT_SKILL2 || attack == AT_SKILL2 && window > 7)
        && (attack != AT_SKILL10 || attack == AT_SKILL10 && window > 2) && (attack != AT_SKILL11 || attack == AT_SKILL11 && window > 6) )
        {
            can_jump = true;
            can_attack = true;
            can_tilt = true;
            can_special = true;
            can_strong = true;
            can_ustrong = true;
            can_fast_fall = true;
        } 
    }
}