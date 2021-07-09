


// Code for Texture Packs

if get_gameplay_time() == 40 {
print("So, instead of reflecting on themselves,")	
}

if get_gameplay_time() == 80 {
print("they blamed the beasts.")
}

	if get_gameplay_time() == 2 {	
		print("Mankind knew they cannot change society")
        
		
		roundbegin = 150
			with oPlayer {
				
		          if hit_player_obj == -4 or hit_player_obj == self {
		          	var shortest_dist = 9999;
		          	var shortest_id = noone;
		          	
		          	with (asset_get("oPlayer")) {
		          		if (player != other.player) {
		          			var curr_dist = point_distance(x,y,other.x,other.y);
		          			if (curr_dist < shortest_dist) {
		          				shortest_dist = curr_dist;
		          				shortest_id = id;
		          			}
		          		}
		          	}
		          	hit_player_obj = shortest_id
		          }
		        Finalsmashed = 0  
				canUseCounterTimer = 0
				ComboBreak = 0
				wallSplat = 0 
                   ijab = 0
                   iutilt = 0
                   iftilt = 0
                   idtilt = 0
                   idatk = 0
                   
                   iustrong = 0
                   ifstrong = 0
                   idstrong = 0
                   
                   inair = 0
                   iuair = 0
                   ifair = 0
                   idair = 0
                   ibair = 0
                   
                   inspec = 0
                   iuspec = 0
                   ifspec = 0
                   idspec = 0
               
			}
		tradDummy = 0
		tradDummy = 1
		sound_play(sound_get("Intro1"),false,0,2)
		instance_create(room_width / 2, room_height / 2 + 100,"obj_stage_article", 1)
	}
if get_gameplay_time() == 120{		
roundbegin = -60
shake_camera(5,10)
print("Let's Rock!")
}
///Intro call 

if roundbegin > 0 {
	
	if roundbegin == 160 {
		if random_func(2,8,true) < 5 {
			sound_play(sound_get("Intro2"),false,0,1)
		}
		if random_func(2,8,true) == 5 {
			sound_play(sound_get("Intro3"),false,0,1)
		}
		if random_func(2,8,true) == 6 {
			sound_play(sound_get("Intro4"),false,0,1)
		}
		if random_func(2,8,true) == 7 {
			sound_play(sound_get("Intro5"),false,0,1)
		}
	}

	
	roundbegin -= 1
}


if roundbegin < 0 {
	
	if roundbegin == -60 {
		sound_play(asset_get("sfx_abyss_explosion"),false,0,1)
	}
	
   roundbegin += 1	
}



///Enhance Parry 
with oPlayer { 
	

	
   if Finalsmashed == -4 {
   			    Finalsmashed = 0  
				canUseCounterTimer = 0
				ComboBreak = 0
				wallSplat = 0 
                   ijab = 0
                   iutilt = 0
                   iftilt = 0
                   idtilt = 0
                   idatk = 0
                   
                   iustrong = 0
                   ifstrong = 0
                   idstrong = 0
                   
                   inair = 0
                   iuair = 0
                   ifair = 0
                   idair = 0
                   ibair = 0
                   
                   inspec = 0
                   iuspec = 0
                   ifspec = 0
                   idspec = 0
   }

	if hit_player_obj.state_cat == SC_HITSTUN && hit_player_obj.hitpause != 0 && hit_player_obj.wallSplat <= 0{
			  invincible = true
		      invince_time = 1
	}
   
   if state == PS_PARRY {
	if window_timer == 16 {
		set_state(PS_IDLE)
	}
    }
}
//WALLBREAK


//print(Currstage)

if wsp > 0 {
	wsp -= 1

	
}


if stageroll > 0 {
	stageroll -= 16
	Currstage -= 32
	with oPlayer { 
		 invincible = true
		 invince_time = 1
	}
}

if stageroll < 0 {
	stageroll += 16
	Currstage += 32
	
}

if wallbreak > 0 {
	

	with (asset_get("pHitBox")) {
     destroyed = true 
    }
	CBreak = 0
	counterA = 0
	sound_stop(sound_get("COUNTER"))
	
	wallbreak -= 1
	with oPlayer { 
		ComboBreak = 0
		wallSplat = 0
		
		if hitpause {
			hitstop = 2
		}
	   
	   has_hit_player = false
	   has_hit = false
	   
	   if state_cat == SC_HITSTUN {
	   	 x += floor(((room_width/2 + 100) - x)/12)
	   } else {
	   	window_timer += 0.2
	   	other.wspx = x
	   	x += floor(((room_width/2 - 400) - x)/12)
	   }
	}
}

if wallbreak < 0 {
	

	
	with (asset_get("pHitBox")) {
     destroyed = true 
    }
	wallbreak += 1
	with oPlayer { 
		
		wallSplat = 0
		ComboBreak = 0
        if hitpause {
			hitstop = 2
		}
	   
	    has_hit_player = false
	    has_hit = false
	   
	   	if state_cat == SC_HITSTUN {
	   	 x += floor(((room_width/2 - 100) - x)/12)
	   } else {
	   	window_timer += 0.3
	   	other.wspx = x
	   	x += floor(((room_width/2 + 400) - x)/12)
	   }
	}
}

//
if get_gameplay_time() > 120 {
	
	
	
	if tradMusic != -4  {
		if tradMusic != 0 {
		sound_play(tradMusic)
		tradMusic = 0
		} else {
		music_set_volume(0);
		}
	}
} else {
	if (is_aether_stage()) {
		tradHealth[0] = 200
		tradHealth[1] = 200
		tradHealth[2] = 200
		tradHealth[3] = 200
	} else {
		tradHealth[0] = 300
		tradHealth[1] = 300
		tradHealth[2] = 300
		tradHealth[3] = 300
	}
}


if counterA > 0{
	counterA -=1
}

if CBreak> 0{
	CBreak -=1
}

if counterA > 45{
    
    with oPlayer {
    	if hitpause && state_cat != SC_HITSTUN {
    		other.tradMeterReal[player - 1] += 0.5
    	}
    }
}

if StH > 0{
	StH -=1
}
//print(decay_timer[0])
//print(HealthDBase[0])
//print(player.y)


