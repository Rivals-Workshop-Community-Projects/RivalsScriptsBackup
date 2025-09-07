// Make the player enter the cannon
if (my_hitboxID.attack == 10)
{
    //hit_player_obj.x = my_hitboxID.owner.x;
    //hit_player_obj.y = my_hitboxID.owner.y;
    my_hitboxID.owner.player_entered_cannon = hit_player_obj;
    hit_player_obj.grabbed_invisible = true;
    hit_player_obj.invince_time = 10;
    hit_player_obj.hitstun = 10;
    hit_player_obj.hitstun_full = 10;
    hit_player_obj.invincible = true;
    hit_player_obj.hitstop = 58;
    hit_player_obj.hitstop_full = 58;
    // angles dont work properly, so force them to work properly.
    var intended_xsign = sign(dcos(my_hitboxID.angle));
    var intended_ysign = -sign(dsin(my_hitboxID.angle));
    if (sign(hit_player_obj.old_hsp) != intended_xsign) hit_player_obj.old_hsp *= -1;
    if (sign(hit_player_obj.old_vsp) != intended_ysign) hit_player_obj.old_vsp *= -1;
}
// i didnt know how to do this, just make the punching glove give invincibility so you cant be hit by multiple hitboxes
if (my_hitboxID.attack == 13)
{
    hit_player_obj.invincible = true;
    hit_player_obj.invince_time = 3;
}