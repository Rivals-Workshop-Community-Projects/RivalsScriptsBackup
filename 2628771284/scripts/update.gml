

// entrance
if (get_gameplay_time() < 5)
{
    if (!has_enter) and (!instance_exists(oTestPlayer))
    {
        has_enter = true;
        set_attack(AT_NTHROW);
        
    }
}

if (attack == AT_NTHROW) and (window == 2) and (window_timer == 57)
{
    set_state(PS_SPAWN);
    state_timer += 66;
    
}

///////////////////////////SOFT/HARD INPUTS///////////////////////////
#region SOFT/HARD INPUTS

if attack_down or (left_stick_down or right_stick_down or up_stick_down or down_stick_down) attack_input++
    else attack_input=0
    
if special_down special_input++
    else special_input=0


#endregion

///////////////////////////ALWAYS FACE THE OPPONENT///////////////////////////
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
    if state==PS_IDLE or state==PS_CROUCH or state==PS_DASH_START or state==PS_WALK or state==PS_WALK_TURN or state==PS_JUMPSQUAT {
        if rival.x>x {
            looking=1
        } else looking=-1
    } else looking=spr_dir;
    
    if ( state==PS_IDLE or state==PS_CROUCH or (state==PS_JUMPSQUAT and prev_state!=PS_DASH_TURN))  {
        spr_dir=looking;
    }
    
} else if (state!=PS_DASH_START and state!=PS_WALK_TURN) looking=spr_dir;

#endregion

if(state == PS_CROUCH){
    can_move = true;
    if (right_down){
        spr_dir = 1;
        hsp = 1;
        is_crawling = true;          
    }
    if (left_down){
        spr_dir = -1;
        hsp = -1;
        is_crawling = true;  
    }
    if (joy_pad_idle){
        hsp = 0;
        is_crawling = false;
    }
   
}else{
    is_crawling = false;
}




#region HCF
if command[1,0]>0 command[1,2]+=1;
if command[1,2]>=command[1,1] or joy_pad_idle {
    command[1,0]=0;
    command[1,1]=0;
    command[1,2]=0;
}
if command[1,0]==0 command[1,3]=looking;

//Right
if command[1,3]==1 {
    if command[1,0]==0 and (left_down and !down_down) {
        command[1,0]=1
        command[1,1]=6
        command[1,2]=0
    } 
    
    if command[1,0]==1 and (left_down and down_down and !right_down) {
        command[1,0]=2
        command[1,1]=6
        command[1,2]=0
    } 
    
    if command[1,0]==2 and (down_down){
        command[1,0]=3
        command[1,1]=6
        command[1,2]=0
    } 
    if command[1,0]==3 and (!left_down and down_down and right_down){
        command[1,0]=4
        command[1,1]=6
        command[1,2]=0
    } 
    if command[1,0]==4 and (!left_down and !down_down and right_down){
        command[1,0]=5
        command[1,1]=8
        command[1,2]=0
    }
    
}

//Left
if command[1,3]==-1 {
    if command[1,0]==0 and (!left_down and !down_down and right_down) {
        command[1,0]=1
        command[1,1]=8
        command[1,2]=0
    } 
    
    if command[1,0]==1 and (!left_down and down_down and right_down) {
        command[1,0]=2
        command[1,1]=8
        command[1,2]=0
    } 
    
    if command[1,0]==2 and (down_down) {
        command[1,0]=3
        command[1,1]=8
        command[1,2]=0
    } 
    if command[1,0]==3 and (left_down and down_down and !right_down){
        command[1,0]=4
        command[1,1]=8
        command[1,2]=0
    } 
    if command[1,0]==4 and (left_down and !down_down and !right_down){
        command[1,0]=5
        command[1,1]=8
        command[1,2]=0
    }
    
}

#endregion

#region QCF
if command[0,0]>0 command[0,2]+=1;
if command[0,2]>=command[0,1] or joy_pad_idle {
    command[0,0]=0;
    command[0,1]=0;
    command[0,2]=0;
}
if command[0,0]==0 command[0,3]=looking;

