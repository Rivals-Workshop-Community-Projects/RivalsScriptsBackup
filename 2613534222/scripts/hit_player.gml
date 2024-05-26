if (my_hitboxID.type == 1 and hit_player_obj.free == false) {
     hit_player_obj.y -= 1;
}

if my_hitboxID.attack == AT_DAIR
{
    if my_hitboxID.hbox_num == 1
    {
        old_hsp *= 0.7
        old_vsp -= 2
    }
    else
    {
        old_vsp = -4
    }
}
else if my_hitboxID.attack == AT_BAIR
{
    old_vsp = -2
    old_hsp = old_hsp - 1*spr_dir;
}
else if (my_hitboxID.attack == AT_JAB or my_hitboxID.attack == AT_NAIR) and !hit_player_obj.clone
{
    move_cooldown[AT_JAB] = 0;
	move_cooldown[AT_NAIR] = 0;
    shadowball_hit = true;
    shadowball_hit_player = hit_player_obj;
    shadowball_hit_timer = 60*my_hitboxID.shadowball_size;
    set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .5 + my_hitboxID.shadowball_size/6);
    var t = spawn_hit_fx((my_hitboxID.x + hit_player_obj.x) / 2,(my_hitboxID.y + hit_player_obj.y) / 2,nspec_explode);
    t.depth = -30;
} else if (my_hitboxID.attack == AT_USPECIAL){
    shadowball_hit = false;
    shadowball_hit_timer = 0;
}


if(shadowball_hit_player = hit_player_obj and shadowball_hit_timer > 0){
	shadowball_hit_timer += 5;
}
