//hitbox_init

fx_nspec_proj_afterimage = hit_fx_create(sprite_get("fx_nspec_proj_afterimage"), 12);
rec_x = 0;
rec_y = 0;

//using different strongs will send the enemy in different directions
if (attack == AT_NSPECIAL && hbox_num == 1)
{
    spr_dir = player_id.spr_dir;
    switch (player_id.attack)
    {
        case AT_USTRONG: //sends up
            kb_angle = 90; //80
            hit_flipper = 6;

            //bkb_limits = [7, 5]; //7
            //kbs_limits = [0.8, 0.4]; //0.8
            kb_value = 7.5;
            kb_scale = 0.8;
            break;
        case AT_DSTRONG: //sends down
            kb_angle = 270;
            hit_flipper = 6;

            //bkb_limits = [5.5, 3]; //4
            //kbs_limits = [0.4, 0.2]; //0.3
            kb_value = 6;
            kb_scale = 0.4;
            break;
        default: //sends in the opposite direction keqing is facing
            kb_angle = 50;
            hit_flipper = 0;

            //bkb_limits = [7, 4]; //6
            //kbs_limits = [0.5, 0.3]; //0.5
            kb_value = 7;
            kb_scale = 0.5;
            break;
    }

    /*
    var dist_from_player = distance_to_object(player_id);
    var min_dist = 50;
    var max_dist = 350;
    var dist_check = clamp(dist_from_player/max_dist - min_dist/max_dist, 0, 1);

    kb_value = lerp(bkb_limits[0], bkb_limits[1], dist_check);
    kb_scale = lerp(kbs_limits[0], kbs_limits[1], dist_check);
    */

    //print (kb_value)
    //print (kb_scale)
    //print ("_________")
}