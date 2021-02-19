//

	

if (obj_stage_main.pulleybreak>0&&falling==false)
{
	falling=true;
	fallvsp=0;
	//py-=prevsp;
	falltimer=200;
	realvsp=0;
}
else if (falltimer>0)
{
	falltimer-=1;
	if (falltimer==0)
	{
		
		y=py;
		falling=false;
		obj_stage_main.pulleybreakrecover=4;
		fallvsp=0;
		realvsp=0;
		
	}
}


vsp=0;
var vs=0;
if (realvsp>=1||realvsp<=-1)
{
	vsp=floor(realvsp);
	realvsp-=floor(realvsp);
	prevsp=realvsp;
}
var got_hit=0;




var pbreak=0;


if (falling==false)
{
	obj_stage_main.pulleycount+=1;
	py=y;
	realvsp+=obj_stage_main.pulleyvspb*type;
	obj_stage_main.pulleycount+=1;

	with (asset_get("oPlayer")){
		if (place_meeting(x,y+2,other)){
				got_hit = 1;
				if (free==false&&y==other.y)
				{
					obj_stage_main.pulleyvsp+=(3-knockback_adj)*other.type;
					//other.vsp=1;
					obj_stage_main.pulleyhit+=1;
					if (other.y>other.starty+150)
					{
						obj_stage_main.pulleybreak=4;
						obj_stage_main.pulleybreakrecover=0;
						obj_stage_main.pulleyhomefall=obj_stage_main.pulleyhome;
						other.fallvsp=0;
						other.prevsp=other.realvsp;
						other.falling=true;
						other.falltimer=200;
						pbreak=1;
					}
				}
		}
	}
}
else
{
	fallvsp+=0.2;
	if (fallvsp>4)
	{
		fallvsp=6;
	}
	realvsp+=fallvsp;
}
