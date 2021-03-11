//hi

if state == PS_AIR_DODGE
{ hud_offset = 28;}

if (state == PS_PARRY)
{ hud_offset = 40;
    if (state_timer == 0 && !hitpause) {
    spawn_hit_fx( x-30*spr_dir, y-110, goldenguard);
    sound_play(sound_get("softsound"));
    }
}

if (attack = AT_JAB)
{ switch ( window )
{ 
    case 7:{ if (window_timer == 29)
        {
        window = 8;
        window_timer = 0;}
    }break;
    case 8:{ if (window_timer == 15)
        {
        window = 9;
        window_timer = 0;}
        if (up_down || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        set_state(PS_IDLE);
        sound_stop(sound_get("olivareturn"));
        }
    }break;
    case 9:{ if (window_timer == 17)
        {
        window = 10;
        window_timer = 0;}
        if (up_down || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        set_state(PS_IDLE);
        sound_stop(sound_get("olivareturn"));
        }
    }break;
    case 10:{
        if (up_down || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        set_state(PS_IDLE);
        sound_stop(sound_get("olivareturn"));
        }
    }break;
}}

if (attack == AT_UAIR && window == 2)
    gravity_speed = .4;
    else
    gravity_speed = .50;


if (attack == AT_USPECIAL) {
    if (window == 1) {
        gravity_speed = 0.40;
    }
}

if (!free) {
    gravity_speed = .50;
    fairStall = true;
}

if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) && dspec_air == true
{
	dspec_air = false;
}

if da_earth == true
{
	var da_earth_y = get_stage_data(SD_Y_POS)+184;
	
	sound_play(asset_get("sfx_kragg_rock_pillar"));
	instance_create(x,da_earth_y,"obj_article_solid");
	da_earth = false;
}

if (attack == AT_FAIR)
{
    if (state == PS_ATTACK_AIR && hitpause)
    {
        gravity_speed = 0;
        vsp += -0.2;
    }
    else
    {
    gravity_speed = .50;
    }
}

if (spawntencoin)
{
    var tencoin = instance_create(tencoin_x, tencoin_y, "obj_article2");
	tencoin.sprite_index = sprite_get("tencoin");
	tencoin.state = 1;
	tencoin.player = player
	spawntencoin = false;
	
}

if (totalcoins >= 10000)
{
    totalcoins = 9999;
    coincounterbump = 4;
}

if (paneltimercountdown == true)
{
    paneltimer-= 0.01;
    paneldecided = 5;
}

if (paneltimer <= 0)
{
    paneltimercountdown = false;
    if paneltimer_reset != 0
    {
        paneltimer_reset--;
        move_cooldown[AT_NSPECIAL] = 5;
        
        with (obj_article2)
        {
            if (player_id = other.id && state >= 3) 
            {
                panelfade = true;
            }
        }
    }
    else
    if paneltimer_reset == 0
    {
        paneltimer = 5;
    }
}

if (paneldecided >= 1 && !hitpause)
{
    paneldecided--;
    
    if paneldecided == 4
    {
    	switch (panelstate)
    	{
    		case 0:
    		{
    			panel4type = 9;
    			panel4hsp = 3*spr_dir + random_func( 1, 4, false )*spr_dir;
    		}break;
    		
    		case 1:
    		{
    			panel4type = 10 + random_func( 1, 5, true);
    			panel4hsp = 3*spr_dir + random_func( 1, 4, false )*spr_dir;
    		}break;
    	}
    	
        if panel4hsp <= 2 && panel4hsp >= -2
        {
        	panel4hsp+=2*spr_dir;
        }
        panel4vsp = -8 - random_func( 1, 6, false ) + random_func( 1, 3, false );
    }
    
    if paneldecided == 3
    {
        panel1type = 3 + random_func( 1, 6, true);
        panel1hsp = 8 + random_func( 0, 3, true );
        panel1vsp = -4 - random_func( 1, 3, false ) + random_func( 0, 1, false );
    }
    if paneldecided == 2
    {
        panel2type = 3 + random_func( 1, 6, true);
        panel2hsp = panel4hsp*-1;
        panel2vsp = -6 - random_func( 1, 3, false ) + random_func( 1, 2, false );
    }
    if paneldecided == 1
    {
        panel3type = 3 + random_func( 1, 6, true);
        panel3hsp = panel1hsp*-1;
        panel3vsp = -4 - random_func( 1, 3, false ) + random_func( 0, 1, false );
    }
}


