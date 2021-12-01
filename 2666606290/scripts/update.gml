// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

doing_goku_beam = (phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6));





if (left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed)
strong_pressed = true;
else
strong_pressed = false;


//FACE OPPONENT

var rival_players=0, rival;
if !noturn {
	with asset_get("oPlayer"){
	    if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
	        rival=id;
	        ++rival_players;
	    }
	}
}
if rival_players==1 and !noturn {
    if state==PS_IDLE or state==PS_CROUCH or state==PS_DASH_START or state==PS_WALK or state==PS_WALK_TURN or state==PS_LAND or state==PS_LANDING_LAG{
        if rival.x>x {
            looking=1
        } else looking=-1
    } //else looking=spr_dir;
    
    if ( state==PS_IDLE or state==PS_CROUCH)  {
        spr_dir=looking;
    }
    
} else looking=spr_dir;



//CROUCH DASH and Cooldowns

if (state!=PS_ATTACK_GROUND && state!=PS_ATTACK_AIR){
ewgf = false;
omen = false;
ewgf_real = false;
hellsweep2 = false;
hellsweepdgf = false;
no_drain = false;
elec_start = false;
elec_vfx = false;
}



if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (electrified)
{
ewgf = true;
// omen = true;
}

//electro charging
if !(instance_exists( field_obj )){
elec_charge += (abs(hsp) + abs(vsp)) * elec_gain;

if (elec_charge < 100) elec_full = false;

if elec_charge >= 100{

if(!elec_full) sound_play(sound_get("se_rage"));

elec_full = true;

elec_charge = 100;
}




}
//electro field
if (instance_exists( field_obj )){
	

		
	if place_meeting( x, y, field_obj ){ 
	field_obj.player_touching = true;
	elec_charge -= elec_passivedrain;
	
	}
	else{
	field_obj.player_touching = false;
		    // Ground movement
		    walk_speed          = 3;		// 3    -  4.5
		    initial_dash_speed  = 5;		// 4    -  9
		    dash_speed          = 6;		// 5    -  9
		
		        
		    // Air movement
		    air_max_speed       = 4;  		// 3    -  7
		    wave_land_adj       = 1.2;	
	}
	
	if (elec_charge <= 0){
	sound_play(sound_get("se_rage_end"));
	instance_destroy(field_obj);
	}
}
else 
{
	
sound_stop( asset_get( "sfx_plasma_field_loop" ) );
	
	    // Ground movement
    walk_speed          = 3;		// 3    -  4.5
    initial_dash_speed  = 5;		// 4    -  9
    dash_speed          = 6;		// 5    -  9

        
    // Air movement
    air_max_speed       = 4;  		// 3    -  7
    wave_land_adj       = 1.2;	
}

//otgf



//Right

if otgf>0 otgf_temp++
if otgf_temp>=otgf_timer {
    otgf=0
    otgf_timer=0
    otgf_temp=0
}

if start_dir[1]==1 && spr_dir == looking{
    if otgf==0 and ((right_down and !down_down and !up_down))  {
        otgf=1
        otgf_timer=10
        otgf_temp=0
    }
        
    if otgf==1 and (joy_pad_idle) {
        otgf=2
        otgf_timer=10
        otgf_temp=0


    }
    
    if otgf=2 and (right_down and down_down ) and attack_pressed {
    	ewgf=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
	if otgf=2 and (right_down and down_down ) and strong_pressed {
    	omen=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (right_down and down_down ) {
        otgf=3
        otgf_timer=10
        otgf_temp=0

    }
}

//Left
if start_dir[1]==-1 && spr_dir == looking{
    if otgf==0 and ((left_down and !down_down and !up_down))  {
        otgf=1
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==1 and (joy_pad_idle) {
        otgf=2
        otgf_timer=10
        otgf_temp=0


    }
    
    if otgf==2 and (left_down and down_down ) and attack_pressed {
    	ewgf=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (left_down and down_down ) and strong_pressed {
    	omen=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (left_down and down_down ) {
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
}




if dp>0 dp_temp++
if dp_temp>=dp_timer {
    dp=0
    dp_timer=0
    dp_temp=0
}

#region DP
if dp==0 start_dir[0]=spr_dir
//Right
if start_dir[0]==1 && spr_dir == looking{
    if dp==0 and ((right_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (!right_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp==1 and (down_stick_pressed) and attack!=AT_EXTRA_1 and tapf == 2{
        dp=3
        dp_timer=10
        dp_temp=0
        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
		clear_button_buffer( PC_STRONG_PRESSED );
    }
    
    if dp=2 and (right_down and down_down ) and attack_pressed {
    	ewgf=true;
    	ewgf_real = true;
    	no_drain = true;
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (right_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0
    }
}

//Left
if start_dir[0]==-1 && spr_dir == looking{
    if dp==0 and ((left_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (!left_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp==1 and (down_stick_pressed) and attack!=AT_EXTRA_1 and tapf == 2 {
        dp=3
        dp_timer=10
        dp_temp=0
        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
		clear_button_buffer( PC_STRONG_PRESSED );
    }
    
    if dp==2 and (left_down and down_down ) and attack_pressed {
    	ewgf=true;
    	ewgf_real = true;
    	no_drain = true;
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (left_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0

    }
}



//Shortcut

//Right
if start_dir[0]==1 && spr_dir == looking{
    if dp==0 and ((right_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp=2 and (right_down and down_down ) and attack_pressed {
    	ewgf=true;
    	ewgf_real = true;
    	no_drain = true;
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (right_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0

    }
}

//Left
if start_dir[0]==-1 && spr_dir == looking{
    if dp==0 and ((left_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp==2 and (left_down and down_down ) and attack_pressed {
    	ewgf=true;
    	ewgf_real = true;
    	no_drain = true;
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (left_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0
    }
}


#region TAPF
if tapf==0 start_dir[1]=spr_dir
//Right
if start_dir[1]==1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}

//Left
if start_dir[1]==-1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}

//Command End


if tapf>0 tapf_temp++
if tapf_temp>=tapf_timer {
    tapf=0
    tapf_timer=0
    tapf_temp=0
}
#endregion


//Command End

if (dp==3){
clear_button_buffer( PC_DOWN_STICK_PRESSED );

}

if (state==PS_ATTACK_GROUND && spr_dir != looking){
dp=0;
move_cooldown[AT_EXTRA_1] = 1;
}

if (dp==3||otgf==3) && ((
(state == PS_IDLE ||
state == PS_DASH_START ||
state == PS_DASH ||
state == PS_DASH_STOP ||
state == PS_DASH_TURN ||
state == PS_WALK ||
state == PS_WALK_TURN) && 
!free ) || 
(state==PS_ATTACK_GROUND && attack != AT_EXTRA_1 && window == 1 && window_timer < ewgf_window )){
	
	if (start_dir[0] != 0) spr_dir = start_dir[0];
	else if (start_dir[1] != 0) spr_dir = start_dir[1];
	
	tapf=0;
    dp=0;
    otgf=0;

    state = PS_ATTACK_GROUND;
    set_attack(AT_EXTRA_1);

}


#endregion



//Cheats
if phone_cheats[CHEAT_METER] && !(instance_exists( field_obj )) elec_charge = 100;
if phone_cheats[CHEAT_ELECTRICS] ewgf = true;


