if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
	switch (attack) {
		case AT_NSPECIAL:
			if window == 3 and window_timer == 0 and !hitpause {
		        var min_hsp = 8;
		        //var max_hsp = 32;
		        var max_charge = 25;
		        var max_hsp = 26;
				var arrow = create_hitbox(nspec_charge < blue_arrow_timer ? AT_NSPECIAL : AT_NSPECIAL_2, 1, x+ (44*spr_dir), y - 34)
				arrow.hsp = spr_dir*lerp(min_hsp,max_hsp,min(nspec_charge,max_charge)/max_charge)
				if nspec_charge < blue_arrow_timer  {
					arrow.damage += round((nspec_charge / 30) * 2);
				}
				
				flamecharge = false;
				nspec_charge = 0;
			}
		break;
		case AT_DAIR:
			if (window == 2 and window_timer mod 3 == 0 and !hitpause) {
				var hitbox = 1 + max(window_timer - 11, 0);
				create_hitbox(attack, hitbox, x,y)
			}
		break;
	}
}

with hit_fx_obj {
	if hit_fx == other.nspec_hitenemy_red {
		depth = other.depth + 1
	}
}

//taunt menu
switch (tMenuState)
{
	case 0:
		tMenuAlpha += tMenuAlpha < 1 ? .1 : 0;
		if tMenuAlpha >= 1 tMenuState = 1;
		break;
	case 1:
		set_state(PS_IDLE_AIR);
		var maxPos;
		maxPos = array_length_1d(tMenuOptions)-1
		if (up_pressed)
		{
			tMenuSelected = (tMenuSelected <= 0) ? maxPos : tMenuSelected-1;
			sound_play(sound_get("menu_scroll"))
		}
		
		if (down_pressed)
		{
			tMenuSelected = (tMenuSelected >= maxPos) ? 0 : tMenuSelected+1;
			sound_play(sound_get("menu_scroll"))
		}
		
		if (attack_pressed)
		{
			clear_button_buffer(PC_ATTACK_PRESSED);
			sound_play(sound_get("menu_select"))
			switch (tMenuOptions[ tMenuSelected ])
			{
				case "W. Recall Visual: ON":
				case "W. Recall Visual: OFF":
					crouch_pshow = !crouch_pshow;
					tMenuOptions[ tMenuSelected ] = !crouch_pshow ? "W. Recall Visual: OFF" : "W. Recall Visual: ON"
				break;
				case "Exit...":
					tMenuState = 2;
				break;
			}
		}
		
		if (special_pressed) 
		{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			tMenuState = 2
		}
		
		break;
	case 2: 
		tMenuAlpha -= tMenuAlpha > 0 ? .1 : 0;
		if tMenuAlpha <= 0 tMenuState = -1;
		break;
}

// update
if (fspec_article != noone)
{
	var xx, yy, diff;
	xx = clamp(fspec_article.x, bbox_left, bbox_right);
	yy = clamp(fspec_article.y, bbox_top, bbox_bottom);
	
	diff = sqrt( sqr(xx-fspec_article.x) + sqr(yy-fspec_article.y) );
	
	if sprite_index == sprite_get("crouch") and diff <= crouch_threshold and fspec_article.state == PS_IDLE and !fspec_article.isRed
	{
		crouch_timer++;
		
		if crouch_timer >= crouch_max
		{
			crouch_timer=0;
			spawn_hit_fx(fspec_article.x,fspec_article.y,wisp_absorption_fx);
			sound_play(sound_get("wisp_absorb_crouch"))
			with fspec_article
			{
				state = PS_DEAD;
				state_timer = 0;
			}
			add_wisp();
			move_cooldown[AT_FSPECIAL] = 30;
			move_cooldown[AT_NSPECIAL] = 30;
		}
	}
	else
	{
		crouch_timer=0;
	}
}

if (!inPractice && get_training_cpu_action() != CPU_FIGHT)
	inPractice = true;

