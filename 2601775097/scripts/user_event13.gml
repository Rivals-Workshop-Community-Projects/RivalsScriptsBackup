//user_event 13

var true_damage = floor(my_hitboxID.damage * lerp(1, 1.6, strong_charge/60));

if ("holyburn_timer" not in hit_player_obj)
{
    hit_player_obj.lightstunner_id = noone;
    hit_player_obj.lightstun_type = 0;
    hit_player_obj.lightstun_timer = 0;
    
    hit_player_obj.holyburning = false;
    hit_player_obj.holyburner_id = noone;
    hit_player_obj.holyburn_timer = 0;
}

//mana
if (mp_gainable)
{
    mp_cur += (true_damage * 0.6 < 1) ? 1 : round(true_damage * 0.6);
    if (!playtesting && true_damage > 0) mp_mini_timer = mp_mini_timer_set;
}

//hit mechanics
if (holyburn_active) holyburn_apply();
if (lightstun_active)
{
    if (lightstun_last_attack != my_hitboxID.attack) lightstun_apply();
    else if (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2 || my_hitboxID.attack == skill[4].skill_attack) //exceptions
    {
        if (lightstun_last_hbox != my_hitboxID.hbox_num) lightstun_apply();
    }

    lightstun_last_attack = my_hitboxID.attack;
    lightstun_last_hbox = my_hitboxID.hbox_num;
    lightstun_last_attack_timer = 120;
}

//burning fury buff
if (burnbuff_active)
{
    switch (attack)
    {
        case AT_JAB:
            if (my_hitboxID.hbox_num == 2)
            {
                drain_mp();
                burn_hit_ex();
            }
            break;
        case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: case AT_TAUNT:
            drain_mp();
            burn_hit_ex();
            break;
    }
}

