//God Darc Sharc could use his staff on me anytime~
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL)
{
    if(move_cooldown[AT_DSPECIAL] < 10) move_cooldown[AT_DSPECIAL] = 5;
    if(move_cooldown[AT_FSPECIAL] < 10) move_cooldown[AT_FSPECIAL] = 5;
    //move_cooldown[AT_NSPECIAL] = 45;
    if(window == 2 && window_timer == 2)
    {
        instance_create(x+48*spr_dir, y-52, "obj_article2");
        
        if (!ds_Lock)
            curSuit ++;
    }
    
    if (window == 4 && window_timer < 14){
        if (shield_pressed){
            sound_play(asset_get("sfx_forsburn_consume_fail"),false,noone,0.5,1);
            state = PS_PRATFALL;
            can_fast_fall = true;
        }
    }
    
    if (window >= 2 && window <= 4)
        can_move = false;
    else
        can_move = true;
    
    if (window != 5)
        can_fast_fall = true;
    else
        can_fast_fall = false;
    
    if (window != 5){
        
        if (spr_dir) {
            if (left_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
            else if (right_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
            else
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
        }
        
        if (!spr_dir) {
            if (left_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
            else if (right_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
            else
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
        }
    }
}
if (attack == AT_DSPECIAL)
{
    //if(move_cooldown[AT_FSPECIAL] < 10) move_cooldown[AT_FSPECIAL] = 10;
    //if(move_cooldown[AT_NSPECIAL] < 10) move_cooldown[AT_NSPECIAL] = 10;
    if(state_timer == 1)
        cardExists = false;
    if(window == 2 && window_timer == 1)
    {
        instance_create(x, y-30, "obj_article1");
        /*with(obj_article1)
        {
            if(player == other.player)
            {
                other.cardExists = true;
                remoteCtrl = false;
                state = 3;
            }
        }
        if(!cardExists)*/
        if (!ds_Lock)
            curSuit ++;
    }
}
if (attack == AT_FSPECIAL)
{
    //if(move_cooldown[AT_NSPECIAL] < 10) move_cooldown[AT_NSPECIAL] = 10;
    //if(move_cooldown[AT_DSPECIAL] < 10) move_cooldown[AT_DSPECIAL] = 10;
    move_cooldown[AT_FSPECIAL] = 45;
    if(window == 2)
    {
        if(window_timer <= 4)
        {
            beamX = x + 30 * spr_dir;
            beamY = y - 26;
        }
        if(window_timer == 1)
        {
            switch(curSuit)
            {
                case 0: //Spade
                    sound_play(asset_get("sfx_spin_longer"));
                    tempProj = create_hitbox(AT_FSPECIAL, 2, x+20*spr_dir, y-30);
                    break;
                case 1: //Diamond
                    sound_play(asset_get("sfx_buzzsaw_hit"));
                    for(i = 0; i < 4; i++)
                    {
                        tempProj = create_hitbox(AT_FSPECIAL, 5, x+20*spr_dir, y-30);
                        tempAngle = 30-i*20-(spr_dir == -1 ? 180: 0);
                        tempProj.proj_angle = tempAngle;
                        tempProj.hsp = cos(tempAngle/180*-3.14)*7;
                        tempProj.vsp = sin(tempAngle/180*-3.14)*7;
                    }
                    for(i = 0; i < 3; i++)
                    {
                        tempProj = create_hitbox(AT_FSPECIAL, 4, x+20*spr_dir, y-30);
                        tempAngle = 20-i*20-(spr_dir == -1 ? 180: 0);
                        tempProj.proj_angle = tempAngle;
                        tempProj.hsp = cos(tempAngle/180*-3.14)*6;
                        tempProj.vsp = sin(tempAngle/180*-3.14)*6;
                    }
                    break;
                case 2: //Club deez nuts
                    sound_play(sound_get("DS_acebeam"));
                    tempProj = create_hitbox(AT_FSPECIAL, 1, x+20*spr_dir, y-30);
                    break;
                case 3: //Heart
                    sound_play(asset_get("sfx_ori_energyhit_weak"));
                    tempProj = create_hitbox(AT_FSPECIAL, 6, x+20*spr_dir, y-30);
                    break;
            }
            if (!ds_Lock)
                curSuit ++;
        }
    }
}
if (attack == AT_USPECIAL)
{
    //tpSpd = 8;
    can_move = false;
    can_fast_fall = false;
    fall_through = true;
    if ((window == 3 && window_timer >= 12) || window == 4)
        fall_through = false;
    
    if (window == 2)
    {
        if(joy_pad_idle)
            tpDir = 90/180*-3.14;
        else
            tpDir = joy_dir/180*-3.14;
    }
    //TP
    if (window == 3)
    {
        if(window_timer == 1)
            uspecUsed = true;
        //vsp = sin(tpDir)*tpSpd;
        //hsp = cos(tpDir)*tpSpd;
        
        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
            var tp_dist = 140;
            var ubp_dir = joy_pad_idle ? 90 : joy_dir
    		var test_x = lengthdir_x(tp_dist, ubp_dir);
    		var test_y = lengthdir_y(tp_dist, ubp_dir);
    		tp_dir = ubp_dir;
    		if(test_y > 0 or position_meeting(x + test_x, y + test_y - 2, solids)){
    			var v_off = 96;
    			var posa = collision_line_point(x + test_x, y + test_y - v_off - 2, x + test_x, y + test_y, solids, false, true);
    			// spawn_hit_fx(posa[1], posa[2], HFX_GEN_OMNI);
    			if(!position_meeting(posa[1], posa[2]-2, solids)){
    				tp_to(posa[1], posa[2])
    			}else{
    				var posa2 = collision_line_point( x, y-char_height, x + test_x, y + test_y - v_off - 2, solids, false, true);
    				tp_to(posa2[1], posa2[2])
    				// spawn_hit_fx(posa2[1], posa2[2], HFX_ZET_SHINE_FG);
    			}
    		}else{
    			tp_to(x + test_x, y + test_y)
    		}
    	if (test_x > 0)
    	    spr_dir = 1;
    	if (test_x < 0)
    	    spr_dir = -1;
        }
    }
    if (window == 4) {
        if (window_timer == 1) {
            vsp = sin(tpDir)*4;
            hsp = cos(tpDir)*4;
        }
        can_fast_fall = true;
    }
}

if (attack == AT_JAB){
    if (has_hit && window == 3 && window_timer >= 4){
        can_jump = true;
    }
}

if(hit_player_obj != -4)
{
    if (hit_player_obj.activated_kill_effect = 1 && hit_player_obj.state_timer = 0){
        if (get_player_color(player) == 29)
            sound_play(sound_get("DS_metalpipe"));
        else
            sound_play(sound_get("DS_acecrit"));
        hit_player_obj.state_timer = 1;
    }
}

if (attack == AT_FSTRONG){
    lgroove_can_clutch = 1;
    if(window == 2){
    hsp += 0.5 * spr_dir;
    if(get_gameplay_time() mod 3 == 0 && !free && hitpause == false)
        spawn_base_dust(x, y, "dash")
    }
    else
    sound_stop(sound_get("DS_windup"));
    
    if (window == 3 && window_timer == 1){
        hsp = hsp*0.75;
    }
    
    if (window >= 3 && free){
        can_move = false;
        if (left_down)
            hsp -= 0.25;
        if (right_down)
            hsp += 0.25;
    }
}

if (attack == AT_USTRONG && !hitpause){
    if (window == 1 && window_timer == 1)
        sound_play(asset_get("sfx_shovel_dig"), false, noone, 0.8, 1.1);
    if (window == 2 && window_timer == 7)
        sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 1.1, 0.9);
}

if (attack == AT_UAIR && window == 2){
    vsp += -0.25;
}

if (attack == AT_TAUNT_2){
    if (window <= 2){
    	suppress_stage_music(0, 0.1);
    }
    if (window = 3){
    	suppress_stage_music(1, 0.1);
    }
}
if (attack == AT_EXTRA_1 && window > 2 && !taunt_down){
    window = 6;
    window_timer = 10;
    sound_stop(sound_get("DS_Acumalaka"));
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;

#define tp_to
/// tp_to(x1, y1)
var x1 = argument0, y1 = argument1;

x = x1;
y = y1;

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
  if (window_num == 0) window ++;
  else if (window_num == -1) window = window;
  else window = window_num;
  window_timer = 0;
}

//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define print_vars
/// print_vars(instance = self)
{
  //prints the variables in the given instance, or in whatever instance ran the function.
  var instance = argument_count > 0 ? argument[0] : self;
  with (instance) {
    var names = variable_instance_get_names(self);
    var str = "";
    var lb = "
  ";
    for (var i = 0; i < array_length_1d(names); i++) {
      var val_to_add = string(variable_instance_get(self, names[i]));
    str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
    
    }
    var str_length = string_length(str);
    var it = 1;
    var max_pages = ceil(str_length/4096);
    for (var i = 1; i < str_length; i+=4096) {
      get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
    }
  }
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, obj = argument4, prec = argument5, notme = argument6;
{
    var rr, rx, ry;
    rr = collision_line(x1, y1, x2, y2, obj, prec, notme);
    rx = x2;
    ry = y2;
    if (rr != noone) {
        var p0 = 0;
        var p1 = 1;
        repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
            var np = p0 + (p1 - p0) * 0.5;
            var nx = x1 + (x2 - x1) * np;
            var ny = y1 + (y2 - y1) * np;
            var px = x1 + (x2 - x1) * p0;
            var py = y1 + (y2 - y1) * p0;
            var nr = collision_line(px, py, nx, ny, obj, prec, notme);
            if (nr != noone) {
                rr = nr;
                rx = nx;
                ry = ny;
                p1 = np;
            } else p0 = np;
        }
    }
    var r;
    r[0] = rr;
    r[1] = rx;
    r[2] = ry;
    return r;
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define not_position_meeting_point
/// collision_line_point(x1, y1, x2, y2, obj)
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, obj = argument4;
{
    var rr, rx, ry;
    rr = position_meeting(x2, y2, obj);
    rx = x2;
    ry = y2;
    if (rr == noone) {
        var p0 = 0;
        var p1 = 1;
        repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        		// print("WHAT")
            var np = p0 + (p1 - p0) * 0.5;
            var nx = x1 + (x2 - x1) * np;
            var ny = y1 + (y2 - y1) * np;
            var px = x1 + (x2 - x1) * p0;
            var py = y1 + (y2 - y1) * p0;
            var nr = position_meeting(nx, ny, obj);
            if (nr == noone) {
                rr = nr;
                rx = nx;
                ry = ny;
                p1 = np;
            } else p0 = np;
        }
    }
    var r;
    r[0] = rr;
    r[1] = rx;
    r[2] = ry;
    return r;
}

#define ledge_snap
//allows a moving attack to snap onto and over the ledge without getting caught, 
// similar to Maypul and Orcane's Forward-Specials.
// returns 'true' when the attack successfully snaps over a ledge
//code example by Mawral - free to use without credit.

var step = 32; //the maximum distance to move up from the ledge. must be a power of 2. '16' or '32' is recommended.
var xx = x + hsp; //use 'xx = x - spr_dir' if the attack moves backwards.

//check if there is a ledge ahead. if there is not, return 'false' and end the script.
var par_block = asset_get("par_block");
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block)) return false;

//move the player onto and above the ledge.
x = xx;
y -= step;
//then, move downwards as far as possible without cutting into the stage.
for (step /= 2; step >= 1; step /= 2) {
    if (!place_meeting(x, y + step, par_block))  y += step; 
}
//ledge snap successful. return 'true'.
return true;

#macro GS_X 0
#macro GS_Y 1
#macro GS_TIMER 2
#macro GS_EXISTS 3
#macro GS_STATE 4
#macro GS_STATE_TIMER 5