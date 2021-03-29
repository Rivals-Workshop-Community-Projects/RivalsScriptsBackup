//NSPECIAL PARTICLES (OTHER_PRE_DRAW)
//By: Delta Parallax

//This code goes through all available particles and draws them, mapping relevant attributes to draw function arguments.
//Execute this code from Heartbrake's perspective to access the necessary variables.
if !("other_player_id" in self) exit;

//draw_debug_text(x,y,"using compat: "+string(heartbrakeCompatibility))

with (other_player_id)
{
	//Make sure nspecial_target exists and is referring to a grabbed opponent.
	if ("nspecial_target" in self and nspecial_target == other)
	{
		//Stop the shader, as this may cause problems.
		shader_end()
		
		//Turn on additive blending. (Personal choice as it makes things seem brighter)
		gpu_set_blendmode(bm_add)
		
		//Loop through all particles and draw them if there are any to draw.
	    var i, part, len; 
	    i = 0;
	    part = nspecial_particles;
	    len = array_length_1d(part);
	    if len != 0
	    {
	        for (var i = 0; i < len; i++)
			{
			    var p = part[@ i];
			    if (p != -1)
			    {
			    	var color, scaleup;
			    	color = make_color_rgb(p.color[0],p.color[1],p.color[2]);
			    	scaleup = ("small_sprites" in self and small_sprites == 1) ? 2 : 1;
			    	
			    	gpu_set_fog(1, color, 0,1)
			    	draw_sprite_ext(p.sprite,p.frame,p.position[@ 0],p.position[@ 1],p.scale[@ 0] * scaleup, p.scale[@ 1] * scaleup, 0, c_white, p.alpha);
			    	gpu_set_fog(0, c_white, 0,1)
			    }
			}
	    }
	    
	    //Go back to normal blending after everything's done.
	    gpu_set_blendmode(bm_normal)
	}
}