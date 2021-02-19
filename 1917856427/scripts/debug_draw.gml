//debug-draw

//draw_debug_text(x,y,"window: " + string(window));


/*if taunt_pressed
{
   {
    switch (dedraw)
    {
        
    case false:
    dedraw = true
    MUS_NOTE += 8;
    break;
    
    case true:
    dedraw = false
    break;
    
   }
  }
}

if dedraw = true
{

draw_debug_text(x+60,y,"trigger: " + string(trigger));
draw_debug_text(x+60,y+15,"HITD: " + string(HITD));
draw_debug_text(x+60,y+30,"GAUGE_NAME_CURRENT: " + string(GAUGE_NAME_CURRENT));
draw_debug_text(x+60,y+45,"EXTRA_TIME: " + string(EXTRA_TIME));
draw_debug_text(x+60,y+60,"MUS_NOTE: " + string(MUS_NOTE));    
draw_debug_text(x+60,y+75,"getcharactertheme: " + string(getcharactertheme));    
draw_debug_text(x+60,y+90,"multihitpro: " + string(multihitpro));    
}
  
