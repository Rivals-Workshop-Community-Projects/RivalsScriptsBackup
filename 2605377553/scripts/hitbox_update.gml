// hitbox_update.gml
// Called every frame a hitbox is out
// From the perspective of a hitbox

if attack == AT_NSPECIAL
{
	if hbox_num == 1
	{
		//Adjust Radius
		var detectRadius = 100;
	
		//animate
		if image_index + 0.3 >= 3
			image_index -= 3;
		image_index += 0.3;
		image_index = clamp(image_index,0,3);
		
		//hit fx
		var leeway = 4;
		var mx = -leeway + random_func_2((x+y)%200,leeway*2,true);
		var my = -leeway + random_func_2((x*y)%200,leeway*2,true);
		spawn_hit_fx( x+mx, y+my, player_id.nspecEffect);
		
		//calculate trajectory
		var closest = noone;
		with(oPlayer)
		{
			if id == other.player_id || !malsick
			{
			
			}
			else if((closest != noone && point_distance(x,y,other.x,other.y) <= point_distance(closest.x,closest.y,other.x,other.y)) || closest == noone)
			{
				closest = id;
			}
		}
		
		if(closest != noone && collision_circle(x, y, detectRadius, closest, true, true))//change this later to 
		{
			var pointAngle = point_direction(x,y,closest.x,closest.y-10); //10 is the offset from the actual y valuie
			var anglePower = 0.05;
			
			var mx = lengthdir_x(nspecSpeed,pointAngle);
			var my = lengthdir_y(nspecSpeed,pointAngle);
			
			var hPower = closest.x > x ? anglePower : -anglePower;
			var yPower = closest.y > y ? anglePower : -anglePower;
			
			hsp = lerp(hsp, mx, anglePower);
			vsp = lerp(vsp, my, anglePower);//my + yPower;
		}
		else
		{
			var pointAngle = point_direction(x-hsp,y-vsp,x,y);
			hsp = lengthdir_x(nspecSpeed,pointAngle);
			vsp = lengthdir_y(nspecSpeed,pointAngle);
		}
		
		//increase speed
		if abs(nspecSpeed) < nspecSpeedMax
			nspecSpeed += sign(nspecSpeed) * 0.2;
			
		//spawn
		//add more conditionals here on when to activate the attack
		if player_id.attack != AT_NSPECIAL || player_id.window != 2
		{
			destroyed = true;
			var h = create_hitbox(AT_NSPECIAL, 2, x, y);
			h.image_index = 3;
			h.walls = 1;
			h.grounds = 1;
			h.enemies = 1;
		}
	}
	else if hbox_num == 2
	{
		image_index += 0.2;
		if image_index > image_number-1
			destroyed = true;
	}
}