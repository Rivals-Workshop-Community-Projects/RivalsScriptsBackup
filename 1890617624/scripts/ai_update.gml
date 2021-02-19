//ai_update - called every frame for this character as a CPU

if url != 1890617624{
	return;
}

// Fix issue with hit_player_obj stopping code running, thanks SAI :D
if !instance_exists(hit_player_obj){
    hit_player_obj = self
}

temp_level = 9;

if (get_training_cpu_action() != CPU_FIGHT){
    return
}

xrange = abs(ai_target.x - x);
yrange = abs(y - ai_target.y);
xdist = (ai_target.x - x)
ydist = (y - ai_target.y)
damage = get_player_damage( ai_target.player );
facing = false;
targetbusy = false;

if za_warudo and super == 0 or damage == 999 and ai_target.state_cat == SC_HITSTUN{
	return;
}

if (state_cat != SC_HITSTUN and state != PS_SPAWN){
    rangedtimer -= 2;
}

if xrange > 100{
    cheesetimer -= 1;
}

if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN or ai_target.invince_time > 10){
    targetbusy = true;
}

var stage_x = get_stage_data( SD_X_POS )
var stage_y = get_stage_data( SD_Y_POS )
offstage = true;
if (x > stage_x - 60 and x < (room_width - stage_x) + 60){
    offstage = false;
}

edgeguard = true;
if targetbusy or !ai_target.free or xrange < 100 or (ai_target.x > stage_x) and (ai_target.x < room_width - stage_x){
    edgeguard = false;
}

if (state == PS_DEAD or state == PS_RESPAWN){
    rangedtimer = -50;
}

if (ai_target.x < x and spr_dir = -1) or (ai_target.x > x and spr_dir = 1){
    facing = true;
}

// Chase the opponent down
if (!golden or !free or za_warudo) and ((state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) or ((rangedtimer < 0) or (!ai_recovering and inactive > 20) or edgeguard)) and !targetbusy and xrange > 130 and (!free or !runeG or !offstage){
    faceopponent();
    if ai_target.x > x{
        right_hard_pressed = true;
    } else {
        left_hard_pressed = true;
    }
}

// Reward close attacks with ranged time
if (!free and hit_player_obj.state_cat == SC_HITSTUN and xrange < 100){
    rangedtimer = 100
}

// Punish Ronald for not attacking
if za_warudo or (edgeguard or (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL or state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) and !targetbusy and state != PS_SPAWN){
    rangedtimer -= 4;
    inactive += 1;
} else{
    inactive = 0;
}

// Go back to ranged spam if direct attacks aren't working
if (rangedtimer < -250 or targetbusy or (!edgeguard and xrange > 200)){
    rangedtimer = 20;
}

if za_warudo and targetbusy{
	targetbusy = false;
	rangedtimer = 200;
	cheesetimer = 0;
}

// Taunt actions
taunt_pressed = false;
if (runeA or runeB or runeC){
    has_wisp = true;
    has_siphon = true;
    has_barrier = true;
    if !golden{
        with asset_get("obj_article3") {
            if player_id == other.id and type == "willowisp" and !has_hit{
                other.has_wisp = false;
            }
            if player_id == other.id and type == "soulsiphon" and !has_hit{
                other.has_siphon = false;
            }
        }
        with asset_get("obj_article_solid") {
            if state != "break"{
                other.has_barrier = false;
            }
        }
    }
}

if !targetbusy and (xrange > 200 and rangedtimer > 0 and !edgeguard) and can_attack and !free and (runeA or runeB or runeC){
    if runeA and ((!golden and has_wisp) or random_func_2(3,2,true) == 0){
        joy_pad_idle = true;
        faceopponent();
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = false;
        taunt_pressed = true;
    } else if runeB and ((!golden and has_siphon) or random_func_2(4,2,true) == 0){
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = false;
        taunt_pressed = true;
    } else if runeC and ((!golden and has_barrier) or random_func_2(5,2,true) == 0){
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
        special_pressed = false;
        attack_pressed = false;
        taunt_pressed = true;
    }
}

// Shakes
if can_special and has_shake and !ai_recovering and (golden or rangedtimer > 0){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    up_down = false;
    down_down = true;
    special_pressed = true;
    attack_pressed = false;
}

// Apple Bomb
if can_special and has_apple and !ai_recovering and (golden or rangedtimer > 0) and (((golden or xrange > 200) and !edgeguard) or soul_points > 0){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    up_down = false;
    down_down = true;
    special_pressed = true;
    attack_pressed = false;
}

