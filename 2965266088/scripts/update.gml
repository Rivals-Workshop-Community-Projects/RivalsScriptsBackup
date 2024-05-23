//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);

if (get_match_setting(SET_PRACTICE)) //debug darkness
{
    dark_cd = 0;

    if (taunt_pressed && down_down)
    {
        if (dark_state <= -1)
        {
            dark_target = self;
            if (dark_owner == noone) dark_owner = dark_target;
            else if (dark_owner != self)
            {
                dark_owner.dark_state = 2;
                dark_owner = dark_target;
            }
            dark_state = 0;
            dark_hp_cur = dark_hp_max;
        }
        else dark_state = 2;
        set_state(free ? PS_IDLE_AIR : PS_IDLE);
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
}

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    if (window != prev_window && window_timer == 0) prev_window = window;
}
else
{
    if (my_grab_id != noone) my_grab_id = noone;

    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }

    sound_stop(sfx_dspec_charge); //orbless dspec sound
}

//grab logic
if (my_grab_id != noone) //if you have grabbed someone
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
		if (last_player_hit_me != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//play intro
if (game_time == 4 && !koa_hat) set_attack(AT_INTRO);

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

//crawl
if (state == PS_CROUCH)
{
    if (!right_down && !left_down) crawl_time = 0;
    else
    {
        crawl_time ++;

        var max_check = (sprite_get_number(sprite_get("crawl")) / crawl_anim_speed);
        var mod_check = floor(crawl_time % max_check);
        if (floor(max_check)-1 <= mod_check || floor(max_check/2)-1 == mod_check)
        {
            sound_stop(asset_get("sfx_absa_cloud_place"));
            crawl_sound = sound_play(asset_get("sfx_absa_cloud_place"), false, 0, 0.15, (random_func(2, 5, true) + 10) * 0.2);
        }

        if (right_down && spr_dir || left_down && -spr_dir) fake_img = crawl_time * crawl_anim_speed;
		if (left_down && spr_dir || right_down && -spr_dir) fake_img = crawl_time * -crawl_anim_speed;
        fake_img = fake_img % sprite_get_number(sprite_get("crawl"));

        if (1 <= abs(fake_img) && 3 >= abs(fake_img) || 5 <= abs(fake_img) && 7 >= abs(fake_img))
        {
            if (right_down) hsp = crawl_speed;
            if (left_down) hsp = -crawl_speed;
        }
    }
}

//hit player lock (doesn't do anything, probably unnecesary)
if (hit_player_lock > 0) hit_player_lock = 0;

#region grazing

graze_pos = [x + hsp, y - char_height / 1.83 + vsp];
if (graze_alpha > 0) graze_alpha -= graze_disable_redc_alpha;

//can't graze conditions
if (state == PS_PARRY || state == PS_RESPAWN || state == PS_DEAD || is_attacking && attack == AT_EXTRA_1 ||
    hurtboxID.dodging || invincible || respawn_taunt > 0 || !visible ||
    instance_exists(dark_owner) && dark_owner.dark_state > -1 || dark_cd > 0)
{
    if (graze_state == 0)
    {
        graze_state = 2;
        graze_lockout = 1;
    }
    grazable_condition = false;
}
else grazable_condition = (graze_state == 0);

switch (graze_state)
{
    case 0: //can graze
        var graze_dist = graze_dist_max;
        var near_obj = noone;
        with (oPlayer) //show graze range near players
        {
            if ((get_player_team(player) != get_player_team(other.player) || get_match_setting(SET_TEAMATTACK) && player != other.player) && state != PS_DEAD && state != PS_RESPAWN)
            {
                if (point_distance(x, y, other.graze_pos[0], other.graze_pos[1]) < graze_dist)
                {
                    near_obj = self;
                    graze_dist = point_distance(x, y, other.graze_pos[0], other.graze_pos[1]);
                }
            }
        }
        with (pHitBox) if (player != other.player && can_hit[other.player]) //show graze range near hitboxes
        {
            if (point_distance(x, y, other.graze_pos[0], other.graze_pos[1]) < graze_dist) //detect closest hitbox
            {
                near_obj = self;
                graze_dist = point_distance(x, y, other.graze_pos[0], other.graze_pos[1]);
            }

            with (other) if (graze_lockout <= 0 && collision_circle(graze_pos[0], graze_pos[1], graze_dist_min, other, true, true)) //apply graze
            {
                grazing_time = grazing_time_max;
                graze_state = 1;

                spawn_hit_fx( //detection point
                    lerp(x, other.x,  0.5),
                    lerp(y - char_height / 2, other.y,  0.5),
                    HFX_OLY_SHINE_SMALL
                );
                var fx = spawn_hit_fx(x, y - char_height / 2, fx_graze);
                fx.depth = depth - 1;
                
                graze_sound = sound_play(sound_get("sfx_graze"), false, 0, 0.7);
                spawn_hit_fx(x, y - char_height / 2, msg_graze);
            }
        }

        if (instance_exists(near_obj) && near_obj != noone) //set graze values
        {
            graze_dist = clamp(distance_to_object(near_obj), graze_dist_min, graze_dist_max);
            graze_alpha = lerp(0.75, 0, (graze_dist - graze_dist_min)/(graze_dist_max - graze_dist_min)) * 0.75;
        }
        break;
    case 1: //grazing
        grazing_time --;
        spawn_hit_fx(
            x + (random_func(8, 5, true) - 2) * 16,
            y - random_func(9, 5, true) * 16,
            hit_fx_create(sprite_get("fx_graze_part"), 16)
        );

        if (graze_lockout > 0) graze_state = 2;
        else if (grazing_time <= 0)
        {
            if (dark_hp_temp > 0)
            {
                dark_hp_temp += dark_hp_max/2;
                if (dark_hp_temp >= dark_hp_max) dark_hp_temp = dark_hp_max;
            }
            else
            {
                dark_hp_cur += dark_hp_max/2;
                if (dark_hp_cur >= dark_hp_max) dark_hp_cur = dark_hp_max;
                dark_target = self;
                dark_owner = self;
                dark_state = 0;
            }
            graze_state = 2;
        }
        break;
    case 2: //can't graze
        if (dark_hp_cur <= 0 && graze_lockout <= 0) graze_state = 0;
        break;
}
if (graze_lockout > 0) graze_lockout --;

#endregion

#region darkness orb stuff

if (is_special_pressed(DIR_DOWN) && dark_owner == self && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)) //dspec disable
{
    if (dark_blast_rune) set_attack(AT_EXTRA_1);
    else dark_state = 2;
    clear_button_buffer(PC_SPECIAL_PRESSED);
}
//cooldowns
if (dark_cd > 0) dark_cd--;
if (dark_owner != self && dark_owner != noone) move_cooldown[AT_DSPECIAL] = 2;
else move_cooldown[AT_DSPECIAL] = dark_cd > 0 ? dark_cd : 1 + (dark_target == self);
move_cooldown[AT_DSPECIAL_2] = move_cooldown[AT_DSPECIAL];

