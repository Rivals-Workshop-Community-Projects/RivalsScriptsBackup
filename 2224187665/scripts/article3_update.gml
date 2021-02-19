//

fx+=hsp;
image_index+=0.05;
if (fx<0)
{
	hsp=1;
	image_xscale=2;
}
else if (fx>170)
{
	hsp=-1;
	image_xscale=-2;
}