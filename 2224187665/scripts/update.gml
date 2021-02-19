//

if (playdr)
{
	music_play_file( "drmario" );
	playdr=false;
	drmario=true;
}



if (pulleybreak>0)
{
	pulleybreak-=1;
}

	if (pulleyhit==0)
	{
				if (pulleyhome<-1)
				{
					pulleyvsp=1;
				}
				else if (pulleyhome>1)
				{
					pulleyvsp=-1;
				}
				else
				{
					pulleyvsp=-pulleyhome;
				}
				
		
	}
	pulleyhit=0;

	pulleyhome+=pulleyvsp;





if (pulleybreakrecover>0)
{
	if (pulleyhome>0){pulleyhome=pulleyhomefall-5;}else{pulleyhome=pulleyhomefall+5;}
	pulleybreakrecover-=1;
	with (obj_stage_article_platform)
	{
		if ("realvsp" in self)
		{
			y=floor(py);
			falling=false;
			realvsp=prevsp;
			fallvsp=0;
			vsp=0;
		}
	}
}


gtime=get_game_timer();
if (!drmario && fastmusic==0 && (is_laststock()||gtime < 31 * 60) )
{
	fastmusic=1;
	music_play_file( "fast" );
	
}