user_event(14); 

//intro

if (get_gameplay_time() < introTimer){

 	if (get_training_cpu_action() == CPU_FIGHT) {
 		
 		if (!rolling && special_down && attack_down && down_down){
	 	sound_play(sound_get("rolling1"));
	 	rolling = true;
	 	}
 		
		else if (!voice_lines && taunt_pressed){
	 	sound_play(sound_get("nowsannie"));
	 	
	 	voice_lines = true;
		}
	 	

	 	
	 	
 	}
    
}

//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.



#region FACE OPPONENT

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
    } else looking=spr_dir;
    
    if ( state==PS_IDLE or state==PS_CROUCH or state==PS_LAND or state==PS_LANDING_LAG or (state==PS_JUMPSQUAT and prev_state!=PS_DASH_TURN))  {
        spr_dir=looking;
    }
    
} else if (state!=PS_DASH_START and state!=PS_WALK_TURN) looking=spr_dir;

#endregion

//reset counters and values
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
	reentry_pressed = false;
	reentry = 0;
	stopbreverse = false;
	
	firstattack = true;
	
	confirm_jab = false;
    confirm_ftilt = false;
    confirm_fstrong = false;
	buffer_dashdir = 0;
    
    if (!free || state = PS_WALL_JUMP)
    northknuckle_used = false;
    
    if (initial_invince = 2)
    initial_invince = 0;
    
    final_smash_loop = 0;
}


if (!free)
{
	can_dspec = true;
}




//installdrain
if (install)
star_meter -= 0.1;

//Muno Cheats

if (phone_cheats[cheat_meter] == 1) {
	if (!install)
	   star_meter = 100;
}

if (phone_cheats[cheat_voice] == 1) {
	   voice_lines = true;
}

if ((get_training_cpu_action() != CPU_FIGHT) && phone_cheats[cheat_voice] == 0) {
	   voice_lines = false;
}

if (phone_cheats[cheat_rolling] == 1) {
	   rolling = true;
}

if (phone_cheats[cheat_fs] == 1 && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)) {
	   fs_charge = 200;
}

if (star_meter <= 0)
{
	star_meter = 0;
	install = false;
}





//AIRDASH SYSTEM

//has Airdash
if (has_airdash = false && !free)
has_airdash = true;

//Buffer
if ((shield_pressed && state = PS_ATTACK_AIR) && buffer_dashdir = 0)
{
	if ((left_down && spr_dir = -1) || (right_down && spr_dir = 1) || joy_pad_idle)
	{
		buffer_dashdir = 1;
	}
	else if (left_down && spr_dir = 1) || (right_down && spr_dir = -1)
	{
		buffer_dashdir = -1;
	}
}

//AIRDASH STATE
if ((ddf==3 || ddb==3 || buffer_dashdir != 0) && free && has_airdash && state_timer > 3 && (state_cat = SC_AIR_NEUTRAL || state = PS_ATTACK_AIR)) && hitstop == 0
{
	
	airdashing = true;
	has_airdodge = false;
	set_state(PS_IDLE_AIR);
	
	if (buffer_dashdir != 0)
	{
	dashdir = buffer_dashdir;
	}
	else if (ddf == 3)
	{
	dashdir = 1;
	}
	else if (ddb == 3)
	{
	dashdir = -1;
	}
	else if (shield_pressed) && (((left_down && spr_dir = -1) || (right_down && spr_dir = 1)) || joy_pad_idle)
	{
		dashdir = 1;
	}
	else if (shield_pressed) && ((left_down && spr_dir = 1) || (right_down && spr_dir = -1)) 
	{
		dashdir = -1;
	}
	
	clear_button_buffer( PC_SHIELD_PRESSED );
	ddf = 0;
	ddb = 0;
	dp = 0;
	hcf = 0;
	buffer_airdodge = false;
}

if (airdashing && airdash_timer > 0)
{
	can_fast_fall = false;
	if (djumps = 0)
	{
	djumpstorage = 1
	djumps = 1
	}
	
	has_airdash = false;
	if (dashdir = 1)
	{
	hsp = 6.5 * spr_dir;
	}
	else if (dashdir = -1)
	{
	hsp = 6.5 * -spr_dir;
	}
	
	vsp = 0;
	
	
	airdash_timer--;
	if (airdash_timer <= 0) || (state_cat = SC_AIR_COMMITTED) || !free
	{
	airdashing = false;
	airdash_timer = 13;
	
		if djumpstorage > 0
		djumps = 0;
		
	djumpstorage = 0;
	}
}

















///////////////////////////MOTION INPUT///////////////////////////
#region MOTION INPUTS





#region HCF

