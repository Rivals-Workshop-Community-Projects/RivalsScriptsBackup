if times_parried > 1
{
    vsp*=-1;
    times_parried = 0;
}
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	state = 5;
	state_timer = 0;
}


if object_type == 1 // this means ur a fuckin bullet 
{
    switch(player_id.player)
    {
        case 1: sprite_index = sprite_get("friendliness_pellet");break;
        case 2: sprite_index = sprite_get("friendliness_pellep2t");break;
        case 3: sprite_index = sprite_get("friendliness_pelletp3");break;
        case 4: sprite_index = sprite_get("friendliness_pelletp4");break;
    }
    mask_index = sprite_get("friendliness_pellet");  
    image_speed = 0.6;
    if (state == 0)
    {
        art_time++
        hsp = ease_quartOut( 1, 3, art_time, 20)*spr_dir; 
        vsp = ease_quartOut( 4, -3, art_time, 40);
        
        //Go to idle after 40 frames
        if (state_timer >= 40)
        {
            state = 1;
            state_timer = 0;
            hsp = 0;
            vsp = 0.5
        }
        if player_id.fuckingdie == true
        {
        
            state_timer = 0;
            state = 5;
        
        }
    }
    
    if (state == 1)
    {
        switch (vsp)
        {
            case 0.5: timer_idle++;break;
            case -0.5: timer_idle--;break;
        }
        switch (timer_idle)
        {
            case 10: vsp = -0.5;break;
            case 0: vsp = 0.5;break;
        }

        bitch = get_closest_enemy(); // Fuck game makre studi o2 
        if state_timer == 30
            {
                state = 2;
                state_timer = 0;
                hsp = lengthdir_x(11, point_direction(x,y+20,bitch.x,bitch.y));
                vsp = lengthdir_y(11, point_direction(x,y+20,bitch.x,bitch.y));
            }
        if player_id.fuckingdie == true
        {
        
            state_timer = 0;
            state = 5;
        
        }
    }

    
    if (state == 2)
    {

        if hitbox_ex == false
        {
            hitid = create_hitbox( AT_DATTACK, 3, x, y);
            hitbox_ex = true;
        }
        if instance_exists(hitid)
        {
            hitid.x = x + 10*spr_dir;
            hitid.y = y    
        }


        if (x < -36 || x > room_width +36) 
        || (y > room_height +36)
        {
            if instance_exists(hitid)
            {
                instance_destroy(hitid);
            }
            state_timer = 0;
            state = 5;
    
        }
        if player_id.fuckingdie == true
        {
            if instance_exists(hitid)
            {
                instance_destroy(hitid);
            }
            state_timer = 0;
            state = 5;
        
        }

    }
    if (state == 5)
    {

            spawn_hit_fx(floor(x),floor(y),301);
            instance_destroy();
            exit;
    }
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
       
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
           image_index = 0;
        }
        break;
    case 3: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
           image_index = 0;
        }
        break;
        
        
    case 4: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
           image_index = 0;
        }
        break;
}

state_timer++;

#define get_closest_enemy()
{
    if (instance_number(oPlayer)) > 1 
    {
        var cur_dist = 9999;
        var cur_plr = noone;
        with (oPlayer) if id != other.player_id 
        {
    
            if (cur_dist > point_distance(x,y,other.x,other.y)) 
            {
                cur_dist = point_distance(x,y,other.x,other.y);
                cur_plr = id
            }
    
        }
        return cur_plr;
    } else return player_id;
}