// article2_update
if !player_id.hitpause anim_timer ++;
image_index = anim_timer/anim_speed;
if anim_timer >= anim_length {instance_destroy(); exit;}
if effect_num == 1{
    if anim_timer < 3{
        x = player_id.x+(boom_xoff*player_id.spr_dir);
        y = player_id.y-39;
        if player_id.state_cat == SC_HITSTUN {instance_destroy(); exit;}
    }
}