if hcf==0 start_dir[3]=looking
//Right
if start_dir[3]==1 {
	
	if hcf==0 and ((left_down and down_down) and !right_down) {
        hcf=1
        hcf_timer=10
        hcf_temp=0
    } 
	
    if hcf==1 and (down_down and !right_down) {
        hcf=2
        hcf_timer=10
        hcf_temp=0
    } 
    
    if hcf==2 and (down_down and right_down){
        hcf=3
        hcf_timer=10
        hcf_temp=0
    } 
    
    if hcf==3 and (!down_down and right_down){
        hcf=4
        hcf_timer=10
        hcf_temp=0
    }
    
}

//Left
if start_dir[3]==-1 {
	
	if hcf==0 and ((right_down and down_down) and !left_down) {
        hcf=1
        hcf_timer=10
        hcf_temp=0
    } 
	
    if hcf==1 and (down_down and !left_down)  {
        hcf=2
        hcf_timer=10
        hcf_temp=0
    }
    
    if hcf==2 and (down_down and left_down){
        hcf=3
        hcf_timer=10
        hcf_temp=0
    }
    
    if hcf==3 and (!down_down and left_down){
        hcf=4
        hcf_timer=10
        hcf_temp=0
    }
    
}

if hcf>0 hcf_temp+=1
if hcf_temp>=hcf_timer {
    hcf=0 
    hcf_timer=0
    hcf_temp=0
}


#endregion

#region QCF
if qcf==0 start_dir[0]=spr_dir
//Right
if start_dir[0]==1 {
    if qcf==0 and (down_down and !right_down) {
        qcf=1
        qcf_timer=10
        qcf_temp=0
    } 
    
    if qcf==1 and (down_down and right_down){
        qcf=2
        qcf_timer=10
        qcf_temp=0
    } 
    
    if qcf==2 and (!down_down and right_down){
        qcf=3
        qcf_timer=10
        qcf_temp=0
    }
    
}

//Left
if start_dir[0]==-1 {
    if qcf==0 and (down_down and !left_down)  {
        qcf=1
        qcf_timer=10
        qcf_temp=0
    }
    
    if qcf==1 and (down_down and left_down){
        qcf=2
        qcf_timer=10
        qcf_temp=0
    }
    
    if qcf==2 and (!down_down and left_down){
        qcf=3
        qcf_timer=10
        qcf_temp=0
    }
    
}

if qcf>0 qcf_temp+=1
if qcf_temp>=qcf_timer {
    qcf=0 
    qcf_timer=0
    qcf_temp=0
}

#endregion

#region QCFSUPER

    if qcfs==0 and (down_down and !right_down) {
        qcfs=1
        qcfs_timer=15
        qcfs_temp=0
    } 

    if qcfs==1 and (!down_down and right_down){
        qcfs=2
        qcfs_timer=15
        qcfs_temp=0
        super_dir = 1;
    }
    
    else if qcfs==1 and (!down_down and left_down){
        qcfs=2
        qcfs_timer=15
        qcfs_temp=0
        super_dir = -1;
    }
    
    
    if qcfs==2 and (down_down and !right_down) {
        qcfs=3
        qcfs_timer=15
        qcfs_temp=0
    } 

    if qcfs==3 and (!down_down and right_down) and super_dir == 1{
        qcfs=4
        qcfs_timer=15
        qcfs_temp=0
    }
    
    else if qcfs==3 and (!down_down and left_down) and super_dir == -1{
        qcfs=4
        qcfs_timer=15
        qcfs_temp=0
    }
    

if qcfs>0 qcfs_temp+=1
if qcfs_temp>=qcfs_timer {
    qcfs=0 
    qcfs_timer=0
    qcfs_temp=0
}

#endregion


#region qcb
if qcb==0 start_dir[1]=spr_dir
//Right
if start_dir[1]==1 {
    if qcb==0 and (down_down or !left_down and !right_down) {
        qcb=1
        qcb_timer=10
        qcb_temp=0
    }
    
    if qcb==1 and (down_down and left_down and !right_down){
        qcb=2
        qcb_timer=10
        qcb_temp=0
    } 
    
    if qcb==2 and (!down_down and left_down and !right_down){
        qcb=3
        qcb_timer=10
        qcb_temp=0
    }
    
    if qcb==3 and (!down_down and left_down and !right_down and up_down){
        qcb=4
        qcb_timer=10
        qcb_temp=0
    }
}
//Left
if start_dir[1]==-1 {
    if qcb==0 and (down_down or !right_down) {
        qcb=1
        qcb_timer=10
        qcb_temp=0
    }
    
    if qcb==1 and (down_down and right_down){
        qcb=2
        qcb_timer=10
        qcb_temp=0
    }
    
    if qcb==2 and (!down_down and right_down){
        qcb=3
        qcb_timer=10
        qcb_temp=0
    }
    
    if qcb==3 and (!down_down and right_down and up_down){
        qcb=4
        qcb_timer=10
        qcb_temp=0
    }
}

