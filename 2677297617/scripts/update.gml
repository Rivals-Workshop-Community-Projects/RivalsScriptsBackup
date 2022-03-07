//asd
if (get_gameplay_time() > 3) && is_aether_stage()
	handle_camera();
	

	
with (oPlayer) {
    if (get_gameplay_time() == 2) ds_list_add(other.view_follow, id);
}

if phase_time >= 1
{
    phase_time--;
}
else
{
    switch (phase)
    {
        case 0:
        {
            phase = 1;
            phase_time = 3600;
        }break;
        
        case 1:
        {
            phase = 2;
            phase_time = 7240;
        }break;
        
        case 2:
        {
            phase = 3;
            phase_time = 600;
        }break;
        
        case 3:
        {
            phase = 4;
            phase_time = 10;
        }break;
        
        case 4:
        {
            if (is_laststock())
            {
            	phase = 5;
            	phase_time = 2;
            }
        }break;
    }
}


switch (phase)
{
	case 0:
	{
		switch (phase_time)
		{
			case 750:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = 2;
					}
				}
			}break;
			
			case 500:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp*= 0.9;
					}
				}
			}break;
			
			case 490:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp*= 0.8;
					}
				}
			}break;
			
			case 460:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp*= 0.7;
					}
				}
			}break;
			
			case 445:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = 0;
					}
				}
			}break;
			
			case 440:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = -0.5;
					}
				}
			}break;
			
			case 432:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = -0.2;
					}
				}
			}break;
			
			case 426:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = 0;
					}
				}
			}break;
			
			case 300:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						headLower = 18;
					}
				}
			}break;
			
			case 296:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						noddingFrame = 1;
					}
				}
			}break;
			
			case 290:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						headLower = -6;
					}
				}
			}break;
			
			case 200:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						headLower = -18;
					}
				}
			}break;
			
			case 196:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						noddingFrame = 0;
					}
				}
			}break;
			
			case 190:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						headLower = 6;
					}
				}
			}break;
			
			case 130:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						vsp = 0.5;
					}
				}
			}break;
			
			case 120:
			{
				with ( obj_stage_article ) 
				{
					if ( get_article_script( id ) == 4 ) 
					{
						introFlyingAway = true;
					}
				}
			}break;
		}
	}break;
	
    case 1:
    {
        if groundLeave >= 1
        {
            groundLeave--;
            switch (groundLeave)
            {
                case 1769:
                {
                    with ( obj_stage_article ) 
                    {
                        if ( get_article_script( id ) == 2 ) 
                        {
                            goingdown = 0.5;
                        }
                    }
                    
                    set_bg_data(6, BG_LAYER_AUTOSCROLL_Y, 0.6);
                    set_bg_data(5, BG_LAYER_AUTOSCROLL_Y, 0.5);
                    set_bg_data(4, BG_LAYER_AUTOSCROLL_Y, 0.5);
                }break;
                
                case 1200:
                {
                    with ( obj_stage_article ) 
                    {
                        if ( get_article_script( id ) == 2 ) 
                        {
                            goingdown = 1;
                        }
                    }
                    
                    set_bg_data(6, BG_LAYER_AUTOSCROLL_Y, 1.1);
                    set_bg_data(5, BG_LAYER_AUTOSCROLL_Y, 1);
                    set_bg_data(4, BG_LAYER_AUTOSCROLL_Y, 1);
                }break;
                
                case 400:
                {
                	music_fade(0, 0.005);
                }break;
                
                case 200:
                {
                	var test_random = random_func(current_second%4, 4, true) //this should give different results each time...?
                	print_debug(string(test_random));
					switch(test_random)
					{
					case 0: music_play_file("virtual_space_manipulator"); break;
					case 1: music_play_file( "vs_star_dream" ); break;
					case 2: music_play_file("vagrant_counting_song"); break;
					case 3: music_play_file( "vs_star_dream" );  break;
					}
                }break;
            }
        }
        else
        {
            set_bg_data(5, BG_LAYER_AUTOSCROLL_Y, 0);
            set_bg_data(4, BG_LAYER_AUTOSCROLL_Y, 0);
            set_bg_data(6, BG_LAYER_AUTOSCROLL_Y, 0);
        }
    }break;
    
    case 2:
    {
        set_bg_data(5, BG_LAYER_Y, 1100);
        set_bg_data(4, BG_LAYER_Y, 1100);
        set_bg_data(6, BG_LAYER_Y, 1100);
        
        with ( obj_stage_article ) 
        {
            if ( get_article_script( id ) == 2 ) 
            {
                notbg_y = 908;
            }
        }
        
        if popstarDown >= 1
        {
            popstarDown--;
            set_bg_data(3, BG_LAYER_AUTOSCROLL_Y, 0.05);
        }
        else
        {
            set_bg_data(3, BG_LAYER_AUTOSCROLL_Y, 0);
        }
        
        if otherPlanets >= 1
        {
            otherPlanets--;
            set_bg_data(2, BG_LAYER_AUTOSCROLL_Y, 0.2);
        }
        else
        {
            set_bg_data(2, BG_LAYER_AUTOSCROLL_Y, 0);
        }
    }break;
    
    case 3:
    {
    	hideStuff();
    }
    
    case 4:
    {
        hideStuff()
        
        with ( obj_stage_article ) 
        {
        	if ( get_article_script( id ) == 1 ) 
            {
                phase = 4;
            }
        	
            if ( get_article_script( id ) == 2 ) 
            {
                notbg_y = 908;
            }
            
            if ( get_article_script( id ) == 4 ) 
            {
                y = -200;
            }
        }
    }break;
    
    case 5:
    {
        hideStuff()
        
        if phase_time == 1
        {
        	music_play_file( "soul_0_keepsake" )
        }
        
        with ( obj_stage_article ) 
        {
        	if ( get_article_script( id ) == 1 ) 
            {
                phase = 5;
            }
        	
            if ( get_article_script( id ) == 2 ) 
            {
                notbg_y = 908;
            }
            
            if ( get_article_script( id ) == 4 ) 
            {
                y = -200;
            }
        }
    }break;
}