//tradMeterReal[0] = 100
if get_gameplay_time() > 120 {
	tradMeterReal[0] += meterOvertime
	tradMeterReal[1] += meterOvertime
	tradMeterReal[2] += meterOvertime
	tradMeterReal[3] += meterOvertime
	tradMeter[0] = round(tradMeterReal[0])
	tradMeter[1] = round(tradMeterReal[1])
	tradMeter[2] = round(tradMeterReal[2])
	tradMeter[3] = round(tradMeterReal[3])
	
} 



if tradReset == 0 {
	with oPlayer {
	set_state(PS_PARRY)
    state_timer = 3
    sound_stop(asset_get("sfx_frog_fspecial_charge_gained_1"))
    sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,0,1,1)
	}	
	sound_play(asset_get("mfx_ring_bell"))
	sound_play(asset_get("sfx_frog_gong_hit"))
	
	tradReset = -4
	roundbegin = -60
}

//Start of Game End
with oPlayer { //Determining Players that are real
	if !custom_clone  && !clone{
		if ( is_player_on( player ) ) {
			other.tradTeam[player - 1] = get_player_team( player )
		} else {
			other.tradTeam[player - 1] = -4
		}
	}
}

var i; //Reseting Team Stocks
for (i = 0; i < 4; i++) {
	tradTeamStocks[i] = 0
}

with oPlayer { // Setting Team Stocks
	if !custom_clone  && !clone{
		other.tradTeamStocks[get_player_team( player ) - 1] += get_player_stocks(player)
	}
}

if // Team Stocks
(tradTeamStocks[0] > 0 && tradTeamStocks[1] == 0  && tradTeamStocks[2] == 0 && tradTeamStocks[3] == 0 ) ||
(tradTeamStocks[0] == 0 && tradTeamStocks[1] > 0  && tradTeamStocks[2] == 0 && tradTeamStocks[3] == 0 ) ||
(tradTeamStocks[0] == 0 && tradTeamStocks[1] == 0  && tradTeamStocks[2] > 0 && tradTeamStocks[3] == 0 ) ||
(tradTeamStocks[0] == 0 && tradTeamStocks[1] == 0  && tradTeamStocks[2] == 0 && tradTeamStocks[3] > 0 ) {
	if shouldEndMatch == 0 {
		shouldEndMatch = 1
	}
}


if shouldEndMatch == 1 { //Ring Bell - Game End
	sound_play(asset_get("mfx_ring_bell"))
		sound_play(asset_get("sfx_frog_gong_hit"))
	shouldEndMatch = 2
	
	spawn_hit_fx(tradKilled.x,tradKilled.y - 30,306)
	tradKilled.y = 9999
	end_match();
}
//End of Game End



with oPlayer { //Workshop Random Supers
	if !custom_clone  && !clone{
		if superMove == -4 && "url" in self {
			if "fs_char_chosen_final_smash" in self {
			} else {
			superMove = url
			superMove = real(url);
			superMove %= 13
			}
		}
	}
}

