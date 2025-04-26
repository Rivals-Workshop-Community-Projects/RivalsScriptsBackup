//update

//tTimer = (tTimer + 200);
//
        intimer++
        if instance_exists(dimentio1) or instance_exists(dimentio2){
        	
hud_offset = 9999999999
        }
        
        if state = PS_ATTACK_GROUND and attack = AT_TAUNT {
        	
hud_offset = 100
        }
        if intimer = 18 and state = PS_SPAWN{
        	var _h = instance_create(x,y-40,"obj_article1");
	_h.articletype = "TPSquare"
	_h.state = "GOTOD"
	sound_play(sound_get("MAGICTP"))
        	
        }
has_walljump = false
if state = PS_PARRY {
	if state_timer == 0 {
		if instance_exists(dimentio1) and instance_exists(dimentio2){
        	var _h = instance_create(dimentio1.x,dimentio1.y-40,"obj_article1");
	_h.articletype = "TPSquare"
        	var _h = instance_create(dimentio2.x,dimentio2.y-40,"obj_article1");
	_h.articletype = "TPSquare"
		}
        	var _h = instance_create(x,y-40,"obj_article1");
	_h.articletype = "TPSquare"
	}
}

if state != PS_WALL_JUMP and walljumpsused == 0 and ((hovering == 0 and washovering == 1) or (jump_pressed and hovertime <= 1) or (jump_pressed and !jump_down)) and collision_line(x,y-30,x+((right_down-left_down)*80),y-30,asset_get("par_block"),true,true) != noone and x == lastx and state_cat = SC_AIR_NEUTRAL{
state = PS_WALL_JUMP
state_timer = 0
window_timer = 0
spr_dir = 0-(right_down-left_down)
walljumpsused = 1
}
if !free {
	walljumpsused = 0
}
lastx = x

washovering = hovering
if !(instance_exists(dimentio1) and instance_exists(dimentio2)) {
    		curplace = 0
    		clonetimer = clamp(clonetimer+0.75,0,maxclonetimer)
} else {
	clonetimer--
	if clonetimer <= 0 {
		dimentio1.state = "leaving"
		dimentio2.state = "leaving"
	}
}
if (state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD) and (abs(hsp)+abs(vsp) > 1) and atimer%3 = 0 {
	var _h = instance_create(x,y,"obj_article1");
	_h.articletype = "Dodge"
	_h.spr_dir = spr_dir
	with obj_article2 {
		if player_id == other {
	var _h = instance_create(x,y,"obj_article1");
	_h.articletype = "Dodge"
	_h.spr_dir = spr_dir
		}
	}
}

if (state_cat == SC_AIR_NEUTRAL or state_cat == SC_AIR_COMMITTED) and hovertime > 0 and jump_down and ! jump_pressed{
	if vsp > 0 {
	vsp = 0
	hovertime -= 1
	hovering = 1
	
	} else {hovering = 0}
	
} else {hovering = 0}
if !free {
	hovertime = 70
}

magicmeter = clamp(magicmeter+1,0,1000)

    atimer++

//if instance_exists(ben) {

//} else {
//ben = 	instance_create(x,y,"obj_article_solid")
//}
titemtimer = titemtimer+1
        isdimentio = true
//if talkbox = 0 {
	normaltexts = false;
	textxdifference = 0
	if !is_array(fonttouse) {
	fonttouse = 1
	}

	taunttextarr = [0]
	
if !(variable_instance_exists(dimentiosenemy,"player")) {
        with oPlayer {
            if !(player = other.player){
    other.dimentiosenemy = self
            }
        }
} else {
	if dimentiosenemy.player == player {
		
        with oPlayer {
            if !(player = other.player){
    other.dimentiosenemy = self
            }
        }
	}
	
}


