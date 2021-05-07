// a3 update

//#region Sprite and mask
sprite_index = sprite_get("dspecial_proj_1");
despawn_timer--;
if(despawn_timer <= 30) clock_timer++;
if(despawn_timer == 30) sound_play(sound_get("monarch_countdown"),false,0,1.5);

afterimage_array[0] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir};
//#endregion


//#region movement


// Calculate trajectory angle
var angle = arctan(vsp/abs(hsp));
var moveangle = radtodeg(angle)+270;
var dist = max(15,10 + (abs(hsp) + abs(vsp)));

var inWall = collision_circle(x+cos(angle)*dist*sign(hsp),y+sin(angle)*dist,1,asset_get("par_block"),false,true);
var inPlat = collision_circle(x+cos(angle)*dist*.5*sign(hsp),y+sin(angle)*dist,1,asset_get("par_jumpthrough"),false,true);

if(inWall == collision_circle(x+cos(angle)*dist*sign(hsp),y+sin(angle)*dist,1,asset_get("pillar_obj"),false,true) ) inWall = noone;

var inSomething = inWall == noone && inPlat == noone;

    
platbelow = collision_circle(x,y+40,1,asset_get("par_jumpthrough"),true,true) != noone;

if(is_real(angle) == false && !grounded) prev_angle = angle;

if(vsp !=0) vsp_prev = vsp;
if(hsp !=0) hsp_prev = hsp;

//#region afterimages

arrayindex++;
afterimage_array[arrayindex] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir};

array_cleared = false;
black_screen = player_id.black_screen;


//#endregion



//if(despawn_timer <= 30 && !grounded) ignores_walls = false;


// If not hit the ground
if(despawn_timer <= 33 && !inSomething && !grounded && stuck_player == noone && (vsp >=0 || inWall)){
    if(!((inPlat && !platbelow)) || inWall)
        {
        
        stuck_platform = inPlat;
    
        
        // Sink into the ground a bit
        if(!grounded)
        {
            grounded = true;
            ignores_walls = true;
            
            shake_timer = 8;
            
            free = false;
        }
    
        // Stop
        hsp = 0;
        vsp = 0;
        
        if(platbelow)
        {
            ignores_walls = false;
            y-=20+vsp_prev;
            vsp = 20;
        }
        
        
        // SFX
        with(player_id) sound_play(sound_get("monarch_darthit"));
        
        // if(inWall && !platbelow)
        // {
        //     x+=hsp_prev;
        //     y+=vsp_prev;
        // }
        

    }
}

if(!grounded && stuck_player == noone && free) // rotation and gravity
{
    // Update sprite subimage according to angle
    image_index = (360-moveangle) * 32 / 360 
    
    // Apply gravity
    vsp += gravity_speed;
    
    //Hitbox
    with(player_id)
    {
        set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH,  other.despawn_timer > 33 ? 40 : 10);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, other.despawn_timer > 33 ? 40 : 10);
    }
    
    var hbox = create_hitbox(AT_DSPECIAL,1,ceil(x+ceil(cos(angle)*dist*1.5*sign(hsp))),ceil(y+ceil(sin(angle)*dist*1.5)));

}


// if hit player
if(stuck_player != noone)
{
    if(xoff == 0 && yoff == 0)
    {
        xoff = x- stuck_player.x;
        yoff = y- stuck_player.y;
    }
    
    x = stuck_player.x + xoff;
    y = stuck_player.y+yoff;
    
    hsp = stuck_player.hsp;
    vsp = stuck_player.vsp;
    
    in_portal = true;
    
    depth = stuck_player.depth-1;
}

//#region Shake
if(shake_timer > 0){
    shake_timer--;
    
    x+=shake_timer*(get_gameplay_time()%2 == 1 ? 1 : -1);
}

//#endregion


//#endregion

//#region outside stage

if(x < 0 || x > room_width || y > room_height || player_id.state == PS_RESPAWN)
{
    // Reset stuff
    sound_stop(sound_get("monarch_countdown"))
    sound_play(sound_get("monarch_knifedestroy"))
    player_id.time_knife = noone;
    instance_destroy();
    exit;
}

//#endregion

//#region Teleportfx

if(!charged){
    charged = teleported;
    
    if(stuck_player)
        if(stuck_player.portal_white != 0) 
            charged = true;
    
    if(charged) sound_play(sound_get("monarch_zap"),false,0,0.5);
}

//#endregion


//#region time's up

if(clock_timer == teleport_time || early_trigger) // || fspecial_trigger
{
    var doFall = true;
    var hbox = noone;
    
    // Charge damage
    with(player_id) set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
    
    // Stun hitbox
    if(stuck_player != noone){
        if( (stuck_player.state == 12 || charged) && !stuck_player.activated_kill_effect){
            hbox = create_hitbox(AT_DSPECIAL,2,ceil(x),ceil(y)-15);
            
            var hpTime = 10;
        	
        	with(player_id){
        	    hitpause = true;
            	hitstop = hpTime;
            	hitstop_full = hpTime;
            	//gravity_speed = 0;
            	old_vsp = -8;
            	old_hsp = 0;
        	}
        	
        	doFall = false;
        }
    }
    
    
    player_id.last_knife_pos.x = x;
    player_id.last_knife_pos.y = y - (early_trigger ? 40 : 0)-10;
    
    player_id.last_player_pos.x = player_id.x;
    player_id.last_player_pos.y = player_id.y - char_height/2 + (early_trigger ? 10 : 0);
    
    
    player_id.knife_line_timer = 15;

    if(!player_id.hitpause || !doFall){
    with(player_id)
    {
        // Teleport
        x = other.x;
        y = other.y;
        
        if(other.charged) {
            spawn_hit_fx(other.x,other.y,hitfx12);
            
            if(hbox == noone){
                set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 160);
                set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 160);
                set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, floor(12*2.5));
                
                hbox = create_hitbox(AT_DSPECIAL,2,ceil(other.x),ceil(other.y)-15);
                
                reset_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH);
                reset_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT);
                reset_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME);
            }
            
            
            sound_play(sound_get("monarch_gunhit2"),false,0,0.8,1.1);
        }
       reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
        
        
        // Fall to platform/ground w/ failsafe
        if(doFall){
            var limit = 100;
            
            if( !place_meeting(x,y+char_height,asset_get("par_block")))
            {
                while(place_meeting(x,y,asset_get("par_jumpthrough")) == false && (place_meeting(x,y+1,asset_get("par_block")) == false) && limit > 0){
                    y++;
                    limit--;
                }
            }
            else
            {
                while((place_meeting(x,y,asset_get("par_block")) == false) && limit > 0){
                    y++;
                    limit--;
                }
            }
        }
        portal_cooldown = 2;
        teleported = true;
        

        
        sound_play(sound_get("monarch_appear"),false,0,other.charged ? 0.8 : 1)
        
        if(other.early_trigger) y-=30;
        if(!doFall) {
            y= other.stuck_player.y + 20;
        }
        
        // Spawn fx
        var sdir_store = spr_dir;
        spr_dir = 1;
        var fx = spawn_hit_fx(x,y-50,time_appear)
        spr_dir = sdir_store;
    }
    }
    else
    {
        // Shatter sound
        sound_play(sound_get("monarch_knifedestroy"))
    }
    
    // Reset stuff
    player_id.time_knife = noone;

    
    // Prevent jumping back into portals
    if(charged && !player_id.hitpause) player_id.vsp = 0;

    
    instance_destroy();
}

//#endregion