//Start of Display Health
var i;
for (i = 0; i < instance_number(oPlayer); i++) {
	if (is_aether_stage()) == false {
		
		
		if tradReset = 300 && tradHealth[i] >= 300 {
			sound_stop(sound_get("perfect"))
			sound_play(sound_get("perfect"),false,0,1.2)
		}
		
		if tradReset = 300 && tradHealth[i] > 1 && tradHealth[i] < 100 {
			sound_stop(sound_get("close"))
			sound_play(sound_get("close"),false,0,1)
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 300 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 270 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 250 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 220 {
			tradHealth[i] += 1
		}
		

		
		if tradHealth[i] < 0 {
		tradHealth[i] = 0
		} else if tradHealth[i] > 300 {
			tradHealth[i] = 300
		}
		if is_training == true and decay_timer[i] == 0 and tradHealth[i] <= 300{//training mode regen
			tradHealth[i] += 300
			tradHealthD[i] = 300
			HealthDBase[i] = 300
		}
	}
	if (is_aether_stage()) == true {
		
		if tradReset = 300 && tradHealth[i] >= 300/1.5 {
			sound_stop(sound_get("perfect"))
			sound_play(sound_get("perfect"),false,0,1.2)
		}
		
		if tradReset = 300 && tradHealth[i] > 1 && tradHealth[i] < 100/1.5 {
			sound_stop(sound_get("close"))
			sound_play(sound_get("close"),false,0,1)
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 300/1.5 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 270/1.5 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 250/1.5 {
			tradHealth[i] += 1
		}
		
		if tradReset > 0 && tradReset < 160 && tradHealth[i] < 220/1.5 {
			tradHealth[i] += 1
		}
		

		if tradHealth[i] < 0 {
		tradHealth[i] = 0
		} else if tradHealth[i] > 200 {
			tradHealth[i] = 200
		}
		
		if is_training == true and decay_timer[i] == 0 and tradHealth[i] <= 150{//training mode regen
			tradHealth[i] = 200
			tradHealthD[i] = 200
			HealthDBase[i] = 200
		}
	}
}	
//End of Display Health

//Room Reset
if tradReset > 0 {
	
	CBreak = 0
	counterA = 0
	wallSplat = 0
	tradReset -= 1
	 with (asset_get("pHitBox")) {
     destroyed = true 
    }
	with oPlayer {
		
        can_move = false
		if !custom_clone  && !clone{
			
			if free {
			y += 4
			}
			
			if other.tradReset > 260 {
			 hsp = (other.tradReset/200)*spr_dir*-1
			}
			
		if hit_player_obj == -4 or hit_player_obj == self {
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id
		}
		
		if other.tradReset >= 290 {
		if x > hit_player_obj.x {
			spr_dir = -1
			
			if other.tradReset == 299 {
				spawn_hit_fx(floor((x + hit_player_obj.x)/2),floor((y + hit_player_obj.y)/2) - 40,304)

			} 
			
			if other.tradReset > 280 {
				x += floor(30 - (300 - other.tradReset))/2
			} 
			
			
		} else {
			spr_dir = 1
			
			if other.tradReset > 290 {
				x -= floor(30 - (300 - other.tradReset))/2
			} 
		}
		}
		
		
		if other.tradReset > 120 {
              			
              pogArmor = 0
              pogSticky = 0
              pogBlaze = 0
              pogSmoke = 0
              pogAqua = 0
              pogIce = 0
              pogGust = 0
              pogHole = 0 
              pogNinja = 0
              pogFun = 0
              pogHeal = 0
              pogDash = 0 
              pogMash = 0
	
	
			   if player == other.tradKilled {
			   	    
			   	
				    if free {
				    	set_state(PS_PRATFALL)
				    } else {
				    	
				    	if other.tradReset > 160 {
				    	set_state(PS_HITSTUN_LAND)
				    	state_timer -= 1
				    	} else {
				    	    if state != PS_SPAWN {
				    	    	other.roundbegin = 160 
				    	    set_state(PS_SPAWN)
			   	            state_timer = 1
				         	}	
				    	}
				    }
				    
				    
			   } else {
			        if free {
				    	set_state(PS_PRATFALL)
				    } else {
				    	
				    	if state != PS_SPAWN {
				    	    set_state(PS_SPAWN)
			   	            state_timer = 1
				    	}
				    	
				    }
			   }
		}
		
		if other.tradReset == 100 {
			spr_dir *= -1
	        	set_state(PS_TECH_FORWARD)
	        	state_timer = 1
	        	sound_stop(asset_get("sfx_absa_boltcloud"))
	        	sound_play(asset_get("sfx_absa_boltcloud"))
		}

		if other.tradReset == 80 {
			if x > hit_player_obj.x {
			   spr_dir = -1
			} else {
			   spr_dir = 1
			}
		      invincible = true
		      invince_time += 80
	        	set_attack(AT_DTILT)
	        	window = 1
	        	window_timer = 1
	        	strong_charge = 90
	        	sound_stop(asset_get("sfx_spin"))
	        	sound_play(asset_get("sfx_spin"),false,noone,1,1.2)
		}
		
		
		if other.tradReset == 60 {
	        	set_attack(AT_UTILT)
	        	window = 1
	        	window_timer = 1
	        	strong_charge = 90
	        	sound_play(asset_get("sfx_spin"),false,noone,1,1)
		}

		if other.tradReset == 40 {
	        	set_attack(AT_FTILT)
	        	window = 1
	        	window_timer = 1
	        	strong_charge = 90
	        	sound_play(asset_get("sfx_spin"),false,noone,1,0.8)
		}
		
		if other.tradReset < 40 && (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)  {
						if state != PS_SPAWN {
				    	    set_state(PS_SPAWN)
			   	            state_timer = 1
				    	}
			
		}
		if other.tradReset < 140 {
			hsp = 0
			vsp = 0
		}	
	}
		
		
	}
} 
//
//Start Health Decay
var i;
for (i = 0; i < 4; i++) {
	if tradHealthD[0] < 0 {
			tradHealthD[0] = 0
			} else if tradHealth[0] < HealthDBase[0]{
				//print("meow")
				decay_timer[0] = 240
				HealthDBase[0] = tradHealth[0]
			} else if tradHealthD[0] > tradHealth[0] and decay_timer[0] > 0{
				//print("meow")
				decay_timer[0] -= 1
			} else if tradHealthD[0] > tradHealth[0] and decay_timer[0] == 0{
				//print("meow")
				tradHealthD[0] -= 1
			} else if tradHealthD[0] <= tradHealth[0]{
				//print("meow")
				decay_timer[0] = 240
				tradHealthD[0] = tradHealth[0]
			}
	if tradHealth[0] <= 0{
		decay_timer[0] = 0
		HealthDBase[0] = tradHealth[0]
	}
	
	
	
	if tradHealthD[1] < 0 {
			tradHealthD[1] = 0
			} else if tradHealth[1] < HealthDBase[1]{
				//print("meow")
				decay_timer[1] = 240
				HealthDBase[1] = tradHealth[1]
			} else if tradHealthD[1] > tradHealth[1] and decay_timer[1] > 0{
				//print("meow")
				decay_timer[1] -= 1
			} else if tradHealthD[1] > tradHealth[1] and decay_timer[1] == 0{
				//print("meow")
				tradHealthD[1] -= 1
			} else if tradHealthD[1] <= tradHealth[1]{
				//print("meow")
				decay_timer[1] = 240
				tradHealthD[1] = tradHealth[1]
			}
	if tradHealthD[2] < 0 {
			tradHealthD[2] = 0
			} else if tradHealth[2] < HealthDBase[2]{
				//print("meow")
				decay_timer[2] = 240
				HealthDBase[2] = tradHealth[2]
			} else if tradHealthD[2] > tradHealth[2] and decay_timer[2] > 0{
				//print("meow")
				decay_timer[2] -= 1
			} else if tradHealthD[2] > tradHealth[2] and decay_timer[2] == 0{
				//print("meow")
				tradHealthD[2] -= 1
			} else if tradHealthD[2] <= tradHealth[2]{
				//print("meow")
				decay_timer[2] = 240
				tradHealthD[2] = tradHealth[2]
			}
	if tradHealthD[3] < 0 {
			tradHealthD[3] = 0
			} else if tradHealth[3] < HealthDBase[3]{
				//print("meow")
				decay_timer[3] = 240
				HealthDBase[3] = tradHealth[3]
			} else if tradHealthD[3] > tradHealth[3] and decay_timer[3] > 0{
				//print("meow")
				decay_timer[3] -= 1
			} else if tradHealthD[3] > tradHealth[3] and decay_timer[3] == 0{
				//print("meow")
				tradHealthD[3] -= 1
			} else if tradHealthD[3] <= tradHealth[3]{
				//print("meow")
				decay_timer[3] = 240
				tradHealthD[3] = tradHealth[3]
			}
}
//end health decay

//start of meter
var i;
for (i = 0; i < 4; i++) {
	if tradMeter[i] > 100 or is_training == true{
	tradMeter[i] = 100
	}
	
	
	with oPlayer{
	    if other.tradMeterReal[player - 1] > 100 {
	    	other.tradMeterReal[player - 1] = 100
	    }
	}
}
//end of meter


//Start of Player Stuff
with oPlayer {
	
	canUseCounterTimer -= 1
	
			if state_cat != SC_HITSTUN {
				wallSplat = 0
			}
	
	if !custom_clone  && !clone {
		
		if wallSplat == 1 {
			
			shake_camera(4,10)

			
			sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,1,1.2)
			sound_play(asset_get("sfx_blow_heavy2"),false,noone,1.2,0.8)
			
			old_vsp = 0
			vsp = 3
			hsp = 4*spr_dir
			set_state(PS_IDLE)
			state_timer = 0
			wallSplat = 0
		}
		
		if wallSplat > 1 {
			 
            with oPlayer {
            	if player != other.player {
            		if state_cat == SC_HITSTUN {
            			wallSplat = -1
            		}
            	}
            }

	
			if x < room_width/2 {
				spr_dir = 1
			} else {
				spr_dir = -1
			}
			
			if wallSplat == 120 {
				hitstun += 5
				if x < 64 {
					x = 56
				} else if x > 896 {
					x = 904
				}
			}
			
			y = wallSplatY 
			
			if !hitstop {
					hitstun = 5
	    	} 
			
			wallSplat -= 1
			
	if !invincible && hitpause && (hit_player_obj.state == PS_ATTACK_GROUND or hit_player_obj.state == PS_ATTACK_AIR) and hit_player_obj.hitpause = true && hit_player_obj.hit_player_obj = self && hit_player_obj.has_hit_player = true{
				print("! ! WALL BREAK ! !")
				if 	other.stageroll == 0 && canUseCounterTimer <= 0 {
		              
					shake_camera(7,12)
					sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1.6,0.8)
		            sound_play(asset_get("sfx_spin"),false,noone,1.3,0.7)
		            sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,1,1.2)
		            sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1.1,1.2)
		            with other {
		            sound_play(sound_get("mhit3"),false,noone,0.7,1)
		            }
		            take_damage(player,-1,15)
					
					if x < room_width/2 {
						with other {
					    	if Currstage == 4096 {
                        		Currstage = -4096
                        	}
						}
                        other.wallbreak = -40
                        other.stageroll = -512
                        other.wsp = 60
					} else {
                        other.wallbreak = 40 
                        other.stageroll = 512
                        other.wsp = 60
                        
                        with other {
                        	if Currstage == -4096 {
                        		Currstage = 4096
                        	}
                        }
					} 
					
			
					
					wallSplat = 0
				}
				
					
			}
		}


		if wallSplat != -1 && ((Finalsmashed and ComboBreak > 0 && (x < 68 or x > 892)) or ((ComboBreak > 0 && (x < 68 or x > 892)) or (state_cat = SC_HITSTUN && (hsp > 0 && x < 68 || hsp < 0 && x > 892 ) && wallSplat == 0))) {
			print("Wall crack")
			shake_camera(4,20)
			spawn_hit_fx(x,y - 40,304)
			wallSplatY  = y
			wallSplat = 120
			invincible = false
			invince_time = 0

			sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,1,1.6)
			sound_play(asset_get("sfx_blow_heavy2"),false,noone,1.2,1)
			hitpause = true
			hitstop = 120
			ComboBreak = 0
				other.wsp = 90
	            other.wspx = x
	            other.wspy = y
	           
		}
	
	
	/*if state_cat = SC_HITSTUN{
		can_decay = 30
	}
	else{
		can_decay = true
		print("chirp")
	}*/






	//Self Damage for getting out of bounds
	if x < 0 || x > room_width {
		print("Out of area !")
		set_player_damage( player, get_player_damage(player) + 25);	
		x = room_width / 2
		y = 384
	}

	//Supers

	if pogArmor > 0 {
		pogArmor -= 1
		if state_cat == SC_HITSTUN {
			state = PS_IDLE
		}
	}

	if pogShock > 0 {
		pogShock -= 1
		if pogShock % 100 = 99 {
			sound_play(asset_get("sfx_absa_singlezap1"),false,0,1)	
			hitpause = 1
			old_vsp = 0
			old_hsp = 0
			hitstop = 45
			spawn_hit_fx(x,y - 20,304)
		}
		
		if hitstop {
			x -= 4
			if get_gameplay_time() % 2 == 0 {
				x += 8
			}
		}
		
		if pogShock % 100 == 20 && pogShock > 100 {
			sound_play(asset_get("sfx_absa_boltcloud"))
		}
	}
	
	if pogSticky > 0 {
		pogSticky -= 1
		walk_speed = pogStickyWalk * .5
		dash_speed = pogStickyDash * .5
		if state == PS_JUMPSQUAT {
			state = PS_IDLE
		}
	} else {
		if pogStickyWalk = -4 && pogStickyDash = -4 {
			pogStickyWalk = walk_speed
			pogStickyDash = dash_speed
		}
		if pogDash = 0 {
			walk_speed = pogStickyWalk
			dash_speed = pogStickyDash
		}
	}
	
	if pogBlaze > 0 {
		pogBlaze -= 1
		if state_cat != SC_HITSTUN && hitpause && hit_player_obj.ComboBreak == 0 && hit_player_obj.hitpause = true && other.wallbreak == 0{
			
			with hit_player_obj {
			    if wallSplat > 1 {
			    	set_state(PS_IDLE)
			    	wallSplat = -1
			    } else {
			    	wallSplat = -1
			    }	
			       ijab = 0
                   iutilt = 0
                   iftilt = 0
                   idtilt = 0
                   
                   iustrong = 0
                   ifstrong = 0
                   idstrong = 0
                   
                   inair = 0
                   iuair = 0
                   ifair = 0
                   idair = 0
                   ibair = 0
                   
                   inspec = 0
                   iuspec = 0
                   ifspec = 0
                   idspec = 0
                   idatk = 0
			}
			
			if other.tradMeterHit[player - 1] = 0 {
				spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 45, 204)
				sound_stop(asset_get("sfx_burnconsume"))
				sound_play(asset_get("sfx_burnconsume"),false,0,1,1.3 + random_func(1,10,true)/100)
				
				with hit_player_obj {
					take_damage(player,-1,floor(other.hitstop_full))
				}
				
				other.tradMeterHit[player - 1] = 1	
				other.tradMeterReal[player - 1] += hitstop_full*6
				hitstop_full = -1
			}
		} 
	}
	
	if pogBlazeBurn < 5 {
		pogBlazeBurn += 1
	}
	
	if pogSmoke > 0 {
		pogSmoke -= 2
		char_height = 2000
		with oPlayer {
			if !custom_clone  && !clone{
				if player != other.player && y > 220 && state_cat == SC_HITSTUN && get_gameplay_time()%4 == 0 {
					sound_stop(asset_get("sfx_ori_energyhit_weak"))
					sound_play(asset_get("sfx_ori_energyhit_weak"))
					with other {
						pogSmoke -= 2
					   spawn_hit_fx(hit_player_obj.x - 30 + random_func(1,60,true),hit_player_obj.y - random_func(2,60,true),13)
					}
					set_player_damage( player, get_player_damage(player) + 2);	
				}
			}
		}
	} else {
		if pogSmokeHeight = -4 {
			pogSmokeHeight = char_height
		}
		char_height = pogSmokeHeight
	}
	
	if pogAqua > 0 {
		pogAqua -= 1
		if state_cat != SC_HITSTUN && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
			invince_time = 1
			invincible = 1
		} else {
			invincible = 0
		}
	}

	if pogIce > 0 {
		pogIce -= 1
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
			super_armor = 1
		} else {
			super_armor = 0
		}
	}
	
	if pogGust > 0 {
		pogGust -= 0.6
		with oPlayer {
			if !custom_clone  && !clone{
				if (player != other.player) {
				if state_cat == SC_HITSTUN {
					other.pogGust -= 1
					if x > hit_player_obj.x {
					   x += 15
					} else {
					   x -= 15
					}
				}
				
				if state_cat == SC_HITSTUN {
				     ijab = 1
                   iutilt = 1
                   iftilt = 1
                   idtilt = 1
                    idatk = 1
                   
                   iustrong = 1
                   ifstrong = 1
                   idstrong = 1
                   
                   inair = 1
                   iuair = 1
                   ifair = 1
                   idair = 1
                   ibair = 1
                   
                   inspec = 1
                   iuspec = 1
                   ifspec = 1
                   idspec = 1
					
				}
				}
			}
		}
	}
	
	if pogHole > 0 {
		pogHole -= 1
		with oPlayer {
			if !custom_clone  && !clone{
				if player != other.player && !super_armor && !soft_armor {
					hsp = (other.x - x) / 30
					vsp = (other.y - y) / 30
				}
			}
		}
	}
	
	if pogNinja > 0 {
		pogNinja -= 1
		if state_cat != SC_HITSTUN && hitpause && hit_player_obj.ComboBreak == 0 && hit_player_obj.hitpause = true && other.wallbreak == 0{
			pogNinja = 0
			if other.tradMeterHit[player - 1] = 0 {
				spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 45, 120)
				with hit_player_obj {
					wallSplat = -1
					sound_play(asset_get("sfx_ori_energyhit_heavy"))
					spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 40,306)
					take_damage(player,-1,floor(other.hitstop_full + 50))
				}
				hit_player_obj.hitstop += 30
				other.tradMeterHit[player - 1] = 1	
				other.tradMeterReal[player - 1] += 25
				hitstop_full = -1
			}
		} 
	}
	
	if pogFun > 0 {
		pogFun -= 1
		strong_charge = 60
		if state_cat != SC_HITSTUN && hitpause && hit_player_obj.ComboBreak == 0 && hit_player_obj.hitpause = true && other.wallbreak == 0{
		
		with hit_player_obj {
			if hitpause && hitstop == hitstop_full {
				with other {
					spawn_hit_fx(hit_player_obj.x - 10 + random_func(1,20,true),hit_player_obj.y-10 - random_func(2,20,true),123 + random_func(3,7,true))
				}
				other.pogFun -= hitstop_full/2 + 20
				sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.3 + random_func(1,10,true)/100)
				hitstop *= 2
				hitstop += 30
				hitstop_full = -1
			}
		}
		}
	}
	
	if pogHeal > 0 {
		pogHeal -= 1
		if get_gameplay_time() % 10 == 1 {
			other.tradHealth[player - 1] += 1
		}
	}
	
	if pogDash > 0 {
		pogDash -= 1
		walk_speed = pogStickyWalk * 2
		dash_speed = pogStickyDash * 2
		if left_down {
			x -= 3
			hsp -= 0.4
		} 
		
		if right_down {
			x += 3
			hsp += 0.4
		}
	} else {
		if pogStickyWalk = -4 && pogStickyDash = -4 {
			pogStickyWalk = walk_speed
			pogStickyDash = dash_speed
		}
		if pogSticky = 0 {
			walk_speed = pogStickyWalk
			dash_speed = pogStickyDash
		}
	}
	
	if pogMash > 0 {
		move_cooldown[AT_TAUNT] = 0
		hitpause = false
		pogMash -= 4
		
		if pogMash > 40 {
		if attack != AT_TAUNT {
		set_attack(AT_TAUNT)
		window = 1
		window_timer = 1
		}
		
		state = PS_ATTACK_GROUND

		hit_player_obj.hitstopfull = 0
		
		set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 15);
		if attack = AT_TAUNT {
			if window = 2 && window_timer = 4 {
				window = 1
				window_timer = 10
				sound_play(asset_get("sfx_blow_heavy2"))
				shake_camera(8,6)
			}
			if left_down {
				spr_dir = -1
			}
			if right_down {
				spr_dir = 1
			}
		}
		} else {
			set_state(PS_IDLE)
			state_timer = 0
			pogMash = 0
		}
	}
	
	//End of Supers
