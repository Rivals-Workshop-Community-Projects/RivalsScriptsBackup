var sparkling1 = true;
var sparkling2 = false;
var sparkling3 = false;
var sparkling4 = false;
var sparkling5 = false;
var frame = 0;
var frame2 = 0;
var frame3 = 0;
var frame4 = 0;
var frame5 = 0;

//Sparkle effect
switch (results_timer)
{
	case 8:
	case 9:
	    frame = 1;
	break;
	case 10:
	case 11:
	case 12:
		frame = 2;
	    sparkling2 = true;
	break;
	case 13:
	case 14:
	case 15:
	    frame = 3;
		frame2 = 1;
	break;
	case 16:
	case 17:
	case 18:
	    frame = 4;
		frame2 = 2;
	    sparkling3 = true;
	break;
	case 19:
	case 20:
	case 21:
    	frame = 5;
		frame2 = 3;
		frame3 = 1;
	break;
	case 22:
	case 23:
	case 24:
    	frame = 6;
    	frame2 = 4;
		frame3 = 2;
	    sparkling4 = true;
	break;
	case 25:
	case 26:
	case 27:
  		sparkling1 = false;
    	frame2 = 5;
	    frame3 = 3;
		frame4 = 1;
	break;
	case 28:
	case 29:
	case 30:
		sparkling1 = false;
		frame2 = 6;
		frame3 = 4;
		frame4 = 2;
		sparkling5 = true;
	break;
	case 31:
	case 32:
	case 33:
	  	sparkling1 = false;
	   	sparkling2 = false;
		frame3 = 5;
		frame4 = 3;
	    frame5 = 1;
	break;
	case 34:
	case 35:
	case 36:
	  	sparkling1 = false;
	   	sparkling2 = false;
	    frame3 = 6;
		frame4 = 4;
	    frame5 = 2;
	break;
	case 37:
	case 38:
	case 39:
  		sparkling1 = false;
  		sparkling2 = false;
    	sparkling3 = false;
		frame4 = 5;
	    frame5 = 3;
	break;
	case 40:
	case 41:
	case 42:
		sparkling1 = false;
		sparkling2 = false;
		sparkling3 = false;
		frame4 = 6;
		frame5 = 4;
	break;
	case 43:
	case 44:
	case 45:
		sparkling1 = false;
		sparkling2 = false;
		sparkling3 = false;
		sparkling4 = false;
	    frame5 = 5;
	break;
	case 46:
	case 47:
	case 48:
		sparkling1 = false;
		sparkling2 = false;
		sparkling3 = false;
		sparkling4 = false;
	    frame5 = 6;		
	break;
	default:
	break;
}

if (results_timer >=49)
{
	sparkling1 = false;
   	sparkling2 = false;
    sparkling3 = false;
    sparkling4 = false;
    sparkling5 = false;
}

draw_sprite_ext(sprite_get("csssparkle"), frame, x + 349, y - 140, 4, 4, 0, c_white, sparkling1);
draw_sprite_ext(sprite_get("csssparkle"), frame2, x + 34, y - 129, 4, 4, 0, c_white, sparkling2); 
draw_sprite_ext(sprite_get("csssparkle"), frame3, x + 474, y - 143, 4, 4, 0, c_white, sparkling3);
draw_sprite_ext(sprite_get("csssparkle"), frame3, x + 200, y - 126, 4, 4, 0, c_white, sparkling4);
draw_sprite_ext(sprite_get("csssparkle"), frame3, x + 550, y - 109, 4, 4, 0, c_white, sparkling5);