var mx = lengthdir_x(spd,dir);
var my = lengthdir_y(spd*horizontalBias,dir);
spd += spdAdd;

image_angle = -90 + point_direction(x,y,x+mx,y+my);

x += mx;
y += my;

if image_alpha != 1
{
	image_alpha+= alphaAdd;
}

//add size
if image_xscale < 2
{
	image_xscale += sizeAdd;
	image_yscale += sizeAdd;
}
if image_xscale > 2
{
	image_xscale = 2;
	image_yscale = 2;
}

parallax_x = 0-(0.20);
parallax_y = 0-(0.20);

if x < 0 || x > room_width || y < 0 || y > room_height
	instance_destroy();
	
