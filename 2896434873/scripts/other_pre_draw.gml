if ("other_player_id" not in self) exit;
with other_player_id
{
    if "particles" not in self exit;
    
    shader_start()
    for (var i = 0; i < ds_list_size(particles); i++)
    {
        var p = particles[| i]
        
    	draw_sprite_ext(p.sprite,p.frame,p.position[0],p.position[1],1,1, 0, c_white, 1)
    }
    shader_end()
}