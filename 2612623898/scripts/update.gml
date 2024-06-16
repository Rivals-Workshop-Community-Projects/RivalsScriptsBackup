user_event(9);

//#region Bar-Kun Dust----------------------------------------------------------
with (hit_fx_obj) if (player == other.player) //effect depth
{
    if (depth == 3) depth = player_id.depth-1;
    if (hit_fx == other.dust_effect[24]) vsp += 0.5; //kill effect stars have "gravity"
}

//remove dust from existance (not really we are just pushing it off-screen)
//original code by FQF (from QUA mario)
with (asset_get("new_dust_fx_obj"))
{
    //other.dust_effect[dust_fx] != 0 checks the array, dust_fx <= 24 && dust_fx >= 0 checks the dusts
    if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && other.dust_effect[dust_fx] != 0)
    {
        //steal dust values
        var effect = other.dust_effect[dust_fx];
        var spawn_x = x;
        var spawn_y = y;
        var dust_angle = draw_angle;
        var dust_depth = depth;

        //spawn new dusts
        with (other)
        {
            //exceptions
            switch (other.dust_fx)
            {
                case 3: case 4: effect = dust_effect[5]; break; //dash start / dash use the walk dust
                case 8: //wall hit bounce - when hitting the celling it should be rotated properly
                    if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
                    dust_depth = hit_player_obj.depth - 1;
                    break;
            }
            
            //spawn effect
            var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
            new_dust_fx.draw_angle = dust_angle;
            new_dust_fx.depth = dust_depth;
            new_dust_fx.hsp = other.hsp;
            new_dust_fx.vsp = other.vsp;
        }

        //"remove" dust by moving to a place nobody will see
        x = -3000;
        y = -3000;
        dust_length = 0;
    }
}
//#endregion Bar-Kun Dust----------------------------------------------------------


var team_attack = get_match_setting(SET_TEAMATTACK);
with (pHitBox) {
    if (object_index == oPlayer) continue;
    //Windboxes
    if (player_id == other.id && attack == AT_UTILT && (hbox_num == 1 || hbox_num == 2))
    {
        var player_list = ds_list_create();
 
        var num = instance_place_list(floor(x), floor(y), oPlayer, player_list, false); 
        if (num >= 1) {
            for (var i = 0; i < ds_list_size(player_list); i++) {
                var hplayer = player_list[|i]
            	if (hitbox_timer % 6 == 0 && instance_exists(hplayer) && hplayer.player != orig_player && (get_player_team(hplayer.player) != get_player_team(orig_player) || team_attack) && !hplayer.invincible) {
            		hplayer.hsp += lengthdir_x(kb_value, get_hitbox_angle(id));
            		hplayer.vsp += lengthdir_y(kb_value, get_hitbox_angle(id));
            	}
            }
        }
        ds_list_destroy(player_list);
    }
}