//Draw HUD

if ("dip_MP" not in self){exit;}

if (dip_MP)
{
    //====> MP Numbers ###########################################
    var str_mp = string(val_mp);
    
    var use_color = "White";
    
    if      (val_mp == max_mp)                          { use_color = "Green"; }
    else if (val_mp < nspecial_cost[nspecial_mode])     { use_color = "Red"; }
    //else if (val_mp < 50)                               { use_color = "Yellow"; }
    
    if (string_length(str_mp) > 0)
        draw_sprite(sprite_get("MPNum_" + use_color), real(string_char_at(str_mp, 1)), temp_x + hud_MPNum[0], temp_y + hud_MPNum[1]);
    
    if (string_length(str_mp) > 1)
        draw_sprite(sprite_get("MPNum_" + use_color), real(string_char_at(str_mp, 2)), temp_x + hud_MPNum[0] + 10, temp_y + hud_MPNum[1]);
    
    if (string_length(str_mp) > 2)
        draw_sprite(sprite_get("MPNum_" + use_color), real(string_char_at(str_mp, 3)), temp_x + hud_MPNum[0] + 20, temp_y + hud_MPNum[1]);

    //====> MP Symbol ###########################################
    draw_sprite(sprite_get("MPSymbol"), 0, temp_x + hud_MPSymbol[0], temp_y + hud_MPSymbol[1]);
}

if (dip_developerMode)
{
    var str_dip = string(dip_mode);
    
    //====> Developer text ###########################################
    if (string_length(str_dip) > 0)
    {
        draw_sprite(
            sprite_get("MPNum_White"), 
            real(string_char_at(str_dip, 1)), 
            temp_x + 20, 
            temp_y + hud_MPNum[1]
        );
    }
}

draw_sprite(sprite_get("catooken_ind"), move_cooldown[AT_EXTRA_1] <= 0 ? 0 : 1, temp_x + 188, temp_y - 4);

//====> SPHERE OFF-SCREEN #######################################################

with (fBall_obj)
{
    if (_offscreen)
    {
        draw_sprite_ext( other.nspecial_offscreen, _offscreenId, _offscreenX, _offscreenY , 1, 1, 0, get_player_hud_color(player), 1 );
    }
}

if (fBall_obj != noone && fBall_obj._offscreen)
{
    shader_start();
    draw_sprite( nspecial_offscreen2, fBall_obj._offscreenId, fBall_obj._offscreenX, fBall_obj._offscreenY );
    shader_end();
}

//====> (FORMERLY) Mode Indicator ###########################################
//====> (NOW) Calling Indicator ###########################################

//If there's a fireball out there, show other icon

/*
if (nspecial_ballOut != -1) 
{
    draw_sprite(sprite_get("MPMode"), 0, temp_x + hud_MPMode[0], temp_y + hud_MPMode[1]);
}
else
{
    draw_sprite(sprite_get("MPMode"), 1, temp_x + hud_MPMode[0], temp_y + hud_MPMode[1]);
}
*/

//END