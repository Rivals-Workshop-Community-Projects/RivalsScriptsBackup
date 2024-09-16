//Kirby variables
carol_handler_id=noone;
carol_has_kirby_ability=false;

//Character checks
teammate_is_lilac = false;
scary_lady = false;

if ("url" in self)
{
    switch (url)
    {
        case "2697174282"://Lilac
    	case "1870616155":
    	case "1897152603":
    	case "2972048421":
    		with (other_player_id)
    		{
    			if (get_player_team(player) == get_player_team(other.player) && voice == 1)
    			{
    	            other.teammate_is_lilac = true;
    			}
    		}
    	break;
    	case "2972347375": //Neera
            scary_lady = true;
    	break;
    }
}

//Rat compatibility
personaQuips[10] = "Yikes! A cat, I'd better run!"