//Right
if command[0,3]==1 {
    if command[0,0]==0 and (down_down and !right_down) {
        command[0,0]=1
        command[0,1]=6
        command[0,2]=0
    } 
    
    if command[0,0]==1 and (down_down and right_down){
        command[0,0]=2
        command[0,1]=4
        command[0,2]=0
    } 
    
    if command[0,0]==2 and (!down_down and right_down){
        command[0,0]=3
        command[0,1]=5
        command[0,2]=0
    }
    
}

//Left
if command[0,3]==-1 {
    if command[0,0]==0 and (down_down and left_down)  {
        command[0,0]=1
        command[0,1]=5
        command[0,2]=0
    }
    
    if command[0,0]==1 and (down_down and left_down){
        command[0,0]=2
        command[0,1]=4
        command[0,2]=0
    }
    
    if command[0,0]==2 and (!down_down and left_down){
        command[0,0]=3
        command[0,1]=5
        command[0,2]=0
    }
    
}

#endregion

#region HCB

if command[3,0]>0 command[3,2]+=1;
if command[3,2]>=command[3,1] or joy_pad_idle {
    command[3,0]=0;
    command[3,1]=0;
    command[3,2]=0;
}
if command[3,0]==0 command[3,3]=looking;

//Right
if command[3,3]==1 {
    if command[3,0]==0 and (!left_down and !down_down and right_down) {
        command[3,0]=1
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==1 and (!left_down and down_down and right_down) {
        command[3,0]=2
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==2 and (down_down) {
        command[3,0]=3
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==3 and (left_down and down_down and !right_down) {
        command[3,0]=4
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==4 and (left_down and !down_down and !right_down){
        command[3,0]=5
        command[3,1]=6
        command[3,2]=0
    }
    
}

//Left
if command[3,3]==-1 {
    if command[3,0]==0 and (left_down and !down_down and !right_down) {
        command[3,0]=1
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==1 and (left_down and down_down and !right_down) {
        command[3,0]=2
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==2 and (down_down) {
        command[3,0]=3
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==3 and (!left_down and down_down and right_down) {
        command[3,0]=4
        command[3,1]=6
        command[3,2]=0
    } 
    
    if command[3,0]==4 and (!left_down and !down_down and right_down){
        command[3,0]=5
        command[3,1]=6
        command[3,2]=0
    }
    
}

#endregion

#region QCB

if command[2,1]>0 command[2,2]++;
if command[2,2]>=command[2,1] or joy_pad_idle {
    command[2,0]=0;
    command[2,1]=0;
    command[2,2]=0;
}
if command[2,0]==0 command[2,3]=looking;

//Right
if command[2,3]==1 {
    if command[2,0]==0 and (down_down or !left_down and !right_down) {
        command[2,0]=1
        command[2,1]=6
        command[2,2]=0
    }
    
    if command[2,0]==1 and (down_down and left_down and !right_down){
        command[2,0]=2
        command[2,1]=6
        command[2,2]=0
    } 
    
    if command[2,0]==2 and (!down_down and left_down and !right_down){
        command[2,0]=3
        command[2,1]=6
        command[2,2]=0
    }
}
//Left
if command[2,3]==-1 {
    if command[2,0]==0 and (down_down or !right_down) {
        command[2,0]=1
        command[2,1]=6
        command[2,2]=0
    }
    
    if command[2,0]==1 and (down_down and right_down){
        command[2,0]=2
        command[2,1]=6
        command[2,2]=0
    }
    
    if command[2,0]==2 and (!down_down and right_down){
        command[2,0]=3
        command[2,1]=6
        command[2,2]=0
    }
}

#endregion

#region DP
if command[4,0]>0 command[4,2]++;
if command[4,2]>=command[4,1] or (joy_pad_idle and command[4,0]>1) {
    command[4,0]=0;
    command[4,1]=0;
    command[4,2]=0;
}
if command[4,0]==0 command[4,3]=looking;

//Right
if command[4,3]==1 {
    if command[4,0]==0 and ( (right_down and !down_down) or ( !joy_pad_idle and ( joy_dir>345 or joy_dir<15 ) ) ) {
        command[4,0]=1
        command[4,1]=12
        command[4,2]=0
    }

    if command[4,0]==1 and ( (!right_down and down_down) or ( !joy_pad_idle and ( joy_dir>255 and joy_dir<295 ) ) ) {
        command[4,0]=2
        command[4,1]=6
        command[4,2]=0
    }
    
    if command[4,0]==2 and ( right_down and down_down or ( !joy_pad_idle and ( joy_dir>300 and joy_dir<330) ) )  {
        command[4,0]=3
        command[4,1]=6
        command[4,2]=0
    }
    
    if command[4,0]==3 and ( right_down and down_down or ( !joy_pad_idle and ( joy_dir>320 and joy_dir<350 ) ) ) {
        command[4,0]=4
        command[4,1]=6
        command[4,2]=0
    }
}

//Left
if command[4,3]==-1 {
    if command[4,0]==0 and ( (left_down and !down_down) or ( !joy_pad_idle and ( joy_dir>165 or joy_dir<195 ) ) )  {
        command[4,0]=1
        command[4,1]=6
        command[4,2]=0
    }

    if command[4,0]==1 and ( (!left_down and down_down) or ( !joy_pad_idle and ( joy_dir>255 and joy_dir<295 ) ) ) {
        command[4,0]=2
        command[4,1]=6
        command[4,2]=0
    }
    
    if command[4,0]==2 and ( (left_down and down_down ) or ( !joy_pad_idle and ( joy_dir>210 and joy_dir<240 ) ) ) {
        command[4,0]=3
        command[4,1]=6
        command[4,2]=0
    }
    
    if command[4,0]==3 and (left_down and down_down ) {
        command[4,0]=4
        command[4,1]=6
        command[4,2]=0
    }
}

#endregion

#region Charge Back Forward

if looking==1 {
    if ( left_down or ( !joy_pad_idle and ( joy_dir > 90 and joy_dir < 270 ) ) ) {
        ++command[5,1];
    } else if command[5,1] > 0 {
        --command[5,1];
    }
    
}

if looking==-1 {
    if ( right_down or ( !joy_pad_idle and ( joy_dir < 90 or joy_dir > 270 ) ) ) {
        --command[5,1];
    } else if command[5,1] < 0 {
        ++command[5,1];
    }
    
}

if abs( command[5,1] ) > 40 {
    if ( looking == 1 ) {
        if ( right_down or ( !joy_pad_idle and ( joy_dir < 90 or joy_dir > 270 ) ) )
            command[5,0] = true;
    } else if (looking == -1) {
        if ( left_down or ( !joy_pad_idle and ( joy_dir > 90 or joy_dir < 270 ) ) )
            command[5,0] = true
    }
} else command[5,0] = false;

#endregion

#region Charge Down Up

if ( /*state==PS_CROUCH and*/ ( down_down or ( !joy_pad_idle and ( joy_dir>180 and joy_dir<359 ) ) ) ) {
    command[6,1]+=1
    
} else if (command[6,1] > 0) command[6,1]-=1;

if command[6,1] >= 40 {
    if ( up_down or (!joy_pad_idle and joy_dir>45 and joy_dir<180) ) command[6,0]=true;
} else command[6,0]=false;

#endregion

#endregion

if (get_training_cpu_action() != CPU_FIGHT && !playtest) {
	training = true;
}

if (training) {
	if get_gameplay_time()mod 5 == 0 {
		var key = 5;
		
		switch (joy_pad_idle) {
		case 0:
			if (down_down and !up_down) {
				if (left_down and !right_down) key=1;
				else if (!left_down and right_down) key=3;
				else key=2;
					
			} else if (left_down and !right_down) {
				if (down_down and !up_down) key=1;
				else if (!down_down and up_down) key=7;
				else key=4;
					
			} else if (right_down and !left_down) {
				if (down_down and !up_down) key=3;
				else if (!down_down and up_down) key=9;
				else key=6;
					
			} else if (up_down and !down_down) {
				if (left_down and !right_down) key=7;
				else if (!left_down and right_down) key=9;
				else key=8;
					
			}
			break;
		default:
		case 1:
			key=5;
			break;
		}
	
		var dirbutton=[key, attack_down*10, special_down*11, shield_down*12, strong_down*13];
		var i=0;
		while i<array_length( dir_array[| ds_list_size(dir_array)-1 ] ) {
			if (dir_array[| ds_list_size(dir_array)-1][@ i] != dirbutton[@ i]) {
				ds_list_add(dir_array, [dirbutton[@ 0],dirbutton[@ 1],dirbutton[@ 2],dirbutton[@ 3],dirbutton[@ 4]]);
				
				break;
			}
			i++;
			
		}
		while ( ds_list_size(dir_array)>7) {
			ds_list_delete(dir_array, 0)
		}
			
	}
}
else {
	ds_list_destroy(dir_array)
}

#region QCFQCF
if command[7,0]>0 command[7,2]+=1;
if command[7,2]>=command[7,1] or joy_pad_idle {
    command[7,0]=0;
    command[7,1]=0;
    command[7,2]=0;
}
if command[7,0]==0 command[7,3]=looking;

//Right
if command[7,3]==1 {
    if command[7,0]==0 and (down_down and !right_down) {
        command[7,0]=1
        command[7,1]=10
        command[7,2]=0
    } 
    
    if command[7,0]==1 and (down_down and right_down){
        command[7,0]=2
        command[7,1]=10
        command[7,2]=0
    } 
    
    if command[7,0]==2 and (!down_down and right_down){
        command[7,0]=3
        command[7,1]=10
        command[7,2]=0
    }
    if command[7,0]==3 and (down_down and !right_down) {
        command[7,0]=4
        command[7,1]=10
        command[7,2]=0
    } 
    
    if command[7,0]==4 and (down_down and right_down){
        command[7,0]=5
        command[7,1]=10
        command[7,2]=0
    } 
    
    if command[7,0]==5 and (!down_down and right_down){
        command[7,0]=6
        command[7,1]=10
        command[7,2]=0
    }
    
}

//Left
if command[7,3]==-1 {
    if command[7,0]==0 and (down_down and left_down)  {
        command[7,0]=1
        command[7,1]=10
        command[7,2]=0
    }
    
    if command[7,0]==1 and (down_down and left_down){
        command[7,0]=2
        command[7,1]=10
        command[7,2]=0
    }
    
    if command[7,0]==2 and (!down_down and left_down){
        command[7,0]=3
        command[7,1]=10
        command[7,2]=0
    }
    if command[7,0]==3 and (down_down and left_down)  {
        command[7,0]=4
        command[7,1]=10
        command[7,2]=0
    }
    
    if command[7,0]==4 and (down_down and left_down){
        command[7,0]=5
        command[7,1]=10
        command[7,2]=0
    }
    
    if command[7,0]==5 and (!down_down and left_down){
        command[7,0]=6
        command[7,1]=10
        command[7,2]=0
    }
    
}



#endregion


if (state == PS_ROLL_BACKWARD) {
    if (state_timer == 0) {
        sound_play(sound_get("wush"));
    }
}

if (state == PS_ROLL_FORWARD) {
    if (state_timer == 0) {
        sound_play(sound_get("wush"));
    }
}

if (state == PS_TECH_BACKWARD) {
    if (state_timer == 0) {
        sound_play(sound_get("wush"));
    }
}

if (state == PS_TECH_FORWARD) {
    if (state_timer == 0) {
        sound_play(sound_get("wush"));
    }
}