//other hitbox logic
switch (my_hitboxID.attack)
{
    case AT_DSTRONG:
        dstrong_last_hbox = my_hitboxID.hbox_num;
        break;
    case AT_USTRONG:
        if (my_hitboxID.hbox_num <= 3) //bar_tracking_id setup
        {
            bar_tracking_id = hit_player_obj;
        }
        if (my_hitboxID.hbox_num == 4)
        {
            if (rune_G_active) do_rune_warp(); //rune warp
            if (rune_H_active)
            {
                hit_player_obj.should_make_shockwave = false;
                rune_H_drag_id = hit_player_obj;
                bar_grab_time = 0;
                my_hitboxID.artc.chain_end[0] = rune_H_drag_id.x;
                my_hitboxID.artc.chain_end[1] = rune_H_drag_id.y;

                with (obj_article1) if (player_id == other.id && state == "hook_chain")
                {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        break;
    case AT_EXTRA_2: //light hookshot
        if (my_hitboxID.hbox_num == 1)
        {
            if (!rune_G_active)
            {
                var dist = abs(hit_player_obj.x - x);

                if (state_cat != SC_HITSTUN)
                {
                    hit_player_obj.hitstop += dist/15;
                    hit_player_obj.hitstop_full = hit_player_obj.hitstop;
                }
            }
            else do_rune_warp(); //rune warp
        }
        else if (my_hitboxID.hbox_num == 2) create_hitbox(my_hitboxID.attack, 3, my_hitboxID.x, my_hitboxID.y);
        break;
    case AT_NTHROW: case AT_NSPECIAL_AIR: //light dagger
        if (my_hitboxID.hbox_num == 1 && rune_G_active) do_rune_warp(); //rune warp
        break;
    case AT_EXTRA_3: //searing descent
        if (my_hitboxID.hbox_num < 3)
        {
            hit_player_obj.should_make_shockwave = false;
            if (burnbuff_active) set_grab_id();
        }
        else if (burnbuff_active) bar_grabbed_id = noone;
        break;
    case AT_FTHROW: case AT_FSPECIAL_AIR: //burning fury
        if (my_hitboxID.hbox_num == 2) set_grab_id();
        break;
    case 39: //flashbang
        if (my_hitboxID.hbox_num == 1) set_grab_id();
        break;
    /////////////
    case AT_FSTRONG_2:
        if (my_hitboxID.hbox_num <= 2)
        {
            var temp_fx = spawn_hit_fx(
                hit_player_obj.x + (random_func(1, 8, true)-4)*4,
                hit_player_obj.y - 16 - random_func(1, 8, true)*4,
                fx_hit_small
            );
            temp_fx.manual_angle_control = true;
            temp_fx.draw_angle = 30 * spr_dir;
        }
        break;
    case AT_DSTRONG_2:
        if (my_hitboxID.hbox_num == 1)
        {
            var hit_collision = create_hitbox(AT_DSTRONG_2, 2, hit_player_obj.x, hit_player_obj.y-32);
		    hit_collision.fx_particles = 2;

		    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-32, fx_fireblow[2]);
            sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
        }
        break;
}
if (my_hitboxID.attack != skill[6].skill_attack) //accel blitz cancel
{
    if (apply_motion_trail) apply_motion_trail = false;
    if (accel_act_time > 0) accel_act_time = 0;
}

//polaris logic
if (lightbuff_active && !was_parried && polaris_shots_left > 0)
{
    //who to track
    var tracking_obj = noone;
    if (my_hitboxID.attack == skill[7].skill_attack && my_hitboxID.hbox_num == 1) tracking_obj = noone;
    else
    {
        tracking_obj = hit_player_obj;
        if (tracking_obj.player < 5 && (tracking_obj.clone || tracking_obj.custom_clone)) //if it's a clone player ignore them and go straight to the original
        {
            with (oPlayer) if (tracking_obj.player == player && !clone && !custom_clone) tracking_obj = self;
        }
    }
    
    //prevents it from shooting on some attacks and conditions
    if (my_hitboxID.attack != skill[7].skill_attack && my_hitboxID.attack != 48 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_NO_POLARIS) == false &&
        !polaris_shot && tracking_obj != self)
    {
        if ("enemy_stage_article" in hit_player_obj && hit_player_obj.hp <= 0) exit; //doesn't chase demon horde enemies that just died
        polaris_shot = true;

        //light based attacks shoot another projectile but in slight delay
        if (polaris_shots_left > 1 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[2])
        {
            polaris_double_strike_time = polaris_double_strike_time_set;
        }
        if (polaris_shots_left > 0)
        {
            var proj = polaris_shot_ids[polaris_shots_left-1];
            proj.shoot_projectile = true;
            proj.home_id = tracking_obj;
            proj.hitbox_timer = 0;
            proj = noone;
            polaris_shots_left --;
        }
    }
}
if (my_hitboxID.attack == skill[7].skill_attack && my_hitboxID.hbox_num == 1)
{
    sound_play(asset_get("sfx_holy_lightning"));
    mp_cur += true_damage;
}

//overdrive
if (can_overdrive && od_cast == 0) || ("fs_char_initialized" in self && fs_char_initialized)
{
    od_color_time = 10;
    od_cur += (true_damage * 0.7 < 1) ? 1 : floor(true_damage * 0.7);
}

if (od_cast == 3) take_damage(hit_player_obj.player, player, floor(true_damage * (godbuff_mult-1) ));
if (theikos_type > 0) take_damage(hit_player_obj.player, player, floor(true_damage * (theikos_mult+theikos_type-1)));

mp_cur = clamp(mp_cur, 0, mp_max);

#define drain_mp
{
    var true_damage = floor(my_hitboxID.damage * lerp(1, 1.6, strong_charge/60));
	//if (!rune_K_active && !theikos_active) mp_cur -= round(true_damage / 2);
    if (!infinite_mp_mode) mp_cur -= round(true_damage / 2);
}
#define holyburn_apply
{
	if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[3]) with (hit_player_obj)
	{
		holyburning = true;
        holyburner_id = other;
		holyburn_timer = other.holyburn_tick * other.holyburn_ticks;
        if ("outline_color" in self) outline_color = other.line_color;
	}
}
#define lightstun_apply
{
    //check light based hitboxes
    if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[2])
    {
        with (hit_player_obj)
        {
            //timers setup
            //the lightstunner hit will always make the foe freeze
            if (lightstun_type == 0)
            {
                lightstunner_id = other;
                lightstun_timer = other.lightstun_pre_set;
            }
            else if (lightstun_type == 1 || other.my_hitboxID.attack == 48)
            {
                lightstun_timer = other.lightstun_active_set;
                with (other)
                {
                    var hitfx = spawn_hit_fx(other.x, other.y-other.char_height/2-4, fx_lightblow[2]);
                    hitfx.depth = other.depth-1;
                }
                sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
            }

            //change the type on hit, but only after it updates the timer
            if (lightstun_type < 2) lightstun_type ++;
        }
    }
    else
    {
        //on the frozen state, using any hitbox that isn't the light based hitboxes will kick the enemy out of the frozen state
        if (hit_player_obj.lightstun_type == 2)
        {
            hit_player_obj.lightstun_type = 0;
            hit_player_obj.lightstun_timer = 0;
        }
    }
}
#define burn_hit_ex
{
    if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[3] && my_hitboxID.attack != AT_TAUNT)
    {
        //hitbox stuff
        with (hit_fx_obj) if (hit_fx == other.my_hitboxID.hit_effect) //hit fx position
        {
            var _x = x;
            var _y = y;
        }

        if (my_hitboxID.damage < 10) //play extra sfx and vfx
        {
            if (my_hitboxID.sound_effect != asset_get("sfx_burnapplied")) sound_play(asset_get("sfx_burnapplied"));
            if (my_hitboxID.hit_effect != fx_fireblow[0]) spawn_hit_fx(_x, _y, fx_fireblow[0]);
        }
        else if (my_hitboxID.damage < 15)
        {
            if (my_hitboxID.sound_effect != asset_get("sfx_forsburn_combust")) sound_play(asset_get("sfx_forsburn_combust"));
            if (my_hitboxID.hit_effect != fx_fireblow[1]) spawn_hit_fx(_x, _y, fx_fireblow[1]);
        }
        else if (my_hitboxID.damage >= 15)
        {
            if (my_hitboxID.sound_effect != asset_get("sfx_burnconsume")) sound_play(asset_get("sfx_burnconsume"));
            if (my_hitboxID.hit_effect != fx_fireblow[2]) spawn_hit_fx(_x, _y, fx_fireblow[2]);
        }
    }
}

#define do_rune_warp
{
    if (!burnbuff_active)
    {
        //light hookshot chain
        for (var i = 0; i < instance_number(obj_article1); i++)
        {
            var obj = instance_find(obj_article1, i);
            if ("is_bar_artcmaster" in obj && obj.state == "hook_chain" && obj.player_id == self)
            {
                with (obj)
                {
                    window = 3;
                    window_timer = 0;
                }
                break;
            }
        }

        var fx_warp = spawn_hit_fx(x, y-32, fx_skill6);
        fx_warp.draw_angle = random_func(18, 60, true)-30;
        fx_warp.depth = depth-1;

        x = my_hitboxID.x;
        y = my_hitboxID.y;

        fx_warp = spawn_hit_fx(x, y-32, fx_skill6);
        fx_warp.draw_angle = random_func(19, 60, true)-30;
        fx_warp.depth = depth-1;

        vsp = -9;
        rune_G_warp_lag = 10;
        set_state(PS_IDLE_AIR);
    }
}

#define set_grab_id
{
    if (bar_grabbed_id == noone && (hit_player_obj.object_index != oPlayer || (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)))
    {
        bar_grabbed_id = hit_player_obj;
        bar_grab_time = 0;
    }
}