//hit calc

	if is_aether_stage() == false{
		if state_cat == SC_HITSTUN && !hitpause {
				other.tradMeterReal[player - 1] += 0.1
		} 
		
		if state_cat != SC_HITSTUN && hitpause && has_hit_player {
			if other.tradMeterHit[player - 1] = 0 && hit_player_obj.canUseCounterTimer <= 0 {
				other.tradMeterHit[player - 1] = 1	
				other.tradMeterReal[player - 1] += floor(hit_player_obj.hitstop_full/2)
			}
		} else {
			other.tradMeterHit[player - 1] = 0
		}
	}
	
	if is_aether_stage() == true{
		if state_cat == SC_HITSTUN && !hitpause {
				other.tradMeterReal[player - 1] += 0.15
		} 
		
		if state != SC_HITSTUN && hitpause && has_hit_player {
			if other.tradMeterHit[player - 1] = 0 && hit_player_obj.canUseCounterTimer <= 0 {
				other.tradMeterHit[player - 1] = 1	
				other.tradMeterReal[player - 1] += floor(hit_player_obj.hitstop_full)
			}
		} else {
			other.tradMeterHit[player - 1] = 0
		}
	}
	
//taunt and breakout code	
if taunt_down && down_down {
	move_cooldown[AT_TAUNT] = 0
	} else {
		move_cooldown[AT_TAUNT] = 9999
	}
	
	
	if wallSplat == 0 && taunt_pressed && !hitpause && state_cat == SC_HITSTUN 
	   && other.tradMeterReal[player - 1] >= 25 && invincible != 1 && canUseCounterTimer <= 0{
		spawn_hit_fx(x,y - 35,305)
		
		
	other.tradMeterReal[player - 1] -= (floor(other.tradMeterReal[player - 1]/2))
		
		
		if other.tradMeterReal[player - 1] >= 100 {
			other.tradMeterReal[player - 1] = 50
		}
		
		shake_camera (2,2)
		
		vsp = -2
        hitstun += 5
		
		old_vsp = -2
		
		if x < hit_player_obj.x {
		old_hsp = -11
		hsp = -11
		} else {
		old_hsp = 11
		hsp = 11	
		}
		
		wallSplat = -1
			invincible = 1
			invince_time += 30

		sound_play(asset_get("sfx_quick_dodge"))
		sound_play(asset_get("sfx_bird_sidespecial_start"))
		sound_play(asset_get("sfx_spin"),false,noone,1,0.7)
		
		print("! ! ! Break Out ! ! !")
	}
	
	
