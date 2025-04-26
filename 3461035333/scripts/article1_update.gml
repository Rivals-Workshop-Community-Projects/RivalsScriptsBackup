//Dashing state
if (state == -1)
{
    if (state_timer == 1)
    {
        if player_id.nspec_dir == "idle"
        {
            hsp += dash_speed * initial_dir;
        }
        else
        {
            var hsp_boost = lengthdir_x(dash_speed, player_id.nspec_dir);
            var vsp_boost = lengthdir_y(dash_speed, player_id.nspec_dir);
            if !place_meeting(x+(hsp_boost *4), y+(vsp_boost *4), asset_get("par_block")) and vsp_boost >= 0
            {
                ignores_walls = true;
            }
            else
            {
                ignores_walls = false;
            }
            hsp += hsp_boost;
            vsp += vsp_boost;
            /*
            var player_on_plat = false;
            with player_id 
            {
                if place_meeting(x, y+10, asset_get("par_jumpthrough"))
                {
                    player_on_plat = true;
                }
            }
            if player_on_plat vsp += vsp_boost else if !(player_id.free == 0 and vsp_boost > 0) vsp += vsp_boost;
            */
        }
    }
    if (state_timer == dash_duration)
    {
        hsp = 0;
        vsp = 0;
        state_timer = 0;
        state = 0;
    }
}

//Hitting state with no tp possible
if (state == 0)
{
    if (state_timer == 1)
    {
        image_index = 1;
    }
    hsp = 0;
    depth = player_id.depth-10;
    //Creates hitbox at given time
    if (state_timer == 8) and (hitbox_created == 0)
    {
        sound_play(asset_get("sfx_swipe_medium1"));
        hitbox = create_hitbox(AT_NSPECIAL, 1, x-20*(spr_dir), y-50);
        hitbox_created = 1;
    } 
    //Stops animation at given frame
    if (image_index == 9)
    {
        state0_anim_rate = 10000;
    }
    //Goes to state 1 at given time
    if (state_timer >= activation_time)
    {
        //sound_play(asset_get("sfx_bird_nspecial"));
        state_timer = 0;
        state = 1;
    }
}

//Tp is possible
if (state == 1)
{
    if free == 1
    {
        can_be_grounded = 0;
    }
    if (sprite_index != sprite_get("fes")) and (sprite_index != sprite_get("sage_fes")){
        sprite_index = player_id.sage_mode ? sprite_get("sage_clone_idle") : sprite_get("clone_idle");
    } else {
        fes_timer++;
    
        if (fes_timer == fes_time) {
            sprite_index = player_id.sage_mode ? sprite_get("sage_clone_idle") : sprite_get("clone_idle");
            fes_timer = 0;
        }
    }
    depth = player_id.depth + 10;
    lifetime--;
    
    // Prevent the clone from being in blastzones/too close to blastzones
    if (!player_id.playtest_active)
    {
        var sosisson = 110;
        if (x >= player_id.right_blastzone_x - sosisson)
        {
            x = player_id.right_blastzone_x - sosisson;
        }
        if (x <= player_id.left_blastzone_x + sosisson)
        {
            x = player_id.left_blastzone_x + sosisson
        }
        if (y <= player_id.top_blastzone_y + sosisson)
        {
            y = player_id.top_blastzone_y + sosisson;
        }
        if (y >= player_id.bottom_blastzone_y - sosisson)
        {
            y = player_id.bottom_blastzone_y - sosisson
        }   
    }
}

state_timer++;
//Animation speed and hitpause
if instance_exists(victim) and (victim.hitpause == true)
{
    image_index = 4;   
}
else
{
    switch(state)
    {
        case -1:
            if (state_timer mod stateMinus1_anim_rate == 0){
                ++image_index;
            }
            break;
        case 0: 
            if (state_timer mod state0_anim_rate == 0){
                ++image_index;
            }
            break;
        
        case 1:
            if (state_timer mod state1_anim_rate == 0){
                ++image_index;
            }
            break;
    }
}

//Life and death
if (lifetime <= 0) or 
((state == 0 or state == 2) and ((player_id.state == PS_HITSTUN) or (player_id.state == PS_HITSTUN_LAND)))
{
    die_trigger = 1;
    sound_play(asset_get("sfx_bird_upspecial"));
}
if (die_trigger == 1)
{
    instance_destroy();
}

