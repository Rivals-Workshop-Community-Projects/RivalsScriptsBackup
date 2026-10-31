//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

var stateAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
xdisp = ai_target.x - x
ydisp = ai_target.y - y
xdist = abs(xdisp);
ydist = abs(ydisp);

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

//recovery logic
if (ai_recovering)
{

}

//fight logic
if (cpu_fight_time > 0)
{
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);
    target_dist = point_distance(x, y, ai_target.x, ai_target.y);
    target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);
}

if (ai_target.sansKR >= 10 && !ai_target.sansKRconsume && !ai_recovering) {
    var bX = get_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X);
    var bY = get_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y);
    var bW = get_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH);
    var bH = get_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT);
    
    var bXW = bX - (bW/2);
    var bXY = bY - (bH/2);
    
    if(state_cat != SC_HITSTUN && !stateAttacking) {
        var karma = random_func_2(0, 20, ceil(ai_target.sansKR/2));
        if karma && (collision_rectangle(
                x+((bX - (bW/2))*spr_dir), y+(bY - (bH/2)), 
                x+((bX + (bW/2))*spr_dir), y+(bY + (bH/2)), 
                ai_target.id, true, false)) {
            tap_down();
            press_special(true);
            //print_debug("trying dspecial");
        }
    }
}

if (instance_exists(gasterBlaster) && !ai_recovering && (attack != AT_FSPECIAL)) {
    var beamHeight = get_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT)/2;
    var beamLength = gasterBlaster.sansBeamLen*gasterBlaster.spr_dir;
    //print_debug("beamLength = " + string(beamLength));
    if (gasterBlaster.state <= 1) && !(collision_rectangle(
            gasterBlaster.x, gasterBlaster.y-beamHeight, 
            gasterBlaster.x+beamLength, gasterBlaster.y+beamHeight, 
            ai_target.id, true, false)) {
        //move_cooldown[AT_FSPECIAL] = 30; //this is a band-aid fix
        press_special(true);
    	//print_debug("attempting to hold nspecial");
    } else { 
        //print_debug("releasing nspecial"); 
    }
}

if (stateAttacking && attack == AT_DSPECIAL && window == 4) {
    var offstage = (ai_target.x >= stage_right || ai_target.x <= stage_left) && ai_target.free;
    
    if (offstage) {
        press_down();
        //print_debug("throwing down");
    } else {
        if (ai_target.x > (room_width/2)) {
            press_right();
            //print_debug("throwing right");
        } else { 
            press_left();
            //print_debug("throwing left");
        }
    }
}

/*
if (attack == AT_NSPECIAL && !instance_exists(flowery_support_obj) && window <= 2){

    if !nspec_support_flower_info[2].on_cooldown{
        press_down()
        press_right()
    }
    
    if !nspec_support_flower_info[1].on_cooldown{
        press_up()
    }

    if !nspec_support_flower_info[0].on_cooldown{
        press_down()
        press_left()
    }

    if (nspec_wheel_pos == -1){
        press_special(true)
    } else {
        press_special(false)
        unpress_up()
        unpress_down()
        unpress_left()
        unpress_right()
    }
    
}
*/

#define hold_towards_target
	hold_toward_direction(xdisp)

#define hold_toward_direction(dir)
	if dir < 0 {
		press_left()
	} else {
		press_right()
	}

#define unpress_left()
	left_down = false
	left_pressed = false
	left_hard_down = false
	left_hard_pressed = false
	left_strong_down = false
	left_strong_pressed = false

#define unpress_right()
	right_down = false
	right_pressed = false
	right_hard_down = false
	right_hard_pressed = false
	right_strong_down = false
	right_strong_pressed = false

#define unpress_up()
	up_down = false
	up_pressed = false
	up_hard_down = false
	up_hard_pressed = false
	up_strong_down = false
	up_strong_pressed = false

#define unpress_down()
	down_down = false
	down_pressed = false
	down_hard_down = false
	down_hard_pressed = false
	down_strong_down = false
	down_strong_pressed = false
	
#define press_left()
	// print("left")
	joy_dir = 180
	joy_pad_idle = false
	
	left_down = true
	left_pressed = true
	unpress_right()	

#define tap_left()
	press_left()
	left_hard_down = true
	left_hard_pressed = true

#define press_right()
	// print("right")
	joy_dir = 0
	joy_pad_idle = false
	
	right_down = true
	right_pressed = true
	unpress_left()

#define tap_right()
	press_right()
	right_hard_down = true
	right_hard_pressed = true

#define press_up()
	
	joy_dir = 90
	joy_pad_idle = false
	
	up_down = true
	up_pressed = true
	unpress_down()
	
#define tap_up()
	press_up()
	up_hard_down = true
	up_hard_pressed = true

#define press_down()
	
	joy_dir = 270
	joy_pad_idle = false
	
	down_down = true
	down_pressed = true
	unpress_up()

#define tap_down
	press_down()
	down_hard_down = true
	down_hard_pressed = true

#define unpress_actions
	attack_down = false
	attack_pressed = false
	special_down = false
	special_pressed = false
	
	strong_down_pressed = false
	strong_down_down = false
	up_strong_pressed = false
	up_strong_down = false
	left_strong_pressed = false
	left_strong_down = false
	right_strong_pressed = false
	right_strong_down = false
	down_strong_pressed = false
	down_strong_down = false

	parry_pressed = false
	parry_down = false
	shield_pressed = false
	shield_down = false
	
#define press_taunt(press)
	unpress_actions()
	taunt_down = press
	taunt_pressed = press
	taunt_counter = press ? 0 : 7

#define press_attack(press)
	unpress_actions()
	attack_down = press
	attack_pressed = press
	attack_counter = press ? 0 : 7
	
#define press_special(press)
	unpress_actions()
	special_pressed = press
	special_down = press
	
#define press_strong(press)
	unpress_actions()
	if up_pressed{
		up_strong_pressed = press
		up_strong_down = press
	}
	if left_pressed {
		left_strong_pressed = press
		left_strong_down = press
	}
	if right_pressed {
		right_strong_pressed = press
		right_strong_down = press
	}
	if down_pressed {
		down_strong_pressed = press
		down_strong_down = press
	}


#define press_jump(press)
	jump_pressed = press
	jump_down = press

#define press_parry(press)
	shield_pressed = press
	shield_down = press
	parry_pressed = press
	parry_down = press