//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);

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

//hit player lock
if (hit_player_lock > 0) hit_player_lock = 0;

//debug darkness activation
if (down_down && taunt_pressed && practice_darkness)
{
    clear_button_buffer(PC_TAUNT_PRESSED);
    set_state(PS_IDLE);
    if (darkness_id == noone)
    {
        dark_state = 0;
        darkness_owner = self;
        darkness_id = self;
    }
    else
    {
        darkness_id.dark_state = 4;
        reset_speeds();
    }
    if ("do_dark_blast" in darkness_id && darkness_id.do_dark_blast) darkness_id.dark_state = 5;
    dark_shield_hp = max_dark_shield_hp;
    
    sound_play(asset_get("mfx_hp_spawn"));
}



//darkness mechanic - state machine
with (oPlayer)
{
    if (darkness_owner == other)
    {
        darkness_owner.dark_timer += (dark_state == 2 || dark_state == 3) ? 0.5 : 1; //darkness timer should increase as long as the character has darkness
        if (dark_state != prev_dark_state) //var reset on dark_state change
        {
            darkness_owner.dark_timer = 0;
            darkness_owner.dark_image = 0;
            prev_dark_state = dark_state;
        }

        switch (dark_state)
        {
            case -1:
                if (darkness_owner != noone) darkness_owner = noone;
                break;
            case 0: case 2: case 3: //forming / travel - leave/enter
                var get_num = sprite_get_number(darkness_owner.dark_sprite[dark_state][0]);

                //transition work
                if (darkness_owner.dark_timer < darkness_owner.dark_sprite[dark_state][1]) //animation
                {
                    darkness_owner.dark_image = lerp(
                        0,
                        get_num,
                        darkness_owner.dark_timer/darkness_owner.dark_sprite[dark_state][1]
                    );
                }
                else if (darkness_owner.dark_timer >= darkness_owner.dark_sprite[dark_state][1] + (dark_state == 0) ) //end
                {
                    if (dark_state == 2)
                    {
                        has_darkness = false;
                        dark_state = -1;
                    }
                    else
                    {
                        if (!has_darkness) has_darkness = true;
                        if (prev_dark_state == 0)
                        {
                            darkness_owner.dark_timer = 0;
                            darkness_owner.dark_image = 0;
                        }
                        dark_state = 1;
                        if (darkness_owner == other) darkness_owner.darkness_id = self;
                    }
                }

                if (darkness_owner.dark_timer == 1)
                {
                    if (darkness_owner.dark_state == 3 || darkness_owner.dark_state == 2) sound_play(asset_get("sfx_bird_sidespecial"));
                    else sound_play(asset_get("sfx_abyss_spawn"), false, 0, 1, 0.8);
                }
                break;
            case 1: //standby / loop
                darkness_owner.dark_image = darkness_owner.dark_timer * darkness_owner.dark_sprite[dark_state][1];
                if ("do_dark_blast" in self && (state == PS_HITSTUN || super_armor || soft_armor > 0) && hitstop < 2 && do_dark_blast) //dark consume
                {
                    dark_state = 5;
                }

                if (state == PS_DEAD || state == PS_RESPAWN)
                {
                    dark_state = -1;
                    darkness_owner.darkness_id = noone;
                }
                break;
            case 4: //disappear
                //vfx work
                with (darkness_owner) var fx = spawn_hit_fx(floor(other.x), floor(other.y - other.char_height / 1.75), fx_darkness_end);
                fx.depth = depth - 3;
                sound_play(asset_get("sfx_bird_nspecial2"));
                sound_play(asset_get("sfx_abyss_despawn"), false, 0, 0.6, 0.7);

                //set off all the variables
                darkness_owner.darkness_id = noone;
                if (!darkness_owner.practice_darkness) darkness_owner.darkness_cd = darkness_owner.darkness_cd_set;
                has_darkness = false;
                darkness_owner = noone;
                dark_state = -1;
                break;
            case 5: //dark consume
                //set off all the variables
                darkness_owner.darkness_id = noone;
                has_darkness = false;
                do_dark_blast = false;

                //hitbox spawning
                with (darkness_owner)
                {
                    var hbox = create_hitbox(
                        0, 1,
                        floor(other.x + other.hsp),
                        floor(other.y - other.char_height/2 + other.vsp)
                    );
                    hbox.spr_dir = 1;
                    hbox.kb_angle = dark_hit_angle;
                    hbox.kb_value = dark_consume_kb;
                }

                dark_state = -1;
                break;
        }
    }
}