if variable_instance_exists(dimentiosenemy,"dimentiotaunttextarr") {

taunttextarr = dimentiosenemy.dimentiotaunttextarr
autoforward = dimentiosenemy.dimentioautoforward
} else {
if dimentiosenemy.url == 1872404208 or dimentiosenemy.url == 2078587302 or dimentiosenemy.url == 2311095319 or dimentiosenemy.url == 2166206549 or dimentiosenemy.url == 2190448871 or dimentiosenemy.url == 1998324415 or dimentiosenemy.url == 1870580396{
taunttextarr[0] = "Ah ha ha, we meet again,
mustached one..."
autoforward[0] = 9
} else if dimentiosenemy.url == 1869814191{
taunttextarr[0] = "Ah ha, this will be fun."
autoforward[0] = 9
} else if dimentiosenemy.url == url {
if dimentiosenemy.player = player {
taunttextarr[0] = "Can you pierce this...
illusion?"
autoforward[0] = 0	
} else {
taunttextarr[0] = "The most dashing foe
I've met, Ah ha ha!"
autoforward[0] = 0
}
} else {
autoforward[0] = 0
	normaltexts = true;
}
}

if normaltexts = true and !((state = PS_ATTACK_GROUND or state = PS_ATTACK_AIR) and attack == AT_TAUNT) {
randomness = random_func(5,5,true)
} else if normaltexts == true {
	

if randomness == 0{
			fonttouse = 0
	textxdifference = 18
	taunttextarr[0] = "And so I arrive, like a cold
sweat upon a tired brow."
autoforward[0] = 0
} else if randomness == 1 {
			fonttouse = 0
	textxdifference = 18
	taunttextarr[0] = "It would be so DULL if your 
	journey ended so easily..."
autoforward[0] = 0
	taunttextarr[1] = "Instead, it ends with... 
	magic!"
autoforward[1] = 0
} else if randomness == 2 {
			fonttouse = 0
	textxdifference = 18
taunttextarr[0] = "Can you pierce this...
illusion?"
autoforward[0] = 0
} else if randomness == 3 {
			fonttouse = 0
	textxdifference = 18
taunttextarr[0] = "It is truly enchanting to 
meet my hapless victims."
autoforward[0] = 0
} else if randomness == 4 {
			fonttouse = 0
	textxdifference = 18
taunttextarr[0] = "Now we must duel, like two
banjos on a moonlit stoop!"
autoforward[0] = 0
} else if randomness == 5 {
			fonttouse = 0
	textxdifference = 18
taunttextarr[0] = "And so I strike,
like an unseen dodgeball!"
autoforward[0] = 0
}  else { 
			fonttouse = 0
	textxdifference = 18
	taunttextarr[0] = "Now...
	Ladies and gentlemen..."
autoforward[0] = 0
	taunttextarr[1] = "Get ready for the greatest
	magic show you'll ever see!"
autoforward[1] = 0
	}
}


if attack = AT_DSPECIAL and (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND) {
    if window = 1 or window = 2 {
        if window = 2 {
    selectingitem = true}
} else {
     selectingitem = false
}
}

if attack = AT_TAUNT and state = PS_ATTACK_GROUND {
    if talkbox < 4 {
        talkbox = floor(talkbox+1)
    }
    } else {
    if talkbox > 0 {
        talkbox = floor(talkbox-1)
    }
    }
    

    if talkbox > 2 {
        if textamount < string_length(string(taunttext)){
        textamount = textamount+0.5        
            textnexttimer = 0
        } else if is_array(taunttextarr) { 
            
            if textamount >= string_length(string(taunttext))-0.5 and taunttextarrpos < array_length(taunttextarr)-1{
            textnexttimer = textnexttimer+1
            if textnexttimer > textarrtranstime {
            textamount = 0
            taunttextarrpos = taunttextarrpos+1
            }
            }
        }
        draw_text_color(x-92,y-138,string_copy(string(taunttext),1,floor(textamount)),c_black,c_black,c_black,c_black,1)
    } else {
            textnexttimer = 0
            taunttextarrpos = 0
        textamount = 0
    }
       // draw_debug_text(x-80,y-110,string(taunttext))
       
rblastzone = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
lblastzone = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
tblastzone = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
bblastzone = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);


