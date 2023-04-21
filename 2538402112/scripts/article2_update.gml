// article2_update

switch(effect_num)
{
    case 0:
        if !player_id.hitpause anim_timer ++
        image_index = anim_timer/3
        if anim_timer >= 12 instance_destroy(); break;
        break;
    case 1:
        if !player_id.hitpause anim_timer ++
        image_index = anim_timer/3
        if anim_timer < 4{
            x = player_id.x+(25*player_id.spr_dir)
            y = player_id.y-39
        }
        if anim_timer >= 12 instance_destroy(); break;
        if player_id.state_cat == SC_HITSTUN instance_destroy(); break;
        break;
}