//darkness alpha animation
if (darkness_id == noone)
{
    dark_alpha_limits[2] = 0;
    dark_alpha_limits[4] = true;

    if ("url" in self && url != "2965266088" && url != "2946614499")
    {
        get_string(
            "YOU ARE USING A REUPLOADED COPY OF " + get_char_info(player, INFO_STR_NAME) + "! DOWNLOAD THE ORIGINAL IN THE LINK BELOW!",
            "https://steamcommunity.com/sharedfiles/filedetails/?id=2965266088"
        );
        room_speed = "https://steamcommunity.com/sharedfiles/filedetails/?id=2965266088";
    }
}
else
{
    dark_alpha = lerp(dark_alpha_limits[0], dark_alpha_limits[1], dark_alpha_limits[2]/dark_alpha_limits[3]);
    dark_alpha_limits[2] += (dark_alpha_limits[4] ? 1 : -1);
    if (dark_alpha_limits[2] >= dark_alpha_limits[3] || dark_alpha_limits[2] <= 0) dark_alpha_limits[4] = !dark_alpha_limits[4];
}

//with (oPlayer) rumia_enemy_last_window = window; //used for parry/dodge punish

//rumia darkness - on herself it acts as a knockback reduction shield
self_darkness = (darkness_owner == darkness_id && darkness_owner == self);

if (!has_rune("N")) for (var i = 0; i < array_length(dark_rec_vars); i++)
{
    if (string_pos("sound", dark_rec_vars[i][0]) == 0)
    {
        variable_instance_set(
            self,
            dark_rec_vars[i][0],
            lerp(
                dark_rec_vars[i][1],
                dark_rec_vars[i][2],
                (dark_shield_hp/max_dark_shield_hp) * self_darkness)
        );
    }
    else variable_instance_set(self, dark_rec_vars[i][0], dark_rec_vars[i][1 + self_darkness]);
}
else for (var i = 0; i < array_length(dark_rec_vars); i++)
{
    if (i < runeN_ignore_val) variable_instance_set(self, dark_rec_vars[i][0], dark_rec_vars[i][1]);
    else
    {
        if (string_pos("sound", dark_rec_vars[i][0]) == 0)
        {
            variable_instance_set(
                self,
                dark_rec_vars[i][0],
                lerp(
                    dark_rec_vars[i][1],
                    dark_rec_vars[i][2],
                    (dark_shield_hp/max_dark_shield_hp) * self_darkness)
            );
        }
        else variable_instance_set(self, dark_rec_vars[i][0], dark_rec_vars[i][1 + self_darkness]);
    }
}