if (dark_state > -1) //general behaviour
{
    //darkness alpha
    dark_alpha.cur = lerp(dark_alpha.min, dark_alpha.max, dark_alpha.time/dark_alpha.time_max);
    if (dark_alpha.time > dark_alpha.time_max || dark_alpha.time < 0) dark_alpha.increment = !dark_alpha.increment;
    dark_alpha.time += dark_alpha.increment ? 1 : -1;

    if (instance_exists(dark_target)) dark_last_coords = [dark_target.x, dark_target.y - dark_target.char_height / 1.75];

    //deactivate darkness_conditions
    if (!instance_exists(dark_target) || dark_target.state == PS_DEAD || dark_target.state == PS_RESPAWN ||
        state == PS_DEAD || state == PS_RESPAWN || dark_hp_cur <= 0) dark_state = 2;
}
//dark consume
with (dark_target) if ("do_dark_blast" in self && (state == PS_HITSTUN || super_armor || soft_armor > 0) && hitstop < 2 && do_dark_blast && other.dark_state != 4)
{
    other.dark_state = 4;
}

switch (dark_state) //basic state behaviour
{
    case -1: //inactive
        if (dark_owner == self) dark_owner = noone;
        if (dark_target != noone) dark_target = noone;
        if (dark_hp_cur > 0) dark_hp_cur = 0;
        if (graze_state == 2) graze_state = 0;

        if ("url" in self && url != "2965266088" && url != "2946614499")
        {
            get_string(
                "YOU ARE USING A REUPLOADED COPY OF " + get_char_info(player, INFO_STR_NAME) + "! DOWNLOAD THE ORIGINAL IN THE LINK BELOW!",
                "https://steamcommunity.com/sharedfiles/filedetails/?id=2965266088"
            );
            room_speed = "https://steamcommunity.com/sharedfiles/filedetails/?id=2965266088";
        }
        break;
    case 0: //activating
        if (dark_timer == 1) sound_play(asset_get("sfx_abyss_spawn"), false, 0, 1, 0.8);
        break;
    case 1: //active
        if (dark_target != self && !dark_target.was_parried) dark_hp_redc_time ++;
        break;
    case 2: //deactivate
        if (instance_exists(dark_target) && ("visible" not in dark_target || dark_target.visible)) 
        {
            var fx = spawn_hit_fx(floor(dark_last_coords[0]), floor(dark_last_coords[1]), fx_darkness_end);
            fx.depth = depth - 3;
        }
        sound_play(asset_get("sfx_bird_nspecial2"));
        sound_play(asset_get("sfx_abyss_despawn"), false, 0, 0.6, 0.7);

        if (instance_exists(dark_target)) dark_target.dark_owner = noone;
        dark_cd = dark_cd_set;
        dark_state = -1;
        break;
    case 3: //transfer
        if (dark_timer == 1)
        {
            update_stats = true;
            sound_play(asset_get("sfx_bird_sidespecial"));
        }
        break;
    case 4: //dark consume
        //hitbox spawning
        var hbox = create_hitbox(
            0, 1,
            floor(dark_target.x + dark_target.hsp),
            floor(dark_target.y - dark_target.char_height/2 + dark_target.vsp)
        );
        hbox.spr_dir = 1;
        hbox.kb_angle = dark_hit_angle;
        hbox.kb_value = dark_consume_kb;

        dark_target.do_dark_blast = false;
        dark_target.dark_owner = noone;
        dark_cd = dark_cd_set;
        dark_state = -1;
        break;
}

