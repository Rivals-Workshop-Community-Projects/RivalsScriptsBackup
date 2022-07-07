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
if results_timer >= 8 and results_timer < 10{
    frame = 1;
}
if results_timer >= 10 and results_timer < 13{
    frame = 2;
    sparkling2 = true;
}
if results_timer >= 13 and results_timer < 16{
    frame = 3;
     frame2 = 1;
}
if results_timer >= 16 and results_timer < 19{
    frame = 4;
    frame2 = 2;
    sparkling3 = true;
}
if results_timer >= 19 and results_timer < 22{
    frame = 5;
    frame2 = 3;
    frame3 = 1;
}
if results_timer >= 22 and results_timer < 25{
    frame = 6;
    frame2 = 4;
    frame3 = 2;
    sparkling4 = true;
}
if (results_timer >=25 and results_timer < 29)
{
  	sparkling1 = false;
    frame2 = 5;
    frame3 = 3;
    frame4 = 1;
}
if (results_timer >=29 and results_timer <31)
{
  	sparkling1 = false;
   	frame2 = 6;
    frame3 = 4;
    frame4 = 2;
    sparkling5 = true;
}
if (results_timer >=31 and results_timer <34)
{
  	sparkling1 = false;
   	sparkling2 = false;
    frame3 = 5;
    frame4 = 3;
    frame5 = 1;
}
if (results_timer >=34 and results_timer <37)
{
  	sparkling1 = false;
   	sparkling2 = false;
    frame3 = 6;
    frame4 = 4;
    frame5 = 2;
}
if (results_timer >=37 and results_timer <36)
{
  	sparkling1 = false;
  	sparkling2 = false;
    sparkling3 = false;
    frame4 = 5;
    frame5 = 3;
}
if (results_timer >=36 and results_timer <43)
{
  	sparkling1 = false;
   	sparkling2 = false;
    sparkling3 = false;
	frame4 = 6;
    frame5 = 4;
}
if (results_timer >=43 and results_timer <46)
{
	sparkling1 = false;
   	sparkling2 = false;
    sparkling3 = false;
    sparkling4 = false;
    frame5 = 5;
}
if (results_timer >=46 and results_timer <49)
{
	sparkling1 = false;
   	sparkling2 = false;
    sparkling3 = false;
    sparkling4 = false;
    frame5 = 6;		
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