/* Killing
if other.tradHealth[player - 1] <= 0 {
		y = room_height * 2
	}
*/


if other.tradHealth[player - 1] <= 0 && other.tradReset <= 0 and other.is_training == false && canUseCounterTimer <= 0{
	hitpause = false
	if other.tradReset == -4 {
		print("A KNOCK OUT!")
		sound_play(asset_get("sfx_death1"))
		//if get_player_stocks(player) <= 1{
		//	spawn_hit_fx( x, y, ko );
		//}
		set_player_stocks(player, get_player_stocks(player) - 1)
		other.tradKilled = player
		other.tradReset = 300
		
		shake_camera(12,40)
		
		with other {
			if random_func(1,4,true) ==  0 {
				sound_play(sound_get("KO"))
			}
			if random_func(1,4,true) ==  1 {
				sound_play(sound_get("DT"))
			}
			if random_func(1,4,true) ==  2 {
				sound_play(sound_get("DF"))
			}
			if random_func(1,4,true) ==  3 {
				sound_play(sound_get("RT"))
			}
		}
	}
}


//Start Percent Reset
if get_player_damage( player ) != other.playerDamage { 
	other.tradHealth[player - 1] -= (get_player_damage( player ) - other.playerDamage)
}

set_player_damage( player, other.playerDamage);	
//End of Percent Reset
	
	//Start Super Usage
	
	if taunt_pressed && state != PS_PRATFALL && state_cat != SC_HITSTUN && invincible != 1 && other.tradMeter[player - 1] = 100 && other.tradReset == -4 && state != PS_PARRY{
		
		clear_button_buffer(PC_TAUNT_PRESSED);
		print("! ! ! Super ! ! !")
		
		if superMove = -4 && "url" in self {
			if "fs_char_chosen_final_smash" in self {
				if fs_char_chosen_final_smash = "custom" {
					print("!Use Final Smash!")
					set_attack(49)
					window = 1
					window_timer = 0
					other.tradMeter[player - 1] = 0
					sound_play(asset_get("sfx_frog_fspecial_charge_full"))
					hit_player_obj.canUseCounterTimer = 300
				} else {
					superMove = random_func(1, 14, true)
					print("Random Super")
				}
				
			} else {
			superMove = random_func(1, 14, true)
			print("Random Super")
			}
		}
		
		other.superUser = player
		if basePortrait = -4 {
		other.superPortrait = get_char_info(player, INFO_PORTRAIT)
		} else {
		other.superPortrait = basePortrait	
		}
		other.superPortraitTimer = 30
		if x < room_width/2 {
			other.superPside = 1
		} else {
			other.superPside = -1
		}
		other.tradMeter[player - 1] = 0
		other.tradMeterReal[player - 1] = 0
		superTrue = 1

//Base CastSupers--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		switch(superMove) { 
		case 0: //Zetter Burn
			pogBlaze = 240
			shake_camera(6,8)
			sound_play(asset_get("sfx_burnconsume"),false,0,1)
			with oPlayer {
				
				if !custom_clone  && !clone{
					if player != other.player {
						pogBlazeBurn = 0
					}
				}
			}
		break; 
		case 1:	//Orcane
		        shake_camera(6,8)
			    sound_play(asset_get("sfx_orca_absorb"),false,0,1)
			pogAqua += 450
		break;
		case 2:	//Wrastor
				      shake_camera(6,8)
			    sound_play(asset_get("sfx_bird_screech"),false,0,1)
			    sound_play(asset_get("sfx_bird_nspecial"),false,0,1)
			pogGustStart = spr_dir
			pogGust += 600
		break;
		case 3:	//Kragg
						shake_camera(6,8)
			    sound_play(asset_get("sfx_kragg_rock_pillar"),false,0,1)
			pogArmor += 600
		break;
		case 4:	//Forsburn
				shake_camera(6,8)
			    sound_play(asset_get("sfx_abyss_explosion"),false,0,1)
			pogSmoke += 600
		break;
		case 5:	//Maypul
			pogHeal += 600
				shake_camera(6,8)
			    sound_play(asset_get("sfx_diamond_collect"),false,0,1)	
		break;
		case 6:
				shake_camera(6,8)
				sound_play(asset_get("sfx_absa_singlezap1"),false,0,1)			
			    sound_play(asset_get("sfx_absa_concentrate"),false,0,1)	
			with oPlayer {
				if !custom_clone  && !clone{
					if player != other.player {
						pogShock += 630
					}
				}
			}
		break;
		case 7:	//Etalus
				shake_camera(6,8)
				sound_play(asset_get("sfx_icehit_heavy2"),false,0,1)	
				sound_play(asset_get("sfx_ice_dspecial_form"),false,0,1)
			pogIce += 720
		break;
		case 8:	//Ori
				shake_camera(6,8)
				sound_play(asset_get("sfx_boss_vortex_end"),false,0,1)		
			pogHole += 450
		break;
		case 9:	//Ranno
		
		shake_camera(6,8)
		spawn_hit_fx(x,y-40,302)
			sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,0,1)
			pogNinjaTarget = instance_furthest( x, y, oPlayer )
			x = pogNinjaTarget.x - pogNinjaTarget.spr_dir * 30
			y = pogNinjaTarget.y
			spr_dir = pogNinjaTarget.spr_dir
			pogNinja += 120
			hitpause = 1
			hitstop = 15
			set_state(PS_IDLE)
		break;
		
		case 10:	//Clairen
        	shake_camera(6,8)
        	sound_play(asset_get("sfx_ori_energyhit_heavy"))
			sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,0,1,1.15)	
			pogFun += 600
			
		break;
		
		case 11:	//Sylvanos
        	shake_camera(6,8)
			sound_play(asset_get("sfx_syl_dspecial_howl"),false,0,1)	
			pogDash += 900
		break;
		case 12:
			with oPlayer {
			shake_camera(6,8)
			sound_play(asset_get("sfx_crunch"),false,0,1)	
				if !custom_clone  && !clone{
					if player != other.player {
						pogSticky = 900
					}
				}
			}
		break;
		case 13:	//Shovel Knight
	    	shake_camera(6,8)
			sound_play(asset_get("sfx_coin_capture"),false,0,1)
			pogMash = 480
		break;
		default:
		break;
		}
