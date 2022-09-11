//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));

if (no_target)
instance_destroy(id);
else{

var target_y_center = (target.hurtboxID.bbox_top + target.hurtboxID.bbox_bottom)/2

    if (!spawned){
        // x = target.x + inaccuracy;
        // y = target_y_center - inaccuracy;
        var crosshair_place = random_func( 4, 360, true );

        x = target.x + lengthdir_x(inaccuracy, crosshair_place);
        y = target_y_center - lengthdir_y(inaccuracy, crosshair_place);

        spawned = true;
        visible = true;
    }

    depth = target.depth - 1;



    if (aiming_cd == 0){
        if (target.chaos_guncursed){
        x = round(lerp(x, target.x, 0.6));
        y = round(lerp(y, target_y_center, 0.6));
        }else
        {
        x = round(lerp(x, target.x, 0.1));
        y = round(lerp(y, target_y_center, 0.1));
        }
    }else
    {
        aiming_cd--;
    }

if (player_id.state != PS_ATTACK_GROUND || player_id.attack != AT_DSPECIAL)
instance_destroy(id);

}



