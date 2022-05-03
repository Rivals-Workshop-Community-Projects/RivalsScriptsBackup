//user_event 13


//mana
if (mp_gainable)
{
    mp_current += (my_hitboxID.damage * 0.6 < 1) ? 1 : round(my_hitboxID.damage * 0.6);
    if (!playtesting && my_hitboxID.damage > 0) mp_mini_timer = mp_mini_timer_set;
}

//hit mechanics
if (holyburn_active) HolyBurn();
if (lightstun_active)
{
    if (lightstun_last_attack != my_hitboxID.attack) LightStun();
    else if (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2) //exceptions
    {
        if (lightstun_last_hbox != my_hitboxID.hbox_num) LightStun();
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
            if (my_hitboxID.hbox_num == 2) ManaBurn();
            break;
        case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_USTRONG: case AT_FSTRONG:  case AT_DSTRONG:  case AT_TAUNT:
            ManaBurn();
            break;
    }
}

//other hitbox logic
switch (my_hitboxID.attack)
{
    case AT_USTRONG:
        if (my_hitboxID.hbox_num <= 3) //bar_tracking_id setup
        {
            bar_tracking_id = hit_player_obj;
        }
        if (my_hitboxID.hbox_num == 4)
        {
            do_rune_warp(); //rune warp
            if (has_rune("H"))
            {
                rune_H_drag_id = hit_player_obj;
                bar_grab_time = 0;
                hook_proj[0] = rune_H_drag_id.x;
                hook_proj[1] = rune_H_drag_id.y;

                with (obj_article1) if (player_id == other.id && state == "hook_chain")
                {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        break;
    case AT_NTHROW: case AT_NSPECIAL_AIR: case AT_EXTRA_2:
        if (my_hitboxID.hbox_num == 1) do_rune_warp(); //rune warp
        break;
    //bar_grabbed_id setup
    case AT_FTHROW: case AT_FSPECIAL_AIR:
        if (my_hitboxID.hbox_num == 2) 
        {
            bar_grabbed_id = hit_player_obj;
            bar_grab_time = 0;
        }
        break;
    case AT_EXTRA_3:
        if (my_hitboxID.hbox_num < 4)
        {
            bar_grabbed_id = hit_player_obj;
            bar_grab_time = 0;
        }
        break;
    case 39:
        if (my_hitboxID.hbox_num == 1)
        {
            bar_grabbed_id = hit_player_obj;
            bar_grab_time = 0;
        }
        break;
    /////////////
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

//polaris logic
if (lightbuff_active && !was_parried && homing_cooldown <= -1)
{
    //who to track
	if (my_hitboxID.attack == skill[7].skill_attack && my_hitboxID.hbox_num == 1) polaris_id = noone;
	else polaris_id = hit_player_obj;
	
	//prevents it from spawning on some attacks and conditions
	if (my_hitboxID.attack != skill[7].skill_attack && my_hitboxID.attack != 48
	&& (attack != skill[11].skill_attack || attack == skill[11].skill_attack && my_hitboxID.hbox_num != 1)
	&& !polaris_shot && polaris_id != self)
	{
		polaris_shot = true;
		homing_cooldown = 20; //internal cooldown
		if (x > hit_player_obj.x) create_hitbox(skill[7].skill_attack, 1, x+64, y-48);
		else create_hitbox(skill[7].skill_attack, 1, x-64, y-48);
		ManaBurn();
	}
}
if (my_hitboxID.attack == skill[7].skill_attack && my_hitboxID.hbox_num == 1) sound_play(asset_get("sfx_holy_lightning"));


//overdrive
if (can_overdrive && od_cast == 0) || ("fs_char_initialized" in self && fs_char_initialized)
{
    od_color_time = 10;
    od_current += (my_hitboxID.damage * 0.4 < 1) ? 1 : floor(my_hitboxID.damage * 0.4);
}

if (od_cast == 3) take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage * (godbuff_mult-1) ));
if (theikos_type > 0) take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage * (theikos_mult+theikos_type-1)));


#define ManaBurn
{
	//if (!has_rune("K") && !theikos_active) mp_current -= round(my_hitboxID.damage / 2);
    if (!infinite_mp_mode) mp_current -= round(my_hitboxID.damage / 2);
}
#define HolyBurn
{
	if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[3]) with (hit_player_obj)
	{
		holyburning = true;
        holyburner_id = other;
		holyburn_timer = other.holyburn_timer_set;
        outline_color = other.line_color;
	}
}
#define LightStun
{
    if (lightstun_active)
    {
        //check light based hitboxes
        if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[2])
        {
            with (hit_player_obj)
            {
                //timers setup
                //the lightstunner hit will always make the foe freeze
                if (lightstun_type == 0) lightstun_timer = other.lightstun_pre_set;
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
}

#define do_rune_warp
{
    if (rune_G_active && !burnbuff_active)
    {
        if (instance_exists(hook_chain_artc)) instance_destroy(hook_chain_artc);

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