//Base CastSupers--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		
	//EndSuper Usage
	
	}
	}
}

with oPlayer {
		if !custom_clone  && !clone{
			if url = CH_ZETTERBURN { // We're about to get funky fresh with no switch statements cause it was annoying me that it wasn't working. Sorry lol
			baseHud = 0
			superMove = 0
				with other {
					other.basePortrait = sprite_get("zetterburn")
				}
			}
			if url = CH_ORCANE {
			baseHud = 1
			superMove = 1
				with other {
					other.basePortrait = sprite_get("orcane")
				}
			}
			if url = CH_WRASTOR {
			baseHud = 2
			superMove = 2
				with other {
					other.basePortrait = sprite_get("wrastor")
				}
			}
			if url = CH_KRAGG {
			baseHud = 3
			superMove = 3
				with other {
					other.basePortrait = sprite_get("kragg")
				}
			}
			if url = CH_FORSBURN {
			baseHud = 4
			superMove = 4
				with other {
					other.basePortrait = sprite_get("forsburn")
				}
			}
			if url = CH_MAYPUL {
			baseHud = 5
			superMove = 5
				with other {
					other.basePortrait = sprite_get("maypul")
				}
			}
			if url = CH_ABSA {
			baseHud = 6
			superMove = 6
				with other {
					other.basePortrait = sprite_get("absa")
				}
			}
			if url = CH_ETALUS {
			baseHud = 7
			superMove = 7
				with other {
					other.basePortrait = sprite_get("etalus")
				}
			}
			if url = CH_ORI {
			baseHud = 8
			superMove = 8
				with other {
					other.basePortrait = sprite_get("ori")
				}
			}
			if url = CH_RANNO {
			baseHud = 9
			superMove = 9
				with other {
					other.basePortrait = sprite_get("ranno")
				}
			}
			if url = CH_CLAIREN {
			baseHud = 10
			superMove = 10
				with other {
					other.basePortrait = sprite_get("clairen")
				}
			}
			if url = CH_SYLVANOS {
			baseHud = 11
			superMove = 11
				with other {
					other.basePortrait = sprite_get("sylvanos")
				}
			}
			if url = CH_ELLIANA {
			baseHud = 12
			superMove = 12
				with other {
					other.basePortrait = sprite_get("elliana")
				}
			}
			if url = CH_SHOVEL_KNIGHT {
			baseHud = 13
			superMove = 13
				with other {
					other.basePortrait = sprite_get("shovel")
				}
		}	
	}
}

