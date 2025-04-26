//user_event13
//the real hit_player.gml

if (my_hitboxID.orig_player_id != self) exit;

var true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

turbo_attack_hit = attack;
turbo_attack_window = window;

if (my_hitboxID.type == 2) has_hit_player = true;

//jab allow continiueation of the combo
if (attack == AT_JAB && my_hitboxID.hbox_num <= 3) can_jab4 = true;

switch (my_hitboxID.attack)
{
    case AT_NAIR:
        if (my_hitboxID.hbox_num < get_num_hitboxes(attack)) hit_player_obj.hsp = hsp;
        break;
    case AT_FSTRONG:
        if ("fs_charge" in self) fs_charge += point_distance(hit_player_obj.hsp,hit_player_obj.vsp,0,0) * fs_charge_mult;
        if (my_hitboxID.hitpause > 0)
        {
            old_hsp = hsp;
            old_vsp = vsp;
            hitstop = get_hitstop_formula(get_player_damage(hit_player_obj.player), my_hitboxID.damage, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, 0);
            hitstop_full = hit_player_obj.hitstop;
            hitpause = true;
        }

        if (poison > 0) poison --;
        break;
    case AT_NSPECIAL:
        //nspecial projectile
        if (my_hitboxID.hbox_num == 2 && stilleto_id == noone && get_player_team(hit_player_obj.player) != get_player_team(player))
        {
            if (!instance_exists(artc_marker))
            {
                artc_marker = instance_create(x, y, "obj_article1");
                stilleto_id = hit_player_obj;
                artc_marker.state = 1;
                artc_marker.state_timer = 0;
                artc_marker.play_anim = true;
                nspec_cd_start = true;
                sound_play(sound_get("sfx_stilleto_spawn"));
            }
        }
        break;
    case AT_FSPECIAL: //hitting with f-spec can make the marker explode and bounce keqing
        if (hit_player_obj == stilleto_id)
        {
            if (instance_exists(artc_marker) && artc_marker.state == 1)
            {
                old_vsp = -9;
                artc_marker.state = 2;
                artc_marker.state_timer = 0;
	            if (stilleto_id != noone) stilleto_id = noone;
            }
        }
        break;
    case AT_DSPECIAL: //dspecial's afterimage puts an active lightning stilleto on people hit by it and resets it's duration
        if (my_hitboxID.hbox_num == 1 && stilleto_id == noone && get_player_team(hit_player_obj.player) != get_player_team(player))
        {
            if (instance_exists(artc_marker) && artc_marker.state == 1)
            {
                stilleto_id = hit_player_obj;
                artc_marker.state = 1;
                artc_marker.state_timer = 0;
                artc_marker.active_time = 30;
                artc_marker.play_anim = true;
            }
            if (instance_exists(artc_afterimage)) with (artc_afterimage)
            {
                has_hit = true;
                instance_destroy();
            }
        }
        break;
    case 49: //final smash
        with (oPlayer) //puts the hit effects on the players
		{
			for (var num_player = 0; num_player <= 3; num_player ++)
			{
				if (num_player+1 == player && other.player != player && state == PS_HITSTUN)
				{
					other.fs_fx_offset[num_player] = [x, y];

					with (other)
                    {
                        switch (my_hitboxID.hbox_num)
                        {
                            case 2:
                                var fx = spawn_hit_fx(fs_fx_offset[num_player][0], fs_fx_offset[num_player][1]-char_height+char_height/2, fx_hit_elec1);
                                fx.depth = other.depth-1;
                                break;
                            case 3:
                                var fx = spawn_hit_fx(fs_fx_offset[num_player][0], fs_fx_offset[num_player][1]-char_height+char_height/2, fx_hit_elec3);
                                fx.depth = other.depth-1;
                                break
                        }
                    }
				}
			}
		}
        break;
}

//lisa extra blasts
if (has_rune("G")) switch (my_hitboxID.attack)
{
    case AT_NSPECIAL: case AT_NSPECIAL_2: case AT_USPECIAL: case AT_FSPECIAL: case AT_DSPECIAL:
        spawn_blast_attack = true;
        break;
    case 48: //rune G extra hit
        with (hit_player_obj)
        { 
            if (!hitpause) 
            { 
                old_hsp = hsp*0.7; 
                old_vsp = vsp*0.7; 
                hitpause = true; 
            }
            hitstop = 15;
        }
        break;
}

//this applies the electro infused effect on any attack with a purple hitbox
//it does... nothing! it just looks cool
//but maybe one day it will do something beyond looking cool
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == $FF00FF)
{
    /*
    hit_player_obj.electro_infused = true;
    hit_player_obj.electro_infused_time = 0;
    */
}