dark_timer ++;
if (dark_state_prev != dark_state) //state reset
{
    dark_timer = 0;
    dark_state_prev = dark_state;
    if (dark_hp_redc_time > 0) dark_hp_redc_time = 0;
}
if (dark_state > -1 && variable_instance_exists(dark_spr[dark_state], "spr")) //dark orb animation
{
    if (dark_spr[dark_state].anim_type == "loop")
    {
        dark_img = dark_spr[dark_state].anim_spd * dark_timer;
        dark_img = dark_img % sprite_get_number(dark_spr[dark_state].spr);
    }
    else if (dark_spr[dark_state].anim_type == "lerp")
    {
        dark_img = lerp(0, sprite_get_number(dark_spr[dark_state].spr), dark_timer/dark_spr[dark_state].anim_spd);
        if (dark_timer >= dark_spr[dark_state].anim_spd) dark_state = 1;
    }
}

//update stats
if (state_cat == SC_HITSTUN)
{
    if (dark_hp_temp > 0) //hit while charging dspec
    {
        dark_hp_cur = floor(dark_hp_temp);
        dark_target = self;
        dark_owner = self;
        dark_state = 0;
        dark_hp_temp = 0;
    }
}

if (dark_hp_prev != dark_hp_cur) //update once every time the hp updates
{
    update_stats = true;
    dark_hp_prev = dark_hp_cur;
}
if (update_stats) set_stats();
soft_armor = dark_hp_cur/2 * has_rune("I");

#endregion



//uair blast if it should appear
if ((state == PS_LANDING_LAG && state_timer == 0 && prev_state == PS_ATTACK_AIR && prev_window == 2 || window == 3 && window_timer == 0) && attack == AT_UAIR)
{
    uair_vfx = spawn_hit_fx(uair_hbox_pos[0], uair_hbox_pos[1], hit_fx_create(sprite_get("fx_dark_hit2"), 30));
    uair_vfx.depth = depth - 1;
}
if (!instance_exists(uair_vfx) && state == PS_LANDING_LAG) sound_stop(uair_sfx);