//Visuals-------------------------------------------------------------------------

//Combo break
with oPlayer{
	
	
	
	if hit_player_obj == -4 {
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	}
	if ComboBreak == 1 {
		hitstop = 0
		hitpause = 0
		ComboBreak = 0
		
	}
	
	if ComboBreak > 1 {
		
		
			
		spawn_hit_fx(x - 10 + random_func(1,20,true),y-10 - random_func(2,20,true),14)
		
		if ComboBreak == 30 {
			invincible = 1
			invince_time += 30
			if old_hsp < 0 && spr_dir == -1 {
				old_hsp = 2
			}
			if old_hsp > 0 && spr_dir == 1 {
				old_hsp = -2
			}
            old_hsp *= 2
            old_vsp *= 2
			shake_camera(8,15)
            other.CBreak = 50
		other.anox = hit_player_obj.x
        other.anoy = hit_player_obj.y - 40
			print("Combo Break")
		spawn_hit_fx(x,y - 30,306)
		take_damage(player,-1,5)
		sound_play(asset_get("sfx_spin"),false,noone,1.3,0.7)
		sound_play(asset_get("sfx_bird_dspecial"),false,noone,1.3,0.8)
		sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,1.1,0.6)
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1.1,0.8)
		}    
		

		     	 	  
		     	 	  ComboBreak -= 2

		     	 	   x -= 2*spr_dir
		     	 	   
		     	 	   x -= 4
		     	 	   
		     	 	   if ComboBreak %2 == 0 {
		     	 	   	x += 8
		     	 	   }
		     	 	   
		     	 	   hit_player_obj.hitstop = 2
		     	 	   hitstop = 2
		     	 	   
		     	 	   hit_player_obj.has_hit = 0
		     	 	   hit_player_obj.has_hit_player = 0
		     	 	   
		     	 	   hit_player_obj.old_hsp = old_hsp*-1

		     	 	   

		     	 	   
		     	 		x += floor(old_hsp) 
		     	 		hit_player_obj.x -= floor(old_hsp/6) 
		     	 		y += floor(old_vsp) 

	}
	
	if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && window == 1 && window_timer = 1{
		Tradrefresh = 1
		has_hit_player = false
	}
	
	with hit_player_obj {
		
		if hit_player_obj == other {
			     
			
				if state_cat != SC_HITSTUN {
		
		           ijab = 0
                   iutilt = 0
                   iftilt = 0
                   idtilt = 0
                   
                   iustrong = 0
                   ifstrong = 0
                   idstrong = 0
                   
                   inair = 0
                   iuair = 0
                   ifair = 0
                   idair = 0
                   ibair = 0
                   
                   inspec = 0
                   iuspec = 0
                   ifspec = 0
                   idspec = 0
                   idatk = 0
                   
	           } else {

		    	if !hitpause {
		    		switch last_attack {
		    			

		    			
		    			case AT_JAB :
		    			ijab += 1
		    			break;
		    			
		    			case AT_UTILT :
		    			iutilt += 1
		    			break;
		    		
		    			case AT_FTILT :
		    			iftilt += 1
		    			break;	
		    			
		    			case AT_DTILT :
		    			idtilt += 1
		    			break;	
		    			
		    			case AT_DATTACK :
		    			idatk += 1
		    			break;
		    			
		    			///
		    			
		    			case AT_USTRONG :
		    			iustrong += 1
		    			break;
		    			
		    			case AT_FSTRONG :
		    			ifstrong += 1
		    			break;
		    			
		    			case AT_DSTRONG :
		    			idstrong += 1
		    			break;
		    			
		    			///
		    			
		    			case AT_NAIR :
		    			inair += 1
		    			break;
		    			
		    			case AT_UAIR :
		    			iuair += 1
		    			break;
		    			
		    			case AT_FAIR :
		    			ifair += 1
		    			break;
		    			
		    			case AT_BAIR :
		    			ibair += 1
		    			break;
		    			
		    			case AT_DAIR :
		    			idair += 1
		    			break;
		    			
		    			///
		    			
		    			case AT_NSPECIAL :
		    			inspec += 1
		    			break;
		    			
		    			case AT_USPECIAL :
		    			iuspec += 1
		    			break;
		    			
		    			case AT_FSPECIAL :
		    			ifspec += 1
		    			break;
		    			
		    			case AT_DSPECIAL :
		    			idspec += 1
		    			break;
		    		}
	    		
		    	}
		    	
		    	
		    	
		     if hitpause && hit_player_obj.hitpause = true && hit_player_obj.Tradrefresh == 1 && canUseCounterTimer <= 0{
		     	 if last_attack == AT_JAB && ijab >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_UTILT && iutilt >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_FTILT && iftilt >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_DTILT && idtilt >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_DATTACK && idatk >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }		     	 
		     	 ///
		     	 if last_attack == AT_USTRONG && iustrong >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_FSTRONG && ifstrong >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_DSTRONG && idstrong >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 ///
		     	 if last_attack == AT_NAIR && inair >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_UAIR && iuair >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_FAIR && ifair >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_BAIR && ibair >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_DAIR && idair >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 ///
		     	 if last_attack == AT_NSPECIAL && inspec >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_USPECIAL && iuspec >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_FSPECIAL && ifspec >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     	 if last_attack == AT_DSPECIAL && idspec >= 1 {//stale
		     	 	 ComboBreak = 30
		     	 }
		     }
		
	    }
	
	}
	
}


	if has_hit_player && hitpause  {
		
		djumps = 0
		
		if Tradrefresh == 1  {
               ///possible combo counter
		}
		
		Tradrefresh += 1
	}

}