var threshold, charge, is_max, old_out, flame_col, new_color_r, new_color_g, new_color_b, gt, gt2, gt3, scale;
threshold = 30
charge = nspec_charge >= threshold ? 1 : (nspec_charge / threshold)
is_max = nspec_charge >= blue_arrow_timer
old_out = (cur == 7) ? [35, 67, 49] : [0,0,0]
flame_col = [218, 99, 40]
new_color_r = lerp(old_out[0], is_max ? wisp_color_r : flame_col[0], charge);
new_color_g = lerp(old_out[1], is_max ? wisp_color_g : flame_col[1], charge);
new_color_b = lerp(old_out[2], is_max ? wisp_color_b : flame_col[2], charge);

gt = get_gameplay_time() mod 10
gt2 = get_gameplay_time() mod 20
gt3 = (get_gameplay_time()*.2 mod (3.14*2))

//scale = (gt2 == 10) ? 2 : 1;

outline_color = [sin(gt3) * new_color_r,sin(gt3) * new_color_g,sin(gt3) * new_color_b];

if (is_max)
{
    if ((abs(hsp)+abs(vsp) >= 3) and gt % 4 > 1)
    {
		var rand, flip, xpos;
		rand = random_func(5,30,true)
		flip = gt % 4 == 0 ? 1 : -1;
		xpos = hsp < 2 ? random_func(7, 20, false)*flip : 0; 
		createParticle(particles,1,0,0,sprite_get("fireeffect"),0,x+(rand/3)*spr_dir + xpos,y-4-(rand*2),0, -1, .2, 0, 0, 1, 0, 30, true, true)
    }
}
else
{
	reset_attack_value(AT_NSPECIAL, AG_SPRITE);
    reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);
}

if (move_cooldown[AT_DSPECIAL]>0) // dspec once per airtime
	move_cooldown[AT_DSPECIAL] = free?2:0;

with (oPlayer) // soul steal effect
{
	if (player != other.player)
		nspec_steal_effect = (nspec_steal_effect > 0) ? nspec_steal_effect-1 : 0;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
	wisp_attack = false;
}

// if (wisp_regen_timer <= 0) // regen wisp every "wisp_regen_max" frames
// {
//     add_wisp();
// }
// else if (!wisp_attack && find_wisp() < 2)
// {
//     --wisp_regen_timer;
// }

//INTRO, don't touch
if sprite_index != sprite_get("taunt")
{
	taunt_timer = 0
}

if (wisp_init <= 80) // create once every 40 frames, for 80 frames (create at 0, 40 and 80)
{
    if (wisp_init % 40 == 0)
        add_wisp();
    ++wisp_init;
}

if (ss_boom_active)
{
	ss_boom_diameter[0] = ease_quadOut( 0, ss_boom_maxdiameter[0], counter, 200 );
	if (!ss_boom_peak)
	{
		counter = min(counter+10,ss_boom_maxdiameter[0]);
		if (ss_boom_diameter[0] >= ss_boom_maxdiameter[0])
			ss_boom_peak = true;
	}
	else
	{
		counter = max(counter-10,0);
		if (counter == 0)
		{
			ss_boom_active = false;
			ss_boom_peak = false;
			ss_boom_coord = [-1,-1];
			ss_boom_diameter = [0,0];
		}
		
	}
}

//uspec land rest, check "got_hit" for rest
if(!uspec_first && !free && state != PS_ATTACK_AIR && state !=PS_ATTACK_GROUND || state == PS_WALL_JUMP){
	uspec_first = true;
}

var in_attack, in_state, interval_ready;
in_attack = (attack == AT_DSPECIAL or attack == AT_DATTACK) and window > 1 // if it's in the correct attack
in_state = (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) // if you're in the right state
interval_ready = (get_gameplay_time() mod 8 == 0) //used for tracking an interval without creating a new "variable"

if (in_attack and in_state and interval_ready)
{
	createParticle(particles, 1, 0, 0, sprite_index, image_index, x, y, 0, 0, 0, 0, 0, 0.6, -0.04, 40, true, false)
}