//special pratfall state - temporary pratfall
if (state == PS_TEMP_PRATFALL)
{
    super_armor = false;
    if (state_timer == 1 && has_hit_player) state_timer = temp_prat_end;

    sprite_index = sprite_get("finalstrong_pratfall");
    hurtboxID.sprite_index = air_hurtbox_spr;
    image_index += temp_prat_anim_speed;

    if (left_down && -air_max_speed < hsp) hsp -= 0.5 * prat_fall_accel;
    if (right_down && hsp < air_max_speed) hsp += 0.5 * prat_fall_accel;
    fall_through = down_down;
    
    if (state_timer == temp_prat_end + temp_prat_dissolve_time && free) set_state(PS_IDLE_AIR);
    else if (!free) set_state(PS_PRATLAND);

    if ((place_meeting(x + 1, y, asset_get("par_block")) || place_meeting(x - 1, y, asset_get("par_block"))) && has_walljump && jump_pressed)
    {
        if (place_meeting(x + 1, y, asset_get("par_block"))) spr_dir = -1;
        else spr_dir = 1;
        set_state(PS_WALL_JUMP);
    }
}

//fs meter
if (has_superspell) 
{
    superspell_cur = clamp(superspell_cur, 0, superspell_max);
    if (superspell_max <= superspell_cur && !can_superspell)
    {
        can_superspell = true;
        sound_play(asset_get("mfx_levelup"), false, 0, 1, 0.9);
        sound_play(asset_get("mfx_star"));
    }
    else if (superspell_cur < superspell_max) can_superspell = false;
}

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILITIES ///////////////////////////////////////////////////////

if ("fs_char_initialized" in self)
{
    has_superspell = true;
    fs_charge = 0;
}

//dracula boss dialouge
user_event(6);

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

#region misc

if (was_free != free) was_free = free;

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == other.fx_dark_hit[0] || hit_effect == other.fx_dark_hit[1] || hit_effect == other.fx_dark_hit[2] || hit_effect == other.fx_darkness_consume)
    {
        fx_particles = 1;
    }
}