with (oPlayer)
{
    
    if arrowpanel_left >= 2
    {   
        
    	arrowpanel_left--;
    	arrow_up_left_right();
        vsp = 0;
        hsp = 11;
    }
    
    if arrowpanel_right >= 2
    {
        arrowpanel_right--;
        arrow_up_left_right();
        
        vsp = 0;
        hsp = -11;
    }
    
    if arrowpanel_up >= 2
    {
        arrowpanel_up--;
        arrow_up_left_right();
        
        vsp = -13;
        hsp = 0;
    }
    
    if arrowpanel_down >= 2
    {
        arrowpanel_down--;
		arrow_down();
        hsp = 0;
    }
    
    if arrowpanel_down == 1 || arrowpanel_up == 1 || arrowpanel_left == 1 || arrowpanel_right == 1
    {
        if (free)
        {
        	if id != other.id
        	{
            	set_state(PS_IDLE_AIR);
        	}
            vsp = -2;
        }
        else if (!free)
        {
        	if id != other.id
        	{
            	set_state(PS_IDLE);
        	}
            
            if (vsp >= 0)
            {
                vsp = 0;
            }
            else if (vsp <= -1)
            {
                vsp *= 0.5;
            }
            
        }
        
        hsp *= 0.2;
        
        invincible = false;
        invince_time = 0;
        
        arrowpanel_left = 0;
        arrowpanel_right = 0;
        arrowpanel_up = 0;
        arrowpanel_down = 0;
    }
}

if exjump_pickuptxt != 0
{
	exjump_pickuptxt--;
}

if doublepower_pickuptxt != 0
{
	doublepower_pickuptxt--;
}

if magiccircleon != 0
{
	magiccircleon--;
}



if (doublepowerboostusedup == true && ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack == AT_FSPECIAL && window >= 5 && window <= 7 || attack == AT_FSPECIAL_AIR && window >= 5 && window <= 7 || attack == AT_JAB && window == 8) && has_hit_player) && 
(has_hit_player || (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_DTILT || attack == AT_FSTRONG || attack == AT_DSPECIAL || attack == AT_USTRONG || attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 || attack == AT_DSTRONG_2 || attack == AT_DSPECIAL_2)))
{
    reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 4, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 5, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 6, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 7, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE);
    
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 4, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_NAIR, 11, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 19, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 12, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 18, HG_DAMAGE);
    
    reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
    
    doublepowerboost = false;
    doublepowerboostusedup = false;
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    pullingpanel = false;
    dash_fspec = false;
}

max_djumps = 1 + exjumps;

if (djumps >= 2 && state == PS_DOUBLE_JUMP && state_timer == 1)
{
	if exjumps != 0
	{
		sound_play(asset_get("sfx_jumpground"));
		sound_play(asset_get("mfx_coin"));
		exjumps-=1;
		djumps-= 1;
	}
}

if (state == PS_RESPAWN)
{
    spr_dir = 1;
}

if (introTimer2 < 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer+= 0.8;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//weird bug makes hit fx have weird depth issues so these lines are meant to fix that
with (hit_fx_obj) if (other.bob_hit == hit_fx && player_id = other.id) 
{
    depth = -5;
    other.move_cooldown[AT_DTILT] = 2;
}
with (hit_fx_obj) if (other.bowserfireburst == hit_fx && player_id = other.id) depth = -5; 
with (hit_fx_obj) if (other.starryhit == hit_fx && player_id = other.id) depth = -5;
with (hit_fx_obj) if (other.puffyhit == hit_fx && player_id = other.id) depth = -5;
with (hit_fx_obj) if (other.pressa == hit_fx && player_id = other.id) depth = -5;
with (hit_fx_obj) if (other.presseda == hit_fx && player_id = other.id) depth = -6;
with (hit_fx_obj) if (other.splashvfx == hit_fx && player_id = other.id) depth = -6;
with (hit_fx_obj) if (other.press_fspec == hit_fx && player_id = other.id) depth = -5;
with (hit_fx_obj) if (other.pressed_fspec == hit_fx && player_id = other.id) depth = -6;
with (hit_fx_obj) if (other.dashhit == hit_fx && player_id = other.id) depth = -4;
with (hit_fx_obj) if (other.bob_fall == hit_fx && player_id = other.id) 
{
    depth = -4;
    other.move_cooldown[AT_DTILT] = 2;
}
with (hit_fx_obj) if (other.bootssuccessful == hit_fx && player_id = other.id) depth = -4;
with (hit_fx_obj) if (other.sidehammer == hit_fx && player_id = other.id) depth = -4;
with (hit_fx_obj) if (other.goldenguard == hit_fx && player_id = other.id) depth = -3;
with (hit_fx_obj) if (other.block == hit_fx && player_id = other.id) depth = -12;
with (hit_fx_obj) if (other.block == hit_fx && player_id = other.id) spr_dir = 1;
with (hit_fx_obj) if (other.coinshine == hit_fx && player_id = other.id) depth = -5;
with (hit_fx_obj) if (other.icechunkbrk	 == hit_fx && player_id = other.id) depth = -5;


#define arrow_up_left_right()
{
		invincible = false;
        invince_time = 0;
	if (free)
        {
        	if id != other.id
        	{
            	set_state(PS_PRATFALL);
        	}
        }
        else if (!free)
        {
            set_state(PS_CROUCH);
        }
}

#define arrow_down()
{
		invincible = false;
        invince_time = 0;
	    if (free) 
        {
            if id != other.id
        	{
            	set_state(PS_PRATFALL);
        	}
            vsp = 11;
        }
        else if (!free)
        {
        	if id != other.id
        	{
            	set_state(PS_LANDING_LAG);
        	}
        }
}