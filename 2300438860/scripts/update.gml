//\



if cosmetic == 0 {
    with (pHitBox) {
    	if player_id == other.id {
            hit_effect = 301
    	}
    }
    sound_stop(asset_get("sfx_ice_shieldup"))
    sound_stop(asset_get("sfx_ice_on_player"))
    sound_stop(asset_get("sfx_shovel_swing_heavy1"))
    sound_stop(asset_get("sfx_shovel_swing_heavy2"))
    sound_stop(sound_get("slice"))
    sound_stop(sound_get("slicel"))
    sound_stop(sound_get("hweak"))
    sound_stop(sound_get("hmed"))
    sound_stop(sound_get("hstrong"))
    sound_stop(sound_get("hextra"))
    sound_stop(sound_get("hcine"))
    sound_stop(sound_get("fstrong2"))
    sound_stop(sound_get("uspec"))

}


 if cheapmode == 0 && get_gameplay_time() < 60 {
 
 with(asset_get("oPlayer")){ 
 	if url != "2273636433" && url != "1870768156"
	&& url != "1869351026" && url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("OP ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("Jo", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or url == "2159023588"
	or url == "1980469422"
	){
       other.cheapmode = 1 
       other.hit_player_obj = self 
     }    
 }
 } 
 
 
 if cheapmode == 1 && get_gameplay_time() < 600 {
 	if attack == AT_NSPECIAL or get_player_damage(player) > 50 or state == PS_RESPAWN {
 		cheapmode = 3
        shake_camera(10,10)
        sound_play(sound_get("fspec3"),false,noone,1,1)
        sound_play(sound_get("hcine"),false,noone,1,1)
 	}
 }


 if cheapmode == 3 {
   
   with oPlayer  {
 		super = 0 
 	}
 	
   if state == PS_RESPAWN {
 				state_timer = 120
 				visible = true 
 				with oPlayer  {
 					if self != other {
 						set_player_stocks(other.player, get_player_stocks(player) + 1)
 					    end_match()
 					}
 				}
   }
 	
   with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y+12, 54 + abs(hsp) + abs(vsp),other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	damage += 999
	    	
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	

	    	
	    	with other {
	    		
            sound_stop(sound_get("fspec3")); 
            sound_play(sound_get("fspec3")); 
            shake_camera(4, 6)
	    		
	    	}
	    	
            fx = spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	fx.pause = 6 
			//hsp = (player_id.x - x)/35
			//vsp = (player_id.y - 30 - y)/35
			hsp = (player_id.x - x)/10
			vsp = (player_id.y - 30 - y)/10
			spr_dir *= -1
			
			
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	}
	
 	if attacking {
 		perfect_dodging = true
 	}
 	
 	visible = true 
 	
 	if state_cat == SC_HITSTUN {
 		perfect_dodging = true
 	}
 	
 	with pHitBox {
 		if player_id = other.id {
 		kb_value = 200
 		kb_scale = 1
 		damage = 999
 		} else {
 		kb_value = 3
 		kb_scale = 0	
 		}
 	}
 	
 	if has_hit_player && !hitpause && (hit_player_obj.state != PS_RESPAWN or hit_player_obj.state != PS_DEAD) && attacking{
 		hit_player_obj.y = 99999
 		has_hit_player = false 
 	}
 	
 	init_shader()
 }
 
 
with oPlayer {
	if "rollcount" not in self {
		rollcount = 0
	}
    if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD {
    	if state_timer == 1 rollcount ++ 
    	if rollcount == 4 {
    		//y = 999999
    	}
    }
    
    if free {
    	rollcount = 0
    }
}

if state_cat == SC_HITSTUN && gudhit == 1 && !hitpause {
	vsp = -15
	hitstun += 30
	gudhit = 0
	hsp *= 3
}

if move_cooldown[AT_FTILT] > 1{
	if state != PS_HITSTUN {
		state = PS_HITSTUN
	}
	x = ohsp + (1 - (get_gameplay_time()%3))*5
	y = ovsp 
}

if !hitstop {
	move_cooldown[AT_FTILT] = 0
}
if move_cooldown[AT_FTILT] == 1{ 
	move_cooldown[AT_FTILT] = 0
}

