if (!visible)
{
	appeartimer-=1;
	if(appeartimer==0)
	{
		image_index=0;
		visible=true;
	}
}
else
{
	image_index+=0.15;
	if (image_index>2.8)
	{
		visible=false;
		appeartimer=300;
	}
}