//hit effect stuff
with (hit_fx_obj) if (player == other.player)
{
    //counter/graze messeges
    if (hit_fx == other.msg_counter || hit_fx == other.msg_graze)
    {
        depth = -10;
        uses_shader = false;
        spr_dir = 1;

        if (step_timer == 0) vsp = -4;

        if (vsp < 0) vsp += 0.2;
        else vsp = 0;

        if (other.graze_state != 1) step_timer = hit_length;
    }
    if (hit_fx == other.fx_graze && other.graze_state != 1) step_timer = hit_length;
    
    //death effect
    if (other.temp_level == 0 && hit_fx == other.fx_death[other.player] || hit_fx == other.fx_death[0])
    {
        uses_shader = false;
        if (30 < step_timer)
        {
            hsp *= 0.95;
            vsp = (vsp * 0.9) + 0.1;
        }
    }

    //dark charge
    if (hit_fx == other.fx_darkcharge)
    {
        with (other)
        {
            if (other.step_timer == 0)
            {
                other.depth = depth - 1;
                if (attack == AT_NSPECIAL) other.hit_length = 48;
                if (attack == AT_UAIR) other.hit_length = 12;
            }

            if (is_attacking && (window <= get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) || attack == AT_NSPECIAL && window < 3 || attack == AT_UAIR && window < 3))
            {
                other.hsp = hsp;
                other.vsp = vsp;
            }
            else
            {
                other.hsp = 0;
                other.vsp = 0;
            }
        }
    }

    //fstrong smear
    if (hit_fx == other.fx_fstrong_smear)
    {
        hsp = other.hsp;
        vsp = other.vsp;
    }

    //dark splash from fstrong and ustrong
    if (hit_fx == other.fx_darksplash)
    {
        if (image_index == 0 || other.attack == AT_NSPECIAL && !other.has_hit)
        {
            hsp = other.hsp;
            vsp = other.vsp;
        }
        else
        {
            hsp = 0;
            vsp = 0;
        }
        depth = other.depth - 1 + 2 * (other.attack == AT_NSPECIAL);

        if (other.is_attacking)
        {
            real_vfx_pause();
            if (other.hitpause && step_timer < 4) step_timer = 4; //force the frame of the splash to appear instead
        }
    }

    //dstrong vfx
    if (hit_fx == other.fx_dstrong_smash)
    {
        if (other.attack == AT_DSTRONG && other.is_attacking) real_vfx_pause();
    }

    //nspec dash effect
    if (hit_fx == other.fx_nspec)
    {
        if (step_timer == 0) depth = other.depth - 2;

        with (other)
        {
            if (0.5 < abs(hsp) || hitpause && abs(old_hsp) > 0.5 || was_parried && hitpause) other.hsp = hsp;
            //alternatively: (other.step_timer < 24) makes it based on time instead

            if (position_meeting(x + 32 * spr_dir, y - 2, asset_get("par_block"))) other.hsp = 0;

            other.vsp = vsp/2;
        }

        if ((other.attack == AT_NSPECIAL || other.attack == AT_DATTACK && has_rune("H")) && other.is_attacking) real_vfx_pause();
        else step_timer = hit_length;
    }
    
    //uspec wing effects
    if (hit_fx == other.fx_uspec_wings[0]) //initial activation
    {
        if (step_timer == 0) with (other)
        {
            other.hit_length = fx_uspec_wings_length;
            if (!is_attacking || attack != AT_USPECIAL) other.step_timer = other.hit_length;
        }
        hsp = other.hsp;
        vsp = other.vsp;
        
        //transition to attack form
        if (step_timer == hit_length - 1 && other.state != PS_DEAD && other.state != PS_RESPAWN)
        {
            with (other)
            {
                var new_fx = spawn_hit_fx(x, y, fx_uspec_wings[1])
                new_fx.spr_dir = other.spr_dir;
            }
        }
    }
    if (hit_fx == other.fx_uspec_wings[1]) //wing hit
    {
        if (other.attack == AT_USPECIAL && other.is_attacking) real_vfx_pause();
    }
    
    //fspec projectile vanish
    if (hit_fx == other.fx_fspec_proj_end)
    {
        if (0 < abs(hsp)) hsp -= 0.15 * spr_dir;
        
        if (hsp < 0 && spr_dir == 1 || hsp > 0 && spr_dir == -1) hsp = 0;
    }

    if (hit_fx == other.fx_runeM) depth = 3;
}

//final smash/strong background
if (spell_bg && spell_bg_alpha < 1) spell_bg_alpha += spell_bg_alpha_inc;
else if (!spell_bg && spell_bg_alpha > 0) spell_bg_alpha -= spell_bg_alpha_inc;

if (spell_bg && !instance_exists(spell_bg_obj)) spell_bg_obj = instance_create(x, y, "obj_article1");
else if (spell_bg_alpha <= 0 && instance_exists(spell_bg_obj)) instance_destroy(spell_bg_obj);


//respawn platform that is actually the darkness orb (when it disappears it plays an animation of it disappearing)
if ((prev_state == PS_RESPAWN || prev_state == PS_ATTACK_GROUND && attack == AT_TAUNT) && state == PS_IDLE_AIR && state_timer == 0)
{
    var fx = spawn_hit_fx(floor(x), floor(y - char_height / 1.75), fx_darkness_end);
    fx.depth = depth - 3;
}

//death particles speed recording
if (state != PS_DEAD && state != PS_RESPAWN) to_death_spd = [-hsp, -vsp];