//star spawn timer
if starTimer < starTimerDef
	starTimer++;
else
{
	starTimer = 0;
	
	createStar(starX,starY);
}

#define handle_camera

var xview_min = view_get_wview()/2;
var yview_min = view_get_hview()/2;
var xview_max = room_width-view_get_wview()/2;
var yview_max = room_height-view_get_hview()/2;
var xview = view_get_xview()+view_get_wview()/2;
var yview = view_get_yview()+view_get_hview()/2;
var new_xview = cam_x;
var new_yview = cam_y;

if (ds_list_size(view_follow) > 0 && !instance_exists(view_focus)) {
    new_xview = xview;
    new_yview = yview;
    cam_x = 0;
    cam_y = 0;
    var actual = 0;
    for (var i = 0; i < ds_list_size(view_follow); i++) {
        if (!instance_exists(view_follow[| i])) {
            ds_list_delete(view_follow, i);
        }
    }
    for (var i = 0; i < ds_list_size(view_follow); i++) {
        if (!instance_exists(view_follow[| i]))
            continue;
        cam_x += view_follow[| i].x;
        cam_y += view_follow[| i].y;
    }
    if (ds_list_size(view_follow) > 1) {
        cam_x /= ds_list_size(view_follow);
        cam_y /= ds_list_size(view_follow);
    }
}
if (instance_exists(view_focus)) {
    cam_x = view_focus.x;
    cam_y = view_focus.y;
}

new_xview = clamp(lerp(new_xview, cam_x, 0.3),xview_min,xview_max);
new_yview = clamp(lerp(new_yview, cam_y, 0.15),yview_min,yview_max);

set_view_position(floor(new_xview),floor(new_yview));

#define hideStuff()

		set_bg_data(5, BG_LAYER_Y, 1100);
        set_bg_data(4, BG_LAYER_Y, 1100);
        set_bg_data(6, BG_LAYER_Y, 1100);
        set_bg_data(3, BG_LAYER_Y, 1100);
        set_bg_data(2, BG_LAYER_Y, 1100);

#define createStar(mx,my)
{
	instance_create(mx,my,"obj_stage_article",3);
}