if !hitpause {
	if get_gameplay_time() %2 == 0
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if get_gameplay_time() <= 1 {
	x += 40*spr_dir
	set_attack(AT_EXTRA_3)
	window = 1
	window_timer = 0
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if attackbar != 0 or barpause {
	suppress_stage_music( 0.3, 0.05 );
}

if attackbar != 0 && !hitpause && state_cat != SC_HITSTUN{
	
	///with (pHitBox) {
    ///    enemies = 1
    /// }
	        	
		//if get_gameplay_time() % 2 == 0 {
		//shake_camera (1,1)
		//}
			
		
	if barpause <= 0 {	
	attackbar += 1 
	} else {
		////if left_down && !right_down {
		////	x -= 3
		////	hsp -= 0.1
		////}
		////if !left_down && right_down {
		////	x += 3
		////	hsp += 0.1
		////}
		barpause -= 1
	}
	
if attackbar >= 20 && attackbar < 50 {
    dmgmul = 1.5
}

if attackbar >= 50 && attackbar < 75 {
    dmgmul = 2
}

if attackbar >= 75 && attackbar < 105 {
    dmgmul = 3
}

if attackbar >= 105 && attackbar < 128 {
    dmgmul = 2
}

if attackbar >= 128 && attackbar < 158 {
    dmgmul = 1.5
}

if attackbar < 20 or attackbar > 158 {
    dmgmul = 0
}

}

if attackbar == 180 {
	attackbar = 0
	shake_camera (2,4)
	sound_play(sound_get("nspecdis"))
	 move_cooldown [AT_NSPECIAL] = 180
}

if attackbar == 0 and attack != AT_TAUNT {
	sound_stop(cur_sound)
	barpause = 0
}

if (move_cooldown [AT_NSPECIAL] = 179 or move_cooldown [AT_NSPECIAL] = 269) && heartbroke = 0 {
	
	heartbroke = 1
	spawn_hit_fx (x,y + 16, hb1)
	 sound_play(sound_get("fstrong1"),false,noone,0.4)
	 	sound_stop(cur_sound)
}

if move_cooldown [AT_NSPECIAL] = 181 {
	move_cooldown [AT_NSPECIAL] = 177
}

if move_cooldown [AT_NSPECIAL] == 15 && heartbroke = 1{
	spawn_hit_fx (x,y + 16, hb2)
	 sound_play(sound_get("fstrong2"),false,noone,0.4)
}

if move_cooldown[AT_NSPECIAL] = 0 {
		heartbroke = 0
}

if move_cooldown[AT_NSPECIAL] > 1 && move_cooldown[AT_NSPECIAL] < 15 && heartbroke = 1{
alt = get_player_color(player);

Rline = get_color_profile_slot_r ( alt , 0 )
Gline = get_color_profile_slot_g ( alt , 0 )
Bline = get_color_profile_slot_b ( alt , 0 )

			outline_color = [move_cooldown[AT_NSPECIAL]/5 * Rline , 
			move_cooldown[AT_NSPECIAL]/15 * Gline, 
			move_cooldown[AT_NSPECIAL]/15 * Bline]

}
init_shader();

if move_cooldown[AT_NSPECIAL] == 1 {
				outline_color = [0,0,0]
}
init_shader();

if esave > 1 && !hitpause{
	esave -= 1
	move_cooldown[AT_DSTRONG] = 2
	
	if saveid.state == PS_DEAD or saveid.state == PS_RESPAWN {
	esave = 0
    }  

}



if state == PS_AIR_DODGE && state_timer == 2{
	sound_play(sound_get("ting"))
}

if esave == 2 {
	shake_camera (2,4)
	sound_play(sound_get("ting"))
	spawn_hit_fx (saveid.x, saveid.y - 20, 302)
	saveid.x = esavex
	saveid.y = esavey
	esave = 0
}




if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	mask_index = sprite_get("stand_box");
	attacking = false
	specialing = 0
}




if (state == PS_WALL_JUMP){
	wjcap += 1
move_cooldown[AT_DSPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
}
if !free {
	wjcap = 0
	move_cooldown[AT_DSPECIAL] = 0
}

if wjcap > 0 {
	has_walljump = false
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 13{
	 	if state_timer % 7 == 0 {
	 	sound_play(sound_get("click"));	
	 	}
	     hsp = -6 * spr_dir
	 }
	 
	 if state_timer >= 13 and state_timer < 15 {
	     hsp = (-20)* spr_dir
	 }
	 if state_timer >= 4 and state_timer < 18 {
	 }
	  
	 if state_timer == 18 {
	 	sound_play(sound_get("click"));	
	     hsp = 0
	 }
	 
}


if get_player_color(player) = 13 {
	if finishercd == 0 {
	hue += 4
	} else {
		hue += 0.5
	}
	
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around
	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
}
init_shader();


/////////music

if songcd > 50 {
	songcd -= 1
	  suppress_stage_music(0.4, 0.05 );
}


if songcd == 120 {
	 	var volume = 0;
        volume = get_local_setting(3)*1.2;
        
	if songplay % 12 == 0 {
			sound_stop(sound_get("megalo12"))
	sound_play(sound_get("megalo1"),false,noone,volume*1)
	}
	if songplay % 12 == 1 {
		sound_stop(sound_get("megalo1"))
	sound_play(sound_get("megalo2"),false,noone,volume*1)	
	}
	if songplay % 12 == 2 {
			sound_stop(sound_get("megalo2"))
	sound_play(sound_get("megalo3"),false,noone,volume*1)	
	}
	if songplay % 12 == 3 {
		sound_stop(sound_get("megalo3"))	
	sound_play(sound_get("megalo4"),false,noone,volume*0.84)	
	}
	if songplay % 12 == 4 {
		sound_stop(sound_get("megalo4"))	
	sound_play(sound_get("megalo5"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 5 {
		sound_stop(sound_get("megalo5"))	
	sound_play(sound_get("megalo6"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 6 {
		sound_stop(sound_get("megalo6"))	
	sound_play(sound_get("megalo7"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 7 {
		sound_stop(sound_get("megalo7"))	
	sound_play(sound_get("megalo8"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 8 {
		sound_stop(sound_get("megalo8"))	
	sound_play(sound_get("megalo9"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 9 {
		sound_stop(sound_get("megalo9"))	
	sound_play(sound_get("megalo10"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 10 {
		sound_stop(sound_get("megalo10"))	
	sound_play(sound_get("megalo11"),false,noone,volume*0.84)	
	}
		if songplay % 12 == 11 {
		sound_stop(sound_get("megalo11"))	
	sound_play(sound_get("megalo12"),false,noone,volume*0.84)	
	}
}

if get_player_color(player) == 15 {
	
	if !free && hsp = 0 && state_cat != SC_HITSTUN && !attacking{
		songcd2 = 0
		sound_stop(sound_get("bl1"))
		sound_stop(sound_get("bl2"))
	}
	if (free or hsp != 0 or attacking) && state_cat != SC_HITSTUN {
				  suppress_stage_music(0.5, 0.05 );
    }
	if songcd2 != 0 {
		songcd2 -= 1
	}
	
	if (free or hsp != 0 or attacking) && state_cat != SC_HITSTUN{
		  suppress_stage_music(0.8, 0.05 );	
	}
	if (free or hsp != 0 or attacking) && songcd2 == 0 {
		sound_play(sound_get("bl1"),false,noone,0.6)
        songcd2 = 94
	} 
}


if get_gameplay_time() <= 120 && cosmetic == 0 {


	//if taunt_down {
		//sound_play(asset_get("sfx_gem_collect"));
		with oPlayer {
		 if "wjcap" in self {
		 	cosmetic = 1
		 }
		}
	//}
	
}



if instance_number(oPlayer) == 2 {


if finishercd == 0 {
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	with other {
  		galx = x
        galy = y
        if svsp < 3 && svsp > 0 {
        svsp = 3
        }
      
        if svsp > -3 && svsp < 0 {
        svsp = -3
        }
        
        if shsp < 6 && shsp > 0 {
        shsp = 6
        }
      
        if shsp > -6 && shsp < 0 {
        shsp = -6
        }
        
  	    finisher = 60 
  	    finishercd = 120 
  	    finisherinc = 0
  	}
  }
}
}


if finisher = 60 {
	if hitpause  {
		hitstop += 30
		hit_player_obj.hitstop += 30
	}
    sound_stop(sound_get("hcine"))
    sound_play(sound_get("hcine"),false,noone,1)
    sound_stop(sound_get("hstrong"))
    sound_play(sound_get("hstrong"),false,noone,1)
    sound_play(sound_get("fstrong1"),false,noone,1)
    
}

if finisher = 40 {
    sound_play(sound_get("hstrong"),false,noone,0.6)
    sound_play(sound_get("fstrong1"),false,noone,0.6)
}

if finisher = 20 {

    sound_play(sound_get("hstrong"),false,noone,0.2)
    sound_play(sound_get("fstrong1"),false,noone,0.2)
}



 if finisher > 0{
	finisher -= 1
	if finisherinc < 24 {
	finisherinc += 1
	}
}


}



if cosmetic = 0{
neointro = -1
}

if(neointro == 0) && cosmetic = 1{

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
			
var spr = get_char_info(player, INFO_CHARSELECT);
var img = select;
	
	if string_count("omori", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Hoh ? Is that a TOY knife ?"
        neointro2 = "Real confident aren't cha ?"
        neointro3 = ""
	}
			
	if string_count("reimu", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Oh, so I'm a demon ? "
        neointro2 = "Good luck exterminating me then."
        neointro3 = ""
	}		
			
	if string_count("anglara", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "A fish... monster... person..."
        neointro2 = "Oh, you're bringing back a bad memory..."
        neointro3 = ""
	}
	
	if string_count("callie", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Aw... c'mon.."
        neointro2 = "Show me some of that LOVE !"
        neointro3 = ""
	}
	
	if string_count("kris", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Hello there, strange not-stranger"
        neointro2 = "What does your DSPECIAL do again ?"
        neointro3 = ""
	}
	
	if string_count("clover", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "That's called... a gun?"
        neointro2 = "Humans just keep getting better "
        neointro3 = "at killing themselves, don't they?"
	}
	
	if string_count("ralsei", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Oh... "
        neointro2 = "I like you already. "
        neointro3 = " "
	}
	
	if string_count("sans", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "How many times do I have to "
        neointro2 = "teach you this lesson, old man? "
        neointro3 = ""
	}

	if string_count("astra", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "I didn't come here to play a "
        neointro2 = "children's card game, Mrs. Fox "
        neointro3 = ""
	}

	if string_count("acidrainbow", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "That's a huge sword you rarely use."
        neointro2 = "What a wasted potential."
        neointro3 = ""
	}

	if string_count("tenru", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Mmmhmmm~"
        neointro2 = "monke..."
        neointro3 = ""
	}

	if string_count("hodan", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Mmmhmmm~"
        neointro2 = "monke..."
        neointro3 = ""
	}

	if string_count("Ao", get_char_info(shortest_id.player, INFO_STR_NAME) ) > 0 {
		neointro = 1
        neointro1 = "Oh... a monster who isn't made of dust."
        neointro2 = "Would you be more durable than them..?"
        neointro3 = "I wonder..."
	}

	if string_count("ceae", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Oh... a monster who isn't made of dust."
        neointro2 = "Would you be more durable than them..?"
        neointro3 = "I wonder..."
	}

	if string_count("feri", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Oh... a monster who isn't made of dust."
        neointro2 = "Would you be more durable than them..?"
        neointro3 = "I wonder..."
	}

	if string_count("mystia", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "You are singing.."
        neointro2 = "Bird are singing...."
        neointro3 = "On days like these......"
	}


	
	if string_count("hime", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "That knife you hold..."
        neointro2 = "Have you fallen down as well?"
        neointro3 = ""
	}
	
    if string_count("cupcake", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "Uh... Another goat..."
        neointro2 = "Can't believe I have to stab another one."
        neointro3 = ""
	}
	
	if string_count("crewmate", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "What's so funny"
        neointro2 = "about Sus Sus Amogus?"
        neointro3 = ""
	}

	if string_count("papyrus", string_lower( get_char_info(shortest_id.player, INFO_STR_NAME) )) > 0 {
		neointro = 1
        neointro1 = "What a believer you are..."
        neointro2 = "I will enjoy crushing your trust."
        neointro3 = "Again... and again..."
	}
	
	if x < shortest_id.x {
		neoside = -1
	} else {
		neoside = 1
	}

}

if neointro > 0 {
	neointro += 1
	
	if neointro >= 420 {
		neointro = -1
	}
}

