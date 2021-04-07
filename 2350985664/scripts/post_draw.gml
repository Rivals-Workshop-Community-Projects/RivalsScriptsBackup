//post-draw


for (var i = 0; i < ds_list_size(caged_list); i += 1)
{
    var opp = caged_list[|i];
    
    if (cage_time_list[|i] < 30)
    {
        var im = 5 / (30 / (cage_time_list[|i] + 1))
    }
    else
    {
        var im = 5;
    }
    
    shader_start()
     draw_sprite(sprite_get("cage"),im,opp.x,opp.y - opp.char_height / 2);
    shader_end()
}