// Litter the ground with cheese
if !free and can_attack and ai_target.state_cat != SC_HITSTUN and (cheesetimer <= 0 or za_warudo) and ((xrange > 200 and !edgeguard) or soul_points > 0){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    up_down = false;
    down_down = true;
    special_pressed = false;
    attack_pressed = true;
    cheesetimer = 50;
}

// Ronald girl
if runeH{
    has_ronald_girl = true;
	if !golden{
		with asset_get("obj_article3") {
			if player_id == other.id and type == "ronald_girl"{
				other.has_ronald_girl = false;
			}
		}
	}
}

if runeH and !free and can_attack and (za_warudo or xrange > 150) and !targetbusy and abs(ai_target.hsp) < 10 and abs(ai_target.vsp) < 10 and has_ronald_girl and (!golden or rangedtimer > 50){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    up_down = false;
    down_down = false;
    attack_pressed = false;
    special_pressed = false;
    down_strong_pressed = true;
}

// Hamburgers
if !targetbusy and can_special and facing and ( (za_warudo and rangedtimer > 100) or ( !free and runeJ and xrange < 300 and xrange > 40 and yrange < 120 ) or (edgeguard and !ai_recovering and not(ai_target.state_cat == SC_HITSTUN and damage > 150)) or (xrange < 300 and ai_target.state_cat != SC_HITSTUN and ( rangedtimer > 30 or free ) ) ){
    clear_button_buffer( PC_SPECIAL_PRESSED );
    if !free{
        if yrange < 130{
            joy_pad_idle = true;
            left_down = false;
            right_down = false;
            up_down = false;
            down_down = false;
            attack_pressed = false;
            special_pressed = true;
        }
    } else {
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        attack_pressed = false;
        special_pressed = true;
    }
}

// FSTRONG fries
if runeD and can_strong and facing and xrange > 100 and ydist < 180 and ydist > -20 and !free and damage < 200 and ((rangedtimer > 50 and xrange > 200) or edgeguard){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    if x > ai_target.x{
        left_strong_pressed = true;
    } else {
        right_strong_pressed = true;
    }
}

// Ladder Combo (Jump if hit UAir) / Edgeguard jumping
if !golden and !targetbusy and djumps < max_djumps and can_jump and ((attack == AT_UAIR and has_hit_player and yrange < 150 and ydist > 40 and xrange < 70) or (edgeguard and ydist > 0 and facing)){
    jump_down = true;
    rangedtimer = 0;
}

