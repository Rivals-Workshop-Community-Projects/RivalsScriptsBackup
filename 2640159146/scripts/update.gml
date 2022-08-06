if (cooldownstart)
	burststop -= 1;

if burststop = 0 
{
	cooldownstart = false;
	usingspecial = false;
}

if (burststop = 0 && usingspecial == false && burst && !hitpause && (danmoment % 11) == 1)
   take_damage( player, -1, 1 );

if (bloodmeter > bloodmetermin)
    bloodmeter -= bloodmeterdec;

if (burstmeter > 0 && !hitpause && usingspecial == false && burststop = 0)
{
	burstmeter -= burstmeterdec;
	danmoment += 1;
}
if (burstmeter <= 0 && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))
{
	burstmeter = burstmetermin;
	burst = 0;
	danmoment = 0;
	burststop = 0;
}

//==================================================================
if (burst_timer > 0 && !hitpause) burst_timer--;
else
{	
    if (spawning_front_spikes)
    {
        var ground = false
        while (!ground && burstfronty < 10000) //replace 2000 with bottom blast zone
        {
            ground = test_for_ground(burstfrontx, burstfronty)
            if (!ground) burstfronty += 16; //step downwards (adjust precisiion as needed)
        }
        if (ground)
        {
            var hfx = spawn_hit_fx(burstfrontx, burstfronty, spikes_fx1);
            hfx.spr_dir = burst_dir;
            sound_play(asset_get("sfx_swipe_medium2"));
            sound_play(sound_get("swingmid"), 0, noone, 1, .3)
            sound_play(asset_get("sfx_icehit_medium2"), 0, noone, 1, 1.4)
            burstfrontx += (burst_dir * 50); //go forward 50 pixels
            front_dspec_hitbox_timer = 0;
            front_dspec_hitbox_var = true;
        }
        else
        {
            spawning_front_spikes = false; 
            front_dspec_hitbox_var = false;
            front_dspec_hitbox_timer = 0;
        }
    }

    if (spawning_back_spikes)
    {
        var ground = false
        while (!ground && burstbacky < 10000) //replace 2000 with bottom blast zone
        {
            ground = test_for_ground(burstbackx, burstbacky)
            if (!ground) burstbacky += 16; //step downwards (adjust precisiion as needed)
        }
        if (ground)
        {
            var hfx = spawn_hit_fx(burstbackx, burstbacky, spikes_fx2);
            hfx.spr_dir = burst_dir;
            sound_play(asset_get("sfx_swipe_medium2"));
            sound_play(sound_get("swingmid"), 0, noone, 1, .3)
            sound_play(asset_get("sfx_icehit_medium2"), 0, noone, 1, 1.4)
            burstbackx -= (burst_dir * 50); //go forward 50 pixels
            back_dspec_hitbox_timer = 0;
            back_dspec_hitbox_var = true;
        }
        else
        {
            spawning_back_spikes = false; 
            back_dspec_hitbox_var = false;
            back_dspec_hitbox_timer = 0;
        }
    }
    burst_timer = burst_timer_max;
}

//ok so like    
if (back_dspec_hitbox_var){
	back_dspec_hitbox_timer++;
	if(back_dspec_hitbox_timer == 6){
		back_dspec_hitbox_timer = -1;
	}
}
if(back_dspec_hitbox_var){
    if(back_dspec_hitbox_timer = -1){
     var hbox = create_hitbox( AT_DSPECIAL, 4, burstbackx + (burst_dir * 68), burstbacky - 32);
    hbox.spr_dir = burst_dir;
    }
}

if (front_dspec_hitbox_var){
	front_dspec_hitbox_timer++;
	if(front_dspec_hitbox_timer == 6){
		front_dspec_hitbox_timer = -1;
	}
}
if(front_dspec_hitbox_var){
    if(front_dspec_hitbox_timer = -1){
        var hbox = create_hitbox( AT_DSPECIAL, 4, burstfrontx - (burst_dir * 68), burstfronty - 32);
        hbox.spr_dir = burst_dir;
    }
}

//==================================================================
//Bloodrage
if (burst == 1)
{
	if (hit_player_obj != noone)
	{
        if(hit_player_obj.state == PS_RESPAWN)
		    burststop = 180;
        else if(hit_player_obj.prev_state == PS_RESPAWN)
        {
            hit_player_obj = noone;
            cooldownstart = true;
        }
	}
    if(!hitpause)
    {
        if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND && window == 1 && window_timer == 1) 
        {
            window = 5;
            window_timer = 0;
            set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
            set_num_hitboxes(AT_DSTRONG, 6);
            set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 6);
        }
        if (attack == AT_USTRONG && state == PS_ATTACK_GROUND && window == 1 && window_timer == 1) {
            window = 5;
            window_timer = 0;
            set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
            set_num_hitboxes(AT_USTRONG, 3);
            set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 6);
        } 
    }
    knockback_adj = 1.05;
}
else if (burst = 0) 
{
    knockback_adj = 1;
    reset_attack_value(AT_DSTRONG, AG_NUM_WINDOWS);
    reset_num_hitboxes(AT_DSTRONG);
    reset_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW);
    reset_attack_value(AT_USTRONG, AG_NUM_WINDOWS);
    reset_num_hitboxes(AT_USTRONG);
    reset_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW);
}

//Move Cooldowns
if(attack == AT_USPECIAL && state == PS_ATTACK_AIR){
    move_cooldown[AT_USPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0;
}
if(attack == AT_FSPECIAL && state == PS_ATTACK_AIR){
    move_cooldown[AT_FSPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_FSPECIAL] = 0;
}
if (attack == AT_FSPECIAL && window == 4 && window_timer == 31) {
	move_cooldown[AT_FSPECIAL] = 25;
}

//blooddie bug fix
if (burstmeter == 0 and free == false and blooddie = 0 and (state_cat != SC_GROUND_COMMITTED && state_cat != SC_HITSTUN 
|| (state == PS_ATTACK_GROUND|| state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_WALK) && state_timer == 1 || state == PS_PARRY_START))
{
    blooddie = 1;
    set_attack(AT_EXTRA_1);
}

//Alt Changes
//i hate you inner
if (get_player_color(player) == 18) 
{
    set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("blood_rage"));
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("Getthatassbanned"));
    if (attack == AT_TAUNT && window == 3 && window_timer == 3)
        sound_play(sound_get("boom"));
}
if (get_player_color( player ) == 19)
    set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("screamgen"));


//Training
if (get_training_cpu_action() != CPU_FIGHT && !burst && state != PS_SPAWN) 
{
    if(down_down && taunt_pressed)
    {
        clear_button_buffer(PC_TAUNT_PRESSED)
        bloodmeter = bloodmetermax +1;
	    set_attack(AT_DSPECIAL_2);
    }
}

//Functions
// Returns TRUE if ground is detected, FALSE if not.
#define test_for_ground(pos_x, pos_y)
{
   var depth_check_ground = 4; //"depth" of the check, in pixels (in case you're slightly off the ground, still lets you see that ground)
   var found_ground = (noone != collision_line(pos_x, pos_y, pos_x, pos_y + depth_check_ground, 
                                               asset_get("par_block"), true, true))
                   || (noone != collision_line(pos_x, pos_y, pos_x, pos_y + depth_check_ground, 
                                               asset_get("par_jumpthrough"), true, true));
   return found_ground;
}