//adds the sfx_blow_# sounds on top of hit sounds, based on the hit effect
with (my_hitboxID) 
{
    //exceptions
    if ((attack != AT_DAIR || hbox_num != 2) && type == 1 || attack == AT_FSTRONG)
    {
        with (other)
        {
            if (my_hitboxID.hit_effect == fx_hit_phys1 || my_hitboxID.hit_effect == fx_hit_elec1) {
                sound_play(asset_get("sfx_blow_weak" + string(random_func(22, 2, true) + 1)), false, 0, 0.75);
            }
            if (my_hitboxID.hit_effect == fx_hit_phys2 || my_hitboxID.hit_effect == fx_hit_elec2) {
                sound_play(asset_get("sfx_blow_medium" + string(random_func(22, 3, true) + 1)), false, 0, 0.75);
            }
            if (my_hitboxID.hit_effect == fx_hit_phys3 || my_hitboxID.hit_effect == fx_hit_elec3) {
                sound_play(asset_get("sfx_blow_heavy" + string(random_func(22, 2, true) + 1)), false, 0, 0.75);
            }
        }
    }
}


//nspec cancel window
if (nspec_cancel) nspec_cancel_timer = 15;

//hitting people increases the time the marker stays a bit
if (instance_exists(artc_marker) && artc_marker.state == 1 && my_hitboxID.attack != AT_NSPECIAL) artc_marker.active_time -= 30;




//crits
if (has_rune("I") && crit_val >= crit_rate)
{
    if (hit_player_obj.object_index == oPlayer) take_damage(hit_player_obj.player, player, floor(true_dmg * (crit_damage-1)));
    else if ("enemy_stage_article" in hit_player_obj) hit_player_obj.hp -= floor(true_dmg * (crit_damage-1));

    hit_player_obj.orig_knock *= crit_damage*0.75;
    hit_player_obj.hitstop_full *= crit_damage*0.75;
    hit_player_obj.hitstop *= crit_damage*0.75;

    hitstop_full *= crit_damage*0.75;
    hitstop *= crit_damage*0.75;
}

//damage text
//credit to SAI for this code, it's pretty much the same code as chara's damage numbers
if (display_damage_numbers)
{
    artc_damage = instance_create(hit_player_obj.x, hit_player_obj.y, "obj_article3");
    {
        artc_damage.damage = floor(true_dmg * artc_damage.damage_mult * (crit_val >= crit_rate ? crit_damage : 1));
        if (artc_damage.damage > power(10, 7)-1) artc_damage.damage = power(10, 7)-1;
        artc_damage.y = hit_player_obj.y - char_height*1.5;
        artc_damage.depth = artc_damage.depth --;
        if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == $FF00FF)
        {
            if (alt_mc) artc_damage.color = make_color_rgb(lerp_array[0], lerp_array[1], lerp_array[2]);
            else artc_damage.color = artc_damage.elec_col;
        }
        else artc_damage.color = c_white;

        if ((has_rune("I") && crit_val >= crit_rate)) artc_damage.is_crit = true;
    }
}

//elemental burst stuff (without final smash)
if (("fs_char_initialized" not in self && has_burst || has_resolve_mechanic && !vhd_effect)
&& particle_cd == 0 && true_dmg > 0 && my_hitboxID.attack != AT_BURST)
{
    //should spawn elemental particles (article), which fly into keqing and fill up her burst meter
    //there's 2 types of particles: small particles and big orbs
    //big orbs are done through special moves, and small particles are done through normals
    //they fly into keqing as long as she isn't dead and she is close enough to them, otherwise they sit in place
    //the amount of particles will either be 1 per attack or 1 per 1%

    var fly_power = 2.5;
    repeat ((true_dmg >= 10) ? 1 : 3)
    {
        particle_amount ++;

        artc_part = instance_create(hit_player_obj.x, hit_player_obj.y-hit_player_obj.char_height/2, "obj_article3");
        artc_part.state = 1;
        if (true_dmg >= 10) artc_part.is_orb = true;
        artc_part.hsp = lengthdir_x((random_func(particle_amount, 4, true) - 4) * fly_power, get_hitbox_angle(my_hitboxID))*-1;
        artc_part.vsp = lengthdir_y((random_func(particle_amount, 5, true)) * fly_power, get_hitbox_angle(my_hitboxID));
        artc_part.part_angle = get_hitbox_angle(my_hitboxID);
    }

    particle_cd = 40;
}

if ("fs_char_initialized" in self && attack != AT_BURST) fs_charge += true_dmg * (crit_val >= crit_rate ? crit_damage : 1);