//got_parried 
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num = 3
{
    with asset_get("obj_article1")
    {
        if player_id == other.id
        {
            times_parried += 1;
            hsp = lengthdir_x(11, point_direction(x,y+20,player_id.x,player_id.y));
            vsp = lengthdir_y(11, point_direction(x,y+20,player_id.x,player_id.y));
        }
    }
}
