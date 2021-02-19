// pre draw
var nspec_lag = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) + 2;
var fspec_lag = get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH) + 2;
with (puul)
{
	if(other.birdOut && instance_exists(other.steelball) && other.steelball != noone && other.steelball != other.ballbreaker && !((other.attack == AT_NSPECIAL || other.attack == AT_FSPECIAL_2) && (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR)))
	{
		var render_distance = min(8,other.steelball.hitbox_timer/2);
		var render_alpha = min(0.5,other.steelball.hitbox_timer/20);
	    if(point_distance(other.steelball.x+other.steelball.hsp*nspec_lag, other.steelball.y+other.steelball.vsp*nspec_lag, x, y-14) < radius)
		{
	        var anglol = point_direction(other.steelball.x+other.steelball.hsp*nspec_lag, other.steelball.y+other.steelball.vsp*nspec_lag, x, y-14);
	        var htemp = lengthdir_x(16, anglol);
	        var vtemp = lengthdir_y(16, anglol);
			draw_sprite_ext(sprite_get("steelball2"),0,x+htemp*render_distance,y+vtemp*render_distance,1,1,0,c_red,render_alpha);
	    }

	    if(point_distance(other.steelball.x+other.steelball.hsp*fspec_lag, other.steelball.y+other.steelball.vsp*fspec_lag, x, y-14) < radius)
		{
	        var anglol = point_direction(x, y-14,other.steelball.x+other.steelball.hsp*fspec_lag,other.steelball.y+other.steelball.vsp*fspec_lag);
	        var htemp = lengthdir_x(16, anglol);
	        var vtemp = lengthdir_y(16, anglol);
			draw_sprite_ext(sprite_get("steelball2"),0,x+htemp*render_distance,y+vtemp*render_distance,1,1,0,c_blue,render_alpha);
	    }
	}
}