// Aerials
if free and can_attack and !targetbusy{
    goingforspike = false;
    
    if xrange < 170 and yrange < 100{ // Fair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        faceopponent();
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    
    if check_attack(AT_DAIR, 70){ // Dair
        if offstage and (spr_dir == 1 and x > (room_width * 0.5)) or (spr_dir == -1 and x < (room_width * 0.5)){
            goingforspike = true;
        }
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
        special_pressed = false;
        attack_pressed = true;
    }
    
    if check_attack(AT_NAIR, 40) and !goingforspike{ // Nair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    
    if check_attack(AT_UAIR, 60) and !goingforspike{ // Uair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
}

// Cancel Uppercut into genocide cutter
if (attack == AT_FSPECIAL and can_attack and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
    if check_attack(AT_USPECIAL, 20) and move_cooldown[AT_USPECIAL] == 0{
        clear_button_buffer( PC_SPECIAL_PRESSED );
        joy_pad_idle = true;
        faceopponent();
        up_down = true;
        special_pressed = true;
        attack_pressed = false;
    }
}

// Uppercut
if can_special and (x > 300 and x < room_width - 300) and rangedtimer > 20 and ((ai_recovering and (x > stage_x - 300 and x < room_width - stage_x + 300) and y < stage_y and y > stage_y - 250) or (ydist < 50 and !targetbusy and xrange < 170)){
    joy_pad_idle = true;
    
    faceopponent();
    if ai_recovering{
        facestage();
    }
    
    up_down = false;
    down_down = false;
    special_pressed = true;
    attack_pressed = false;
    rangedtimer = 0;
}

// F Smash
if (damage >= 60 or combo >= 8) and can_strong and !free and facing and xrange < 120 and yrange < 90{
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    if x > ai_target.x{
        left_strong_pressed = true;
    } else {
        right_strong_pressed = true;
    }
    if rangedtimer < 200{
        rangedtimer = 200
    }
}

// Dash Attack
if (can_attack and !free and facing and xrange < 150 and yrange < 80 and (state == PS_DASH or state == PS_DASH_START) and !targetbusy){
    special_pressed = false;
    attack_pressed = true;
    left_strong_pressed = false;
    right_strong_pressed = false;
}

// Kick
if (can_attack and !free and xrange < 90 and yrange < 40 and !targetbusy and state != PS_DASH){
    clear_button_buffer( PC_ATTACK_PRESSED );
    joy_pad_idle = true;
    faceopponent();
    special_pressed = false;
    attack_pressed = true;
    left_strong_pressed = false;
    right_strong_pressed = false;
}

// Jab
if (facing and can_attack and !free and xrange < 70 and yrange < 40 and (attack != AT_JAB or window < 5) and state != PS_DASH and !targetbusy){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = true;
    left_strong_pressed = false;
    right_strong_pressed = false;
}

// USTRONG fries
if (can_strong and !free and facing and abs(hsp) <= 10 and xrange > 20 and xrange < 90 and yrange < 90 and runeI and move_cooldown[AT_USTRONG_2] == 0 and state != PS_DASH and !targetbusy){
    joy_pad_idle = true;
    faceopponent();
    special_pressed = false;
    attack_pressed = false;
    left_strong_pressed = false;
    right_strong_pressed = false;
    up_strong_pressed = true;
}

// Hit from above
if (ydist > 40 and yrange < 120 and xrange < 70 and !targetbusy){
    if can_strong and !free and (!runeI or move_cooldown[AT_USTRONG_2] > 0){
        up_strong_pressed = true;
    } else if (can_special and (move_cooldown[AT_USPECIAL] == 0)){
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = true;
        attack_pressed = false;
    } else if can_attack{
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    if rangedtimer < 200{
        rangedtimer = 200;
    }
}

// Lazer
if can_attack and ai_target.state_cat == SC_HITSTUN and facing and yrange < 60 and (super >= 100 or (super >= 33 and runeL and random_func_2(19, 2, true) == 0)) and !targetbusy{
    special_pressed = true;
    attack_pressed = true;
}

// ZA WARUDO!!!
if runeM and xrange > 100 and super >= 33 and !za_warudo and !edgeguard and !free and (rangedtimer > 0 or ai_target.state_cat == SC_HITSTUN or !has_barrier) and (targetbusy or xrange > 150){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    up_down = false;
    down_down = false;
    special_pressed = false;
    attack_pressed = true;
    shield_pressed = true;
}

// MC BURST
if state == PS_HITSTUN and super >= 33 and runeN{
    special_pressed = true;
    attack_pressed = true;
}

// Uppercut charge
if attack == AT_FSPECIAL and window <= 10 and (xrange > 150 or edgeguard) and x > stage_x and x < room_width - stage_x{
    special_down = true;
    rangedtimer = 0;
}

// Apple Bomb
if attack == AT_DSPECIAL and !has_shake and y < stage_y + 10{
    special_down = true;
}

// Hamburger charge
if attack == AT_NSPECIAL and state == PS_ATTACK_GROUND and xrange > 80 and facing and yrange < 50{
    special_down = true;
}

// Charged Nspecial recover
if (ai_recovering and attack == AT_NSPECIAL and free and (y < stage_y or move_cooldown[AT_USPECIAL] > 0)){
    facestage();
    special_down = true;
}

// Recover
if ((x > stage_x - 200 and x < room_width - stage_x + 200) and ai_recovering and y > stage_y and free){
    
    left_down = false;
    right_down = false;
    
    if (move_cooldown[AT_USPECIAL] > 0) and !golden{
        // use Nspecial when Uspecial is on cooldown
        up_down = false;
        down_down = false;
        special_pressed = true;
        special_down = true;
    } else{
        up_down = true;
        down_down = false;
        left_down = false;
        right_down = false;
        special_pressed = true;
        special_down = true;
    }
}

#define check_attack(attack, padding) // Check if an attack's hitbox is in range to hit (only took me like a year to make this a custom function)
atkwidth = get_hitbox_value( attack, 1, HG_WIDTH ) + padding;
atkheight = get_hitbox_value( attack, 1, HG_HEIGHT ) + padding;
xpos = get_hitbox_value( attack, 1, HG_HITBOX_X ) * spr_dir;
ypos = get_hitbox_value( attack, 1, HG_HITBOX_Y );
if (ydist < ((atkheight * 0.5) - ypos)) and (ydist > ((atkheight * -0.5) - ypos)) and (xdist < ((atkwidth * 0.5) + xpos)) and (xdist > ((atkwidth * -0.5) + xpos)){
    return true;
} else{
    return false;
}

#define faceopponent
if x > ai_target.x{
    left_down = true;
    right_down = false;
} else {
    left_down = false;
    right_down = true;
}

#define facestage
if x > room_width / 2{
    left_down = true;
    right_down = false;
} else{
    left_down = false;
    right_down = true;
}