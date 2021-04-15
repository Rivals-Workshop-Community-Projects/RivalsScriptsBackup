//temp_x, temp_y are the anchors for the top left coordinates for the hud

var coinx = -4;//higher = more far right
var coiny = -20;//higher = more far down

var timerx = 154;//higher = more far right
var timery = -20;//higher = more far down

var cointxtx = 28;
var cointxty = -14;

var timertxtx = 180;
var timertxty = -14;

var panel4x = 122;
var panel3x = 150;
var panel2x = 178;
var panel1x = 206;
var panely = -14;
    
draw_sprite(sprite_get("coincounter"), 0, temp_x+coinx, temp_y+coiny);

//coincounter
if ("prev_totalcoins" in self) && ("totalcoins" in self)
{
    var totalcoins_changed = (prev_totalcoins != totalcoins);
    prev_totalcoins = totalcoins;


if (totalcoins_changed)
{ 
    coincounterbump = 4;
}

if (coincounterbump >= 1)
{
    switch (coincounterbump)
    {
        case 4:
        {
            cointxty += -4;
        }break;
        
        case 3:
        {
            cointxty += -4;
        }break;
        
        case 2:
        {
            cointxty += -2;
        }break;
        
        case 1:
        {
            cointxty += -2;
        }break;
    }
    
    coincounterbump--;
}

if (paneltimerbump >= 1)
{
    switch (paneltimerbump)
    {
        case 4:
        {
            timery += -4;
            timertxty += -4;
        }break;
        
        case 3:
        {
            timery += -4;
            timertxty += -4;
        }break;
        
        case 2:
        {
            timery += -2;
            timertxty += -2;
        }break;
        
        case 1:
        {
            timery += -2;
            timertxty += -2;
        }break;
    }
    
    paneltimerbump--;
}

draw_debug_text(temp_x+cointxtx, temp_y+cointxty, string(totalcoins));

if ("paneltimercountdown" in self) 
{
    if paneltimercountdown == true
    {
        draw_sprite(sprite_get("timericon"), 0, temp_x+timerx, temp_y+timery);
        draw_debug_text(temp_x+timertxtx, temp_y+timertxty, string(paneltimer));
    }
}

if ("paneldecided" in self) && ("panel1type" in self) && ("panel2type" in self) && ("panel3type" in self) && ("panelstate" in self)
{
    /*if panelstate == 1
    {
        draw_debug_text(temp_x-2, temp_y-34, "Magic Circle On");
    }*/
    
    if paneldecided == 0
    {
        switch (panel1type)
        {
            case 3:
            {
                draw_sprite(sprite_get("panelicons"), 3, temp_x+panel1x, temp_y+panely);
            }break;
            
            case 4:
            {
                draw_sprite(sprite_get("panelicons"), 0, temp_x+panel1x, temp_y+panely);
            }break;
            
            case 5:
            {
                draw_sprite(sprite_get("panelicons"), 2, temp_x+panel1x, temp_y+panely);
            }break;
            
            case 6:
            {
                draw_sprite(sprite_get("panelicons"), 1, temp_x+panel1x, temp_y+panely);
            }break;
            
            case 7:
            {
                draw_sprite(sprite_get("panelicons"), 4, temp_x+panel1x, temp_y+panely);
            }break;
            
            case 8:
            {
                draw_sprite(sprite_get("panelicons"), 12, temp_x+panel1x, temp_y+panely);
            }break;
        }
        
        switch (panel2type)
        {
            case 3:
            {
                draw_sprite(sprite_get("panelicons"), 3, temp_x+panel2x, temp_y+panely);
            }break;
            
            case 4:
            {
                draw_sprite(sprite_get("panelicons"), 0, temp_x+panel2x, temp_y+panely);
            }break;
            
            case 5:
            {
                draw_sprite(sprite_get("panelicons"), 2, temp_x+panel2x, temp_y+panely);
            }break;
            
            case 6:
            {
                draw_sprite(sprite_get("panelicons"), 1, temp_x+panel2x, temp_y+panely);
            }break;
            
            case 7:
            {
                draw_sprite(sprite_get("panelicons"), 4, temp_x+panel2x, temp_y+panely);
            }break;
            
            case 8:
            {
                draw_sprite(sprite_get("panelicons"), 12, temp_x+panel2x, temp_y+panely);
            }break;
        }
        
        switch (panel3type)
        {
            case 3:
            {
                draw_sprite(sprite_get("panelicons"), 3, temp_x+panel3x, temp_y+panely);
            }break;
            
            case 4:
            {
                draw_sprite(sprite_get("panelicons"), 0, temp_x+panel3x, temp_y+panely);
            }break;
            
            case 5:
            {
                draw_sprite(sprite_get("panelicons"), 2, temp_x+panel3x, temp_y+panely);
            }break;
            
            case 6:
            {
                draw_sprite(sprite_get("panelicons"), 1, temp_x+panel3x, temp_y+panely);
            }break;
            
            case 7:
            {
                draw_sprite(sprite_get("panelicons"), 4, temp_x+panel3x, temp_y+panely);
            }break;
            
            case 8:
            {
                draw_sprite(sprite_get("panelicons"), 12, temp_x+panel3x, temp_y+panely);
            }break;
        }
        
        switch (panel4type)
        {
            case 9:
            {
                draw_sprite(sprite_get("panelicons"), 11, temp_x+panel4x, temp_y+panely);
            }break;
            
            case 10:
            {
                draw_sprite(sprite_get("panelicons"), 10, temp_x+panel4x, temp_y+panely);
            }break;
            
            case 11:
            {
                draw_sprite(sprite_get("panelicons"), 9, temp_x+panel4x, temp_y+panely);
            }break;
            
            case 12:
            {
                draw_sprite(sprite_get("panelicons"), 8, temp_x+panel4x, temp_y+panely);
            }break;
            
            case 13:
            {
                draw_sprite(sprite_get("panelicons"), 7, temp_x+panel4x, temp_y+panely);
            }break;
            
            case 14:
            {
                draw_sprite(sprite_get("panelicons"), 6, temp_x+panel4x, temp_y+panely);
            }break;
        }
    }
}


}

/*if ("doublepowerboost" in self) && ("exjumps" in self)
{
    if doublepowerboost == true
    {
        draw_sprite(sprite_get("panelicons"), 4, temp_x+8, temp_y+-34);
        draw_debug_text(temp_x+24, temp_y+-38, "Damage");
        if exjumps >= 1
        {
            draw_sprite(sprite_get("panelicons"), 13, temp_x+8, temp_y+-34);
            draw_debug_text(temp_x+24, temp_y+-38, string(exjumps));
        }
    }
    else
    if exjumps >= 1
    {
        draw_sprite(sprite_get("panelicons"), 13, temp_x+8, temp_y+-34);
        draw_debug_text(temp_x+24, temp_y+-38, string(exjumps));
        if exjumps == 1
        {
            draw_debug_text(temp_x+38, temp_y+-38, "Extra Jump");
        }
        else
        {
            draw_debug_text(temp_x+38, temp_y+-38, "Extra Jump");
        }
    }
}*/