with oPlayer{
//Stairway to Heaven

	if y <= 0 && !hitstop{
       print("Mind your head")
       ComboBreak = 0
       take_damage(player,-1,10)
       
        if state_cat != SC_HITSTUN {
        	set_state(PS_IDLE)
        } else {
        	hitstun += 3
        }
        
        y = 2
        
		
		
		if x > hit_player_obj.x {
		old_hsp = 15 
		hsp = 15 
		} else {
		old_hsp = -15
		hsp = -15 
		}
		
		old_vsp = 15
		vsp = 15
        spawn_hit_fx(x,y-40,302)
		
		other.StH = 50
		shake_camera(10,10)
		sound_stop(asset_get("sfx_blow_medium3"))
		sound_play(other.BONG)
		
	}
}

//COUNTER
if counter_dong == "go"{
	counter_dong = "stop"
	sound_play(sound_get("COUNTER"),false,0,1,0.95 + random_func(3,10,true)/100)
	spawn_hit_fx(anox, anoy, counterF)
	//print("oink")
	counterA = 50
}

with oPlayer{
	if (state_cat == SC_HITSTUN) and (prev_state == PS_ATTACK_GROUND or prev_state == PS_ATTACK_AIR or prev_state == PS_PRATFALL or prev_state == PS_PRATLAND) and hit_player_obj.hitpause = true{
		prev_state = PS_HITSTUN
		
		if hitstop < 15 {
		hitstop += 15
		hit_player_obj.hitstop += 15
		}
		
		        sound_stop(asset_get("sfx_ori_energyhit_heavy"))
				sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1.1,1)
				shake_camera(8,15)
		other.counter_dong = "go"
		other.anox = hit_player_obj.x
        other.anoy = hit_player_obj.y - 40
		print("COUNTER")
	}
	
	
}
/*if (oPlayer.state == PS_HITSTUN) and (oPlayer.prev_state == PS_ATTACK_GROUND){
		oPlayer.prev_state = PS_HITSTUN
		sound_play(asset_get("sfx_bird_screech"),false,noone,4)
		print("COUNTER")
			
}

if (oPlayer.state == PS_HITSTUN) and (oPlayer.prev_state == PS_ATTACK_AIR){
		oPlayer.prev_state = PS_HITSTUN
		sound_play(asset_get("sfx_bird_screech"),false,noone,4)
		print("COUNTER")
}*/


//if oPlayer.id.y < -100{

//}

//print(counter_play)
