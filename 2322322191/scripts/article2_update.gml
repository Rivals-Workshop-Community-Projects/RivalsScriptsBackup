/*

 What are you doing?
    Looking for secrets?
    Don't put your nose where it doesn't belong.
    Or you might learn something you DON'T like...
    Hee hee hee.

*/
if player_id.fuckingdie
    {
        if state != 0
        {
            state_timer = 0;
            state = 7;
            player_id.fuckingdie = false;
        }
    }
    
if playsound = true
{
    state = 5;
    state_timer = 0;
    spawn_hit_fx(x,y,301);
    sound_play(sound_get("snd_ehurt1"));
    sound_play(asset_get("sfx_blow_medium2"))
    playsound = false;
}

with (asset_get("pHitBox"))  
{
    
    if place_meeting(x,y,other) && player_id != other.player_id
    {
        if (other.state = 1 || other.state = 3 || other.state = 4)
        {
            other.playsound=true;
            other.hitpause = true;
            other.hitstop = 5; 
            with player_id 
            {
                old_hsp = hsp;
                hitstop = 5;
                old_vsp = vsp;                      
                hitpause = true;
                has_hit = true;
            }   
        }
    }
}

if (state == 0)
{ 
    image_index = 0;
    image_alpha = 0;
    rot_speed-=2*spr_dir
    if hitbox_ex == false
    {
        if alreadyhit = 0
        {
            hitid = create_hitbox( AT_DATTACK, 2, x, y);
            hitbox_ex = true;
        }
    }
    if instance_exists(hitid)//checks if the ball exists so it can follow it
    {
        hitid.x = x
        hitid.y = y
    }
    if state_timer == 1
    {
       vsp+=-4; 
    }
    hsp = 8*spr_dir
    if hitpause == false
    {
        
    }
    vsp+=grav;
    if !free
    {
        image_angle = 0;
        hitbox_ex = false;
        state_timer = 0;
        state = 1;
        hsp = 0;
        vsp = 0;
        if instance_exists(hitid)
        {
            hitid.length = 1;
        }
    }
    if (x < -36 || x > room_width +36) 
    || (y > room_height +36)
    {
        if instance_exists(hitid)
        {
            hitid.length = 1;
        }
        state_timer = 0;
        state = 6;
        sound_play(sound_get("snd_fall2")); 
    }
}



//State 1: Idle

if (state == 1)
{
    image_alpha = 1;
    hsp = 0;
    if image_index == 0
    {
        grav = 3;
        
        vsp+=grav;
        
        image_index = 1;
    }
    else
    {
        vsp = 0;
    }
    if free && vsp =  0
    {
        sprite_index = sprite_get("flowertheflowey"); 
        state = 0;
        state_timer = 1;
        grav = 0.4;
    }
    image_angle = 0;
    if image_index = 23
    {
        state = 2;
        state_timer = 0;
    }
    if image_index = 13
    {
        if player_id.x < x
        {
            spr_dir = -1;
        }
        else 
        {
            spr_dir = 1;
        }
    }
    
}

if (state == 2)
{
    if image_index == 2
    {
        state = 3;
        state_timer = 0;
    }
}

if (state == 3)
{
    if bulletnumber == 2
    {
        state = 7;
        state_timer = 0;
    }
    
    mask_index = sprite_get("floweymask2")

    bitch2electriboogaloo = get_closest_enemy() 
    if bitch2electriboogaloo.x < x
    {
        spr_dir = -1;
    }
    else 
    {
        spr_dir = 1;
    }

    if state_timer == 60
    {
        state = 4;
        state_timer = 0;
    }
}

if (state == 4) //attack startup
{

    if state_timer == 0
    {
        bulletnumber +=1;
        sound_play(sound_get("snd_heal_c"))
    }
    if image_index == 8
    {
        if player_id.fuckingdie
        {
            state_timer = 0;
            state = 7;
            player_id.fuckingdie = false;
        
        }
        else
        {
            state = 3;
            state_timer = -120;
        }
    }
}

if (state == 5)
{

    if image_index == 11
    {
        player_id.flowy_active = false;
        player_id.fuckingdie = false;
        instance_destroy();
        exit;
    }
}

if (state == 7)
{
    if image_index == 11
    {
        player_id.flowy_active = false;
        player_id.fuckingdie = false;
        instance_destroy();
        exit;
    }
}
//State 8: Dying

if (state == 6){
    if (state_timer == die_time){
        player_id.flowy_active = false;
        player_id.fuckingdie = false;
        instance_destroy();
        exit;
    }
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("flowertheflowey");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("flowey");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("flowey_toidle");
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("flowey_idle");
        animation_type = 2;
        break;
    case 4: //Since all of these guys are just kinda
        new_sprite = sprite_get("flowey_ready");
        animation_type = 2;
        break;
    case 5: //in a row, without any "break;" lines to
        new_sprite = sprite_get("flowey_gothit");
        animation_type = 2;
        break;
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
        new_sprite = sprite_get("flowey_gothit");
        animation_type = 3;
        break;
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
       

         break;
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0)
        {
             image_index++;
        }
       
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod idle_anim_rate == 0)
        {
            image_index++;
        }
        break;
    case 3: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod idle_anim_rate == 0)
        {
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite) && state != 7{
    sprite_index = new_sprite;
    image_index = 0;
}
else if (sprite_index != new_sprite) && state == 7
{
    sprite_index = new_sprite;
    image_index = 6;    
}



//Make time progress
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