//guilty gear alt sounds
if (state != PS_DEAD && guilty_gear_va)
{
    //shut up may
    if (state == PS_RESPAWN || state_cat == SC_HITSTUN) sound_stop(sound_get("ggsfx_totsugeki"));

    //time countdown + time's up
    if (get_game_timer() % 60 == 0 && get_game_timer() <= 600 && get_game_timer() > 0) sound_play(sound_get("ggsfx_count_" + string(floor(get_game_timer()/60))));
    if (get_game_timer() == 1) with (oPlayer) if (get_player_damage(player) != get_player_damage(other.player)) with (other) sound_play(sound_get("ggsfx_time"));

    //death
    with (oPlayer) if ((state == PS_DEAD || state == PS_RESPAWN) && state_timer == 1 && last_player == other.player) with (other) sound_play(sound_get("ggsfx_kill"));
}
if (spawn_timer == 100 && guilty_gear_va) sound_play(sound_get("ggsfx_intro2"))

//alts with rainbows attatched
if (alt_cur == 2 || alt_cur == 6 || alt_cur == 8 || is_tas_alt) user_event(0);

//halloween hat effect
if (koa_hat)
{
    wait_time = 0;
    if (prev_state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE)
    {
        koa_hat = false;
        wait_time = normal_wait_time;
        spawn_hit_fx(x, y, hit_fx_create(sprite_get("koakuma_gone"), 80));
    }
}

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
custom_attack_grid();
if (game_time > 60) prep_hitboxes();

#endregion

//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if player_id == other {
        if "col" not in self {
            with other {
                other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
                if other.col == 0 other.col = c_red;
                other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if other.type == 1
                    other.sprite_index = __hb_hd_spr[other.shape];
                else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                    other.mask_index = __hb_hd_spr[other.shape];
                else 
                    other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
//custom attack grid example - Looping window X times (by Bar-Kun)
#define custom_attack_grid
{
    //looping window for X times
    var window_loop_value;
    window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);
    if (!hitpause)
    {
        //loop window
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9 && is_attacking) //this will make it so it only works if the window type is 9
        {
            if (window_timer == window_end-1) //checks almost the end of the window
            {
                attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0) window_loops ++; //at the start of the window, count a loop up

                if (window_loops > window_loop_value) //when all the loops are over, go to the next window and reset the loop value
                {
                    destroy_hitboxes();
                    window += 1;
                    window_timer = 0;
                    window_loops = 0;
                }
            }
        }
    }
    if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)

    //temporary pratfall state
    if (get_window_value(attack, window, AG_WINDOW_TYPE) == 15)
    {
        if (window_timer == window_end - 1) set_state(PS_TEMP_PRATFALL);
    }

    //i hate putting has sfx all the time, if there is a sound OBVIOUSLY i want it to be true
    if (get_window_value(attack, window, AG_WINDOW_SFX) != 0) set_window_value(attack, window, AG_WINDOW_HAS_SFX, true);
}
#define real_vfx_pause
{
    //made to actually stop vfx properly, thanks dan.
    if ("step_rec_time" not in self) step_rec_time = 0;
    if (!other.hitpause) step_rec_time = step_timer;
    else step_timer = step_rec_time;
}
#define set_stats
{
    for (var i = 0; i < array_length(dark_rec_vars); i++)
    {
        var darkness_condition = 0; //just checks if it's the rune N version or not
        if (!stats_rune) darkness_condition = (dark_target == self || dark_rec_vars[i][0] == "dark_consume_kb_mult");
        else darkness_condition = (runeN_ignore_val < i+1 && dark_target == self || dark_rec_vars[i][0] == "dark_consume_kb_mult");

        if (string_pos("sound", dark_rec_vars[i][0]) == 0)
        {
            variable_instance_set(
                self,
                dark_rec_vars[i][0],
                darkness_condition ? lerp(dark_rec_vars[i][1], dark_rec_vars[i][2], (dark_hp_cur/dark_hp_max)) : dark_rec_vars[i][1]
            );
        }
        else variable_instance_set(self, dark_rec_vars[i][0], dark_rec_vars[i][1 + (dark_target == self)]);
    }

    if (dark_target == self)
    {
        for (var i = 0; i < array_length(dark_rec_vars); i++) if (dark_rec_vars[i][0] == "max_fall") break;
        if (vsp > max_fall) vsp = dark_rec_vars[i][1];
        fast_falling = false;
        knockback_scaling = get_match_setting(SET_SCALING)*2;
    }
    else knockback_scaling = get_match_setting(SET_SCALING)*2 * dark_kb_mult;

    update_stats = false;
}