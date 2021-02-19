//parry - called when you parry any hitbox
HITD= 1
GAUGE_NAME_CURRENT = 0
if MUS_NOTE != 8
{

switch(MUS_NOTE)

	{
		 	case 0:
		 	 sound_play( sound_get("C"));
		 	  break;
		 	case 1:
		 	 sound_play( sound_get("D"));
		 	  break;
		 	case 2:
		 	 sound_play( sound_get("E"));
		 	  break;
		 	case 3:
		 	 sound_play( sound_get("F"));
		 	  break;
		    case 4:
		 	 sound_play( sound_get("G"));
		 	  break;
		 	case 5:
		 	 sound_play( sound_get("3"));
		 	  break;
		 	case 6:
		 	 sound_play( sound_get("2"));
		 	  break;
		    case 7:
		 	 sound_play( sound_get("1"));
		 	  break;
	}   
MUS_NOTE += 1
}

if MUS_NOTE = 8
{
sound_play( sound_get("1"));
}