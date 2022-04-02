//user_event13
//the real hit_player.gml

if (my_hitboxID.orig_player_id != self) exit;
turbo_attack_hit = attack;
turbo_attack_window = window;

//jab allow continiueation of the combo
if (attack == AT_JAB && my_hitboxID.hbox_num <= 3) can_jab4 = true;

switch (my_hitboxID.attack)
{
    case AT_FSTRONG:
        if ("fs_charge" in self) fs_charge += point_distance(hit_player_obj.hsp,hit_player_obj.vsp,0,0) * fs_charge_mult;
        break;
    case AT_NSPECIAL:
        //nspecial projectile
        if (my_hitboxID.hbox_num == 2 && stilleto_id == noone)
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
                fspec_bounce = true;
                artc_marker.state = 2;
                artc_marker.state_timer = 0;
	            if (stilleto_id != noone) stilleto_id = noone;
            }
        }
        break;
    case AT_DSPECIAL: //dspecial's afterimage puts an active lightning stilleto on people hit by it and resets it's duration
        if (my_hitboxID.hbox_num == 1 && stilleto_id == noone)
        {
            if (instance_exists(artc_marker) && artc_marker.state == 1)
            {
                stilleto_id = hit_player_obj;
                artc_marker.state = 1;
                artc_marker.state_timer = 0;
                artc_marker.active_time = 30;
                artc_marker.play_anim = true;
            }
            if (instance_exists(artc_afterimage)) with (artc_afterimage) instance_destroy();
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

//nspec cancel window
if (nspec_cancel) nspec_cancel_timer = 15;

//hitting people increases the time the marker stays a bit
if (instance_exists(artc_marker) && artc_marker.state == 1 && my_hitboxID.attack != AT_NSPECIAL) artc_marker.active_time -= 30;


//knockback formula cuz why not
//my_hitboxID.kb_value + (my_hitboxID.kb_scale * hit_player_obj.knockback_adj * get_player_damage(hit_player_obj.player) * 0.12);

//damage text
//credit to SAI for this code, it's pretty much the same code as chara's damage numbers
if (display_damage_numbers)
{
    artc_damage = instance_create(hit_player_obj.x, hit_player_obj.y, "obj_article3");
    {
        artc_damage.damage = my_hitboxID.damage * artc_damage.damage_mult;
        if (artc_damage.damage > power(10, 7)-1) artc_damage.damage = power(10, 7)-1;
        artc_damage.y = hit_player_obj.y - char_height*1.5;
        artc_damage.depth = artc_damage.depth --;
        if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == $FF00FF)
        {
            if (alt_mc) artc_damage.color = make_color_rgb(lerp_array[0], lerp_array[1], lerp_array[2]);
            else artc_damage.color = artc_damage.elec_col;
        }
        else artc_damage.color = c_white;
    }
}