if qcb>0 qcb_temp++
if qcb_temp>=qcb_timer {
    qcb=0; 
    qcb_temp=0
    qcb_timer=0
}

#endregion

#region DP
if dp==0 start_dir[2]=spr_dir
//Right
if start_dir[2]==1 {
    if dp==0 and ((right_down and !down_down and !up_down) or (right_down and down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (!right_down and down_down ) {
        dp=2
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
if start_dir[2]==-1 {
    if dp==0 and ((left_down and !down_down and !up_down) or (left_down and down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (!left_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (left_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0
    }
}

//Command End


if dp>0 dp_temp++
if dp_temp>=dp_timer {
    dp=0
    dp_timer=0
    dp_temp=0
}
#endregion

#region Charge Back

// if looking==1 {
//     if left_down ++cBack 
//     else if cBack>0 --cBack;
// }


// if abs(cBack)>40 {
//     if looking==1 {
//         if right_down
//             cBack_done=true;
//     } else if looking==-1 {
//         if left_down
//             cBack_done=true
//     }
// } else cBack_done=false;

#endregion

#region Charge Down

// if (down_down and !up_down) and (state==PS_CROUCH) ++cDown;
// else --cDown;

// if abs(cDown)>=40 {
//     if ( !down_down and up_down ) cDown_done=true;
// } else cDown_done=false;

#endregion

#region DDF
if ddf==0 start_dir[5]=spr_dir
//Right
if start_dir[5]==1 {
    if ddf==0 and (!left_down and !down_down and right_pressed)  {
        ddf=1
        ddf_timer=7
        ddf_temp=0
    }

    if ddf==1 and (!left_down and !down_down and !right_down) {
        ddf=2
        ddf_temp=0
    }
    
    if ddf==2 and (!left_down and !down_down and right_down) {
        ddf=3
        ddf_timer=7
        ddf_temp=0
    }

}

//Left
if start_dir[5]==-1 {
    if ddf==0 and (left_pressed and !down_down and !right_down)  {
        ddf=1
        ddf_timer=7
        ddf_temp=0
    }

    if ddf==1 and (!left_down and !down_down and !right_down) {
        ddf=2
        ddf_temp=0
    }
    
    if ddf==2 and (left_down and !down_down and !right_down) {
        ddf=3
        ddf_timer=7
        ddf_temp=0
    }
}

if ddf>0 ddf_temp++
if ddf_temp>=ddf_timer {
    ddf=0
    ddf_timer=0
    ddf_temp=0
}
#endregion

#region DDB
if ddb==0 start_dir[5]=spr_dir
//Right
if start_dir[5]==1 {
    if ddb==0 and (left_pressed and !down_down and !right_down)  {
        ddb=1
        ddb_timer=7
        ddb_temp=0
    }

    if ddb==1 and (!left_down and !down_down and !right_down) {
        ddb=2
        ddb_temp=0
    }
    
    if ddb==2 and (left_down and !down_down and !right_down) {
        ddb=3
        ddb_timer=7
        ddb_temp=0
    }
}

//Left
if start_dir[5]==-1 {
    if ddb==0 and (!left_down and !down_down and right_pressed)  {
        ddb=1
        ddb_timer=7
        ddb_temp=0
    }

    if ddb==1 and (!left_down and !down_down and !right_down) {
        ddb=2
        ddb_temp=0
    }
    
    if ddb==2 and (!left_down and !down_down and right_down) {
        ddb=3
        ddb_timer=7
        ddb_temp=0
    }

}


if ddb>0 ddb_temp++
if ddb_temp>=ddb_timer {
    ddb=0
    ddb_timer=0
    ddb_temp=0
}
#endregion

#region SGS
if sgs==0
//Right
    if sgs==0 and (down_down) and (!left_down and !right_down and !up_down)  {
        sgs=1
        sgs_timer=12
        sgs_temp=0
    }
    
    if sgs==1 and (!attack_down && !special_down) and (!left_down and !down_down and !right_down and !up_down) {
        sgs=2
        sgs_temp=0
    }

    if sgs==2 and (down_down) and (!left_down and !right_down and !up_down) {
        sgs=3
        sgs_timer=12
        sgs_temp=0
    }

if sgs>0 sgs_temp++
if sgs_temp>=sgs_timer {
    sgs=0
    sgs_timer=0
    sgs_temp=0
}
#endregion




