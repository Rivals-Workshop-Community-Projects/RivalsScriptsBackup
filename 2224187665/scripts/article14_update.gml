//
vx+=hsp;
vy+=vsp;
image_index=1;
if (state==0)
{
	if(hsp<2){hsp+=0.1;}
	if(vsp>-1){vsp-=0.03;}
	if(vx>targx){state=1;}
	if (hsp>-1&&hsp<1){image_index=0;}
}
else if (state==1)
{
	if(hsp>-2){hsp-=0.1;}
	if(vsp<1){vsp+=0.03;}
	if(vx<targx-40){state=2;}
}
else if (state==2)
{
	if(hsp<2){hsp+=0.1;}
	if(vsp>-1){vsp-=0.03;}
	if(vx>targx){state=3;}
}
else if (state==3)
{
	if(hsp>-4){hsp-=0.15;}
	if(vsp<2){vsp+=0.05;}
	if(vx<startx&&vy>starty){state=0;}
}
if(hsp>0){spr_dir=1;}else{spr_dir=-1;}