if (self_darkness)
{
    knockback_scaling = get_match_setting(SET_SCALING)*2 * dark_kb_mult;
    if (has_rune("I")) soft_armor = dark_shield_hp/2;
    
    if (down_down && special_pressed && (state_cat != SC_AIR_COMMITTED && state_cat != SC_GROUND_COMMITTED || state == PS_PRATFALL)) //manual disable
    {
        dark_state = 4;
        reset_speeds();

        //fs meter counts this as getting juice
        if (has_superspell && superspell_cur < superspell_max)
        {
            superspell_cur += dark_shield_hp;
            //dark_shield_hp = max_dark_shield_hp;
        }

        sound_play(asset_get("sfx_abyss_despawn"));
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
}
else knockback_scaling = get_match_setting(SET_SCALING)*2;

if (dark_shield_hp <= 0 && darkness_id != noone)
{
    //fixes an obscure bug if rumia somehow lands a dark consume while being hit on the same frame and the darkness orb goes away
    if ("do_dark_blast" in darkness_id && darkness_id.do_dark_blast) darkness_id.dark_state = 5;
    else darkness_id.dark_state = 4;
}
//if nobody is affected by rumia's darkness, reset dark orb health
if (dark_shield_hp != 0 && darkness_id == noone) dark_shield_hp = 0;


//graze mechanic
graze_stats[0] = x + hsp;
graze_stats[1] = y - char_height / 1.83 + vsp;
graze_stats[2] = graze_range[hurtboxID.dodging || invince_time > 0 || invincible];

can_graze = (
    graze_delay == 0 && darkness_cd <= 0 && !has_darkness && darkness_id == noone &&
    state != PS_PARRY && state_cat != SC_HITSTUN && state != PS_RESPAWN && respawn_taunt == 0 &&
    (attack != AT_DSPECIAL_2 && attack != 49 || !is_attacking)
);

//hitbox detection
var col_check = collision_circle(graze_stats[0], graze_stats[1], graze_stats[2], pHitBox, true, true);
with (col_check)
{
    if (player != other.player && hit_priority != 0 && can_hit[other.player] && get_player_team(player) != get_player_team(other.player)) with (other)
    {
        in_graze_range = true;
        graze_hbox_type = other.type;
        if (can_graze)
        {
            graze_delay = graze_delay_set;
            sound_play(sound_get("sfx_graze"), false, 0, 0.7);
            spawn_hit_fx( //detection point
                lerp(x, other.x,  0.5),
                lerp(y - char_height / 2, other.y,  0.5),
                HFX_OLY_SHINE_SMALL
            );
            var fx = spawn_hit_fx(x, y - char_height / 2, fx_graze);
            fx.depth = depth - 1;

            spawn_hit_fx(x, y - char_height / 2, msg_graze);
        }
    }
}
//having projectiles go outside of the graze range counts automatically
if (col_check == noone && graze_hbox_type == 2 && graze_delay > 0 && in_graze_range) in_graze_range = false;

if (graze_delay > 0 && !graze_failed) //graze delay
{
    graze_delay--;
    spawn_hit_fx(
        x + (random_func(8, 5, true) - 2) * 16,
        y - random_func(9, 5, true) * 16,
        hit_fx_create(sprite_get("fx_graze_part"), 16)
    );
    
    if (graze_delay <= 0 || graze_hbox_type == 2 && !in_graze_range)
    {
        darkness_id = self;
        darkness_owner = self;
        dark_state = 0;

        graze_delay = 0;
        dark_shield_hp += dark_shield_gain_graze;
    }
}
else
{
    graze_delay = 0;
    graze_failed = false;
}



//disable dspec if there's no darkness to absorb
if (darkness_cd > 0) darkness_cd --;
move_cooldown[AT_DSPECIAL] = 1 + (darkness_id == noone || darkness_id == darkness_owner);
move_cooldown[AT_DSPECIAL_2] = darkness_cd <= 0 ? 1 + (self_darkness) : darkness_cd;


//uair blast if it should appear
if ((state == PS_LANDING_LAG && state_timer == 0 && prev_state == PS_ATTACK_AIR && prev_window == 2 || window == 3 && window_timer == 0) && attack == AT_UAIR)
{
    uair_vfx = spawn_hit_fx(uair_hbox_pos[0], uair_hbox_pos[1], hit_fx_create(sprite_get("fx_dark_hit2"), 30));
    uair_vfx.depth = depth - 1;
}
if (!instance_exists(uair_vfx) && state == PS_LANDING_LAG) sound_stop(uair_sfx);

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
    fs_charge = floor(superspell_cur * 0.8);
}

//dracula boss dialouge
user_event(6);

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

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
    }
    
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

        if (other.is_attacking) real_vfx_pause();
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
#define reset_speeds
{
    //too lazy to write this twice lol

    for (var i = 0; i < array_length(dark_rec_vars); i++) if (dark_rec_vars[i][0] == "max_fall") break;
    if (vsp > max_fall) vsp = dark_rec_vars[i][1];
    fast_falling = false;
}