if is_array(fonttouse) { 
	if fonttouse[taunttextarrpos] = 3 or fonttouse[taunttextarrpos] = 4 or fonttouse[taunttextarrpos] = 2{
textydifference = 4
	} else {
		textydifference = 0
	}
	} else {
	if fonttouse = 3 or fonttouse = 4 or fonttouse = 2{
textydifference = 4
	} else {
	textydifference = 0	
	}
	
	}


if attack = AT_TAUNT and state = PS_ATTACK_GROUND{
    if state_timer > 32 and (right_down or left_down or up_down or down_down or special_down or attack_down or shield_down or jump_down or (taunt_pressed and textamount >= string_length(string(taunttext))-0.5 and taunttextarrpos = array_length(taunttextarr)-1)){
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
}
} else {
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
}
        if is_array(taunttextarr) { 
            taunttext = taunttextarr[taunttextarrpos]
        }
if taunt_pressed{
textarrtranstime = 4
} else if autoforward[taunttextarrpos] = 0{
textarrtranstime = 9000
} else {
textarrtranstime = autoforward[taunttextarrpos]
}


if !healdraw = 0 {
healtimer = healtimer+healtimerdir
if healtimer < 0 {
	healdraw = 0
	healtimer = 0
	healtimerdir = 0.2
}
if healtimer > 8{
	
	healtimerdir = -0.2
}
} else {
	healtimerdir = 0.2
}


with oPlayer {
	if isdimentio = false {
	
		
 if mightytonic > 0{
     if mightytonic < 2 {
  outline_color = [ 0, 0, 0 ];
     } else {
  outline_color = [ 170*sin(mightytonic/10)+10, 0, 0 ];
     }
// tell the shader to update the character's colors:
init_shader();
}  
if courageshell > 0{
     if courageshell < 2 {
  outline_color = [ 0, 0, 0 ];
     } else {
  outline_color = [0,0,170*sin(courageshell/10)+10 ];
     }
// tell the shader to update the character's colors:
init_shader();
}
   if courageshell > 3 and mightytonic > 3{
  outline_color = [170*sin(courageshell/10)+10,0,170*sin(courageshell/10)+10 ];
// tell the shader to update the character's colors:
init_shader();
 }
 
 if mightytonic > 0{
     mightytonic = mightytonic-1
		if has_hit_player and my_hitboxID.type = 1 and mightytonic > 0{
		if hasappliedtonic = false{
set_player_damage(hit_player_obj.player,get_player_damage(hit_player_obj.player)+my_hitboxID.damage)
			hasappliedtonic = true;
		}
} else {
			hasappliedtonic = false;
}
     
 }

  if courageshell > 0{
     courageshell = courageshell-1
     if courageshell >= 1 {
    if get_player_damage(player) > howzithealthchange {
        howzithealthchange = howzithealthchange+floor(point_distance(howzithealthchange,0,get_player_damage(player),0)/2)
        
set_player_damage(player,howzithealthchange)
    howzithealthchange = get_player_damage(player)
    } else {
    howzithealthchange = get_player_damage(player)
    }
} else {
    howzithealthchange = get_player_damage(player)
}
 }
 

		
	howzithealthchange = get_player_damage(player)
		
		
	}
}



x += 100000;
var InstanceNearest = instance_nearest(x-100000, y, oPlayer);
x -= 100000;
if InstanceNearest.state == PS_FROZEN or InstanceNearest.state == PS_WRAPPED {
move_cooldown[AT_FSTRONG] = 2
move_cooldown[AT_USTRONG] = 2
move_cooldown[AT_DSTRONG] = 2

}



flintcragleytalkin = true
if get_player_color(player) == 1 {
flinttaunttextarr[0] = "Hey there, Notso! 
You're here too?"
flintautoforward[0] = 4
} else {

flinttaunttextarr[0] = "Hey there, Howzit! 
You're here too?"
flintautoforward[0] = 4
}

monzocomments = ["Shroomshakes, brah."]