if !(wisp_switch_timer > 10) wisp_switch_timer++

p_process(particles)

//upload protection
if (triggerProtection)
{
	var t;
	t = random_func(6, 200, true);
	hsp = ((5*t)+state_timer)*((get_gameplay_time() mod 3)-1);
}

#define add_wisp
//Adds a wisp.
if (find_wisp() < 2)
{
	var wisp = instance_create(x,y,"obj_article1");
	wisp.wisp_index = find_wisp() + 1;
	switch (wisp.wisp_index)
	{
		case 0:
			wisp.rel_position = [-35,-60];
			wisp.depth = depth-5
			break;
		case 1:
			wisp.rel_position = [-55,-30];
			wisp.depth = depth-2
			break;
		case 2:
			wisp.rel_position = [30,-24];
			break;
	}
	wisps[find_wisp() + 1] = wisp;
	sound_play(sound_get("wisp_appear"))
}

#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;

#define destroy_wisp
//Return: none
//Removes wisp from the array.
if argument0 != -1 //idiot proofing
{
    wisps[argument0] = -1;
}

#define p_process(list)
///- process the particles in the list provided
// This function goes in update.gml.
//process particles. everything here should be self explanatory.
if (ds_list_size(list) <= 0) return false;
var i = 0;
repeat (ds_list_size(list)) {
    var ap = list[| i];
    if (ap.sprite != -1) {
        ap.alpha += ap.alpha_rate;
        ap.image += ap.frame_rate;
        ap.timer++;
        ap.x += ap.hsp;
        ap.y += ap.vsp;
        ap.hsp += ap.hAccel;
        ap.vsp += ap.vAccel;
        if ((ap.alpha < 0 && sign(ap.alpha_rate) == -1) || ap.timer > ap.lifetime || (ap.frame_end && ap.image == sprite_get_number(ap.sprite))) {
            ds_list_delete(list,i);
            continue;
        }
        i++;
    }
}

#define createParticle
///createParticle(list, amt, xvar, yvar, sprite, image, x, y, hsp, vsp, ?frame_rate, ?hAccel, ?vAccel, ?alpha, ?alpha_rate, ?lifetime, ?uses_shader, ?stop_at_last_frame)
///- create a number (amt) of particles
// This function goes wherever you want to create particles from.
var ind = 0;
var list = argument[0];
var amt = argument[1]; //Amount of particles
var xvar = argument[2]; //X Variation
var yvar = argument[3];	//Y Variation
var sprite = argument[4], image = argument[5],
	_x = argument[6], _y = argument[7],
	_hsp = argument[8], _vsp = argument[9];
var frame_rate = argument_count >= 11 ? argument[10] : 0; //animation framerate
var hAccel = argument_count >= 12 ? argument[11] : 0; //horizontal acceleration
var vAccel = argument_count >= 13 ? argument[12] : 0; //vertical acceleration
var alpha = argument_count >= 14 ? argument[13] : 1; //the starting alpha.
var alpha_rate = argument_count >= 15 ? argument[14] : -0.1; //the rate the alpha changes at.
var lifetime = argument_count >= 16 ? argument[15] : 30; //particle lifetime.
var uses_shader = argument_count >= 17 ? argument[16] : true; //whether the particle should recolor with the character
var stop_at_last_frame = argument_count >= 18 ? argument[17] : false; //if this is true, instead of looping the particle will despawn after hitting the final frame.
//actual function
if argument_count <= 8 return false; //if it returns false you didn't give it enough arguments so it can't make a particle
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        image: image,
        frame_rate: frame_rate,
        x: _x+random_func((ind++)%25,xvar,true)-floor(xvar/2),      //x
        y: _y+random_func((ind++)%25,yvar,true)-floor(yvar/2),      //y
        hsp: _hsp,      //hsp
        vsp: _vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader,
        frame_end: stop_at_last_frame,
        xscale: image_xscale
        };
    ds_list_add(list,newParticle);
}
