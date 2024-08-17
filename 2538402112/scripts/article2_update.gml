// article2_update

if effect_num == 1{
    if anim_timer < 3{
        if !player_id.hitpause anim_timer ++;
        x = player_id.x+(boom_xoff*player_id.spr_dir);
        y = player_id.y-39;
        if player_id.state_cat == SC_HITSTUN {instance_destroy(); exit;}
    }
    else anim_timer ++;
}
else{
    if anim_timer < 5{
        if !player_id.hitpause anim_timer ++;
    }
    else anim_timer ++;
}
image_index = anim_timer/anim_speed;
if anim_timer >= anim_length {instance_destroy(); exit;}