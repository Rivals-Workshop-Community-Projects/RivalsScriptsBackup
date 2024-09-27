//article2_update.gml
//garden of eden mask

//position
x = player_id.x + player_id.hsp;
y = player_id.y + player_id.vsp - floor(player_id.char_height/1.75);

switch (state)
{
    case 1: //idle
        if (player_id.od_drag_time > 0) player_id.od_drag_time = 0;

        if (state_timer % effect_inc == 0) with (oPlayer)
        {
            if (place_meeting(x, y, other))
            {
                if (get_player_team(player) != get_player_team(other.player)) take_damage(player, other.player, 1);
                else //ally/venus stuff
                {
                    take_damage(player, other.player, -1);

                    if (player == other.player)
                    {
                        if (charge_cur <= charge_max) charge_cur += 5;
                        else charge_cur = charge_max;
                    }

                    //unused compatibility
                    /*
                        //for compatibility with the incremental effects, add [ venus_garden_compat = false; ] to your init.gml
                        //when [ venus_garden_compat ] is true, it will allow the effect to work
                        switch (url)
                        {
                            case CH_ELLIANA: //reduces steam
                                if (heat <= 0) heat = 0;
                                else heat -= 100;
                                break;
                            case CH_SHOVEL_KNIGHT: //gives shovel knight gems
                                gems += 3;
                                break;
                            case "2601775097": //bar - increases MP
                                if (mp_current >= mp_max) mp_current = mp_max;
                                else mp_current += 3;
                                break;
                            case "2786885695": //keqing - resets stilleto cooldowns
                                if (nspec_cd <= 0) nspec_cd = 0;
                                else nspec_cd -= 30;
                                if (instance_exists(artc_marker) && artc_marker.state == 1) artc_marker.active_time -= 30;
                                break;
                            case "2965266088": //rumia - adds darkness
                                if (dark_shield_hp >= max_dark_shield_hp) dark_shield_hp = max_dark_shield_hp;
                                else dark_shield_hp ++;
                                break;
                            case "3039831352": //sonic - passive boost gain
                                boost_cur += 1/boost_decrease_rate[boost_mode] * 30;
                                break;
                        }
                        if ("venus_garden_compat" in self) venus_garden_compat = true;
                    */
                }
            }
            //else venus_garden_compat = false;
        }

        if (player_id.using_overdrive <= 0)
        {
            //with (oPlayer) if ("venus_garden_compat" in self) venus_garden_compat = false;
            state ++;
            state_timer = 0;
        }
        break;
    case 2: //despawn
        size = lerp(2, 0, state_timer/14);
        if (size <= 0)
        {
            instance_destroy();
            exit;
        }
        break;
}

if (!player_id.hitpause) state_timer ++;
image_xscale = size;
image_yscale = size;

//vfx
for (var i = 0; i < 2; i++)
{
    var fx = spawn_hit_fx(
        x + lengthdir_x(224 * size/2, random_func(i, 60, true)*6) - 8,
        y + lengthdir_y(224 * size/2, random_func(i, 60, true)*6) - 8,
        player_id.fx_od_sparkles
    );
    fx.spr_dir = 1;
    fx.depth = player_id.depth - 1;
}

//byakuren alt
if (!player_id.s_alt && player_id.alt_cur == 10)
{
    var color_rgb = make_color_rgb(255, 0, 0);
    var hue = (color_get_hue(color_rgb) + player_id.venus_color2) % 255;
    var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
    pow_col = make_color_rgb(color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv));
}
else pow_col = make_color_rgb(player_id.colorO[6*4+0]*255, player_id.colorO[6*4+1]*255, player_id.colorO[6*4+2]*255);