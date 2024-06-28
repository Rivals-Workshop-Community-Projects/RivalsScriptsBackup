// ------------- death.gml -------------------
// this file runs for one frame on death

//#region // Local ---------------------------------------------------

//#endregion


sound_play(ssl_death_sound); //this plays when you die, change it in init for a different sound!

// This handles the blastzone death effect, switching the default for the SSL one, courtesy of Bar-kun
var stage_explosion_obj = instance_nearest(x, y, asset_get("stage_explosion_obj"));
var _x = get_instance_x(stage_explosion_obj)
var _y = get_instance_y(stage_explosion_obj)
commit_asset_murder(stage_explosion_obj);
var check_x = 0;
if (x > room_width) check_x = 1;
else if (x < 0) check_x = -1;
var check_y = 0;
if (y > room_height) check_y = 1;
else if (y < 0) check_y = -1;

var fx_angle = 0;
// fx_angle = floor((point_direction(x, y, (view_get_xview()+view_get_wview())/2, (view_get_yview()+view_get_hview())/2)+22.5)/45); //less percise
switch (check_x)
{
    case -1: //left
        switch (check_y)
        {
            case -1: fx_angle = 7; break; //up
            case 0: fx_angle = 0; break; //center
            case 1: fx_angle = 1; break; //down
        }
        break;
    case 0: //center
        switch (check_y)
        {
            case -1: fx_angle = 6; break; //up
            case 1: fx_angle = 2; break; //down
        }
        break;
    case 1: //right
        switch (check_y)
        {
            case -1: fx_angle = 5; break; //up
            case 0: fx_angle = 4; break; //center
            case 1: fx_angle = 3; break; //down
        }
        break;
}

var blast_fx = spawn_hit_fx(_x, _y, hit_fx_create(sprite_get("dust_stage_explosion"), 32));
blast_fx.spr_dir = 1;
// blast_fx.x += lengthdir_x(114, fx_angle*45);
// blast_fx.y += lengthdir_y(114, fx_angle*45);
print(fx_angle*45)
blast_fx.draw_angle = fx_angle*45;

#define commit_asset_murder(asset)
{
    if (instance_exists(asset)) with (asset)
    {
        with (other)
        {
            var k = spawn_hit_fx(0, 0, 0);
            k.white = asset;
            break;
        }
    }
}