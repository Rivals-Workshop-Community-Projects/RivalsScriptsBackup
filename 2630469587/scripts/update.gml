

// Spawns a phantom when loading in Youmu.
if (!phantom_active) {
	print_debug("Spawning a new phantom.")
	phantom = instance_create(x-(spr_dir*65), y-60,  "obj_article1");
	phantom_active = true;
}

// Keyboard mode activation.
if (taunt_pressed && get_gameplay_time() < 90 && !keyboard_mode) {
	keyboard_mode = true;
	kb_mode_activation_time = get_gameplay_time();
	sound_play(sound_get("spin2"));
}

// voice activation
if (special_pressed && get_gameplay_time() < 90 && !voice_mode) {
	voice_mode = true;
	voice_mode_activation_time = get_gameplay_time();
	
	if (get_gameplay_time() < 10) {
		sound_play(sound_get("v_introroukanken"));
	}
	else if (get_gameplay_time() > 10) {
	voice_rng = random_func(0, 3, true);
	if (voice_rng == 0)
		sound_play(sound_get("v_intro1"));
	else if (voice_rng = 1)
		sound_play(sound_get("v_intro2"));
	else if (voice_rng = 2)
		sound_play(sound_get("v_intro3"));
	}
}

// entrance anim
if (get_gameplay_time() < 5)
{
    if (!has_enter) and (!instance_exists(oTestPlayer))
    {
        has_enter = true;
        set_attack(AT_NTHROW);
    }
}

if ((attack == AT_NTHROW) && (window == 3) && (window_timer == 24))
{
    set_state(PS_SPAWN);
    state_timer += 66;
    
}

// Restores dash when grounded/wall jumping.
if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_WALL_JUMP) {
	has_fly = true;
	has_usp1_stall = true;
	move_cooldown[AT_FSPECIAL]=0;
	move_cooldown[AT_FSPECIAL_AIR]=0;
}


// Recalls phantom during parry+special input.
if (state == PS_PARRY && special_down) {
	if (window_timer == 1 && (phantom.state == 2 || phantom.state == 8 || ((phantom.state == 6 || phantom.state == 10) && phantom.last_state == 2))) {
        phantom.state = 7;
        phantom.state_timer = 20;
    }
}

// Also recall phantom if taunt button is pressed in the air. JANK
if (state_cat == SC_AIR_NEUTRAL && taunt_down) {
	if ((phantom.state == 2 || phantom.state == 8 || ((phantom.state == 6 || phantom.state == 10) && phantom.last_state == 2))) {
        phantom.state = 7;
        phantom.state_timer = 20;
    }
}

//please dont read this jank aaaaaa
if (state == PS_LANDING_LAG  && hitpause == false) {
	ground_friction = 0.40;
}

if (state == PS_LANDING_LAG && !free && hitpause == false && abs(hsp) > 12) {
	hsp *= 0.4;
}

if (state == PS_LANDING_LAG  && hitpause == false) {
	ground_friction = 0.40;
}

if ((state == PS_IDLE || state == PS_IDLE_AIR || PS_HITSTUN) && hitpause == false &&  ground_friction == 3.11) {
	ground_friction = 0.40;
}

//double jump effect
if (state == PS_DOUBLE_JUMP && state_timer == 0) {
	spawn_hit_fx(x, y + 10, djump);
}

// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

// Enforces fly cooldown.
if (!has_fly) {
	move_cooldown[AT_USPECIAL_2] = 5;
	move_cooldown[AT_USPECIAL] = 5;
} else {
	move_cooldown[AT_USPECIAL_2] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if (!free) {
	fspec_djump = true;
}




//print_debug(dracvoice);
print_debug(page);
//print_debug(fstrong1fhit)
//print_debug(start_sprdir);

//print_debug(phantom.state);

// Code for handling phantom state on opponent death is in article1_update.gml (state 2).
