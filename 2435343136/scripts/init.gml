//Animation vars
walk_anim_speed = 0.2;
idle_anim_speed = 1/6.5;
crouch_anim_speed = 0.1;
dash_anim_speed = 0.2;
pratfall_anim_speed = .25;
pratfall_anim_loops = 1;
wall_frames = 2;
//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;
//
field_anim_speed = 0.2;
field_bolt_anim_speed = 0.2;
field_rim_anim_speed = 0.2;
//

intro1 = hit_fx_create( sprite_get( "ustrong_proj" ), 20);	
intro2 = hit_fx_create( sprite_get( "dstrong_proj" ), 10);	
intro3 = hit_fx_create( sprite_get( "ustrong_proj" ), 3);
intro4 = hit_fx_create( sprite_get( "dspecial_small_sword" ), 14);


	shsp = 0
    svsp = 0
    
    sshsp = 0
    ssvsp = 0
    
    oldx = 0
    
    fspeced = 0
    timepat = 0
    timehit = 0
    timetimer = 0