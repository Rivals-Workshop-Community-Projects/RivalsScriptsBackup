//article13
// Plat
//image_index += image_spd;

var wid =  sprite_get_width(sprite_index) / 2;
with (oPlayer)
{
    if (x <= other.x + wid) and (x >= other.x - wid) and (y <= other.y) and (y >= other.y - 2) and (!free)
    {
        if (ds_list_find_index(other.on_me_list,self) == -1)
        {
            other.image_index = 1;
            ds_list_add(other.on_me_list,self);
        }
    }
    else
    {
        var pos = ds_list_find_index(other.on_me_list,self);
        ds_list_delete(other.on_me_list,pos);
    }
}


if (image_index < 4)
{
    image_index += 0.2;
}