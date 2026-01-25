//GATHERING STORM -- Passive Charge Effect

//Check for Max Level. Charge if Not, Reset if so.
if (will_charge >= will_max || has_rune("A")) {
    will_charge = will_max;
/*}else if (state != PS_DEAD && state != PS_RESPAWN) {
    will_charge++;
    if(has_rune("A")) will_charge += 19;
    if has_rune("A"){
    	if will_charge >= 579 && will_charge <= 599 sound_play(sound_get("tee_lvl1"))
    	if will_charge >= 1179 && will_charge <= 1199 sound_play(sound_get("tee_lvl2"))
    } else {
    	if will_charge = 599 sound_play(sound_get("tee_lvl1"))
    	if will_charge = 1199 sound_play(sound_get("tee_lvl2"))
    } */
}

//Will Level Reaches Full Charge at 20 Seconds, Halfway at 10 

if (will_charge <= 0) {
    will_charge = 0;
    will_lvl = 0;
}

if (will_charge >= 600 && will_charge < 1200) {
    will_lvl = 1;
}

if (will_charge >= 1200) {
    will_lvl = 2;
}

//Shmovement Gives a Tiny bit of Extra Charge - Commenting this out as part of the will meter change - Gunner
/*
if (will_lvl < 2 && state == PS_DASH_START && state_timer == 1 || state == PS_WAVELAND && state_timer == 1) {
    will_charge += 5;
}
*/

//Gain Charge on Hit - Commenting this out be cause we want to do this in hit player, not it update.
/*
if (hitpause == true && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	if (hit_timer == 0) {
    	will_charge += 200;
    	hit_timer = 1;
	}
}
//When hitpause is over, the lockout is reset
if  (hitpause == false) {
	hit_timer = 0;
}
*/

// Teenah getting hit will add meter - Commenting this out as part of the will meter change - Gunner
/*
if (state == PS_HITSTUN && state_timer == 1) {
    will_charge += 15;
}
*/




//if on the ground, refresh USPECIAL uses

if ((!free && (state != PS_ATTACK_GROUND || ((state == PS_ATTACK_GROUND && state_timer == 0 && attack != AT_USPECIAL) || 
(state == PS_ATTACK_GROUND && attack == AT_USPECIAL && window == 5)))) || state == PS_RESPAWN || state == PS_DEAD) {
	uspec_uses = uspec_uses_max;
	can_uspec = false;
	uspec_extra_used = 0;
}

// if uspec's extra use is used
if(uspec_uses <= 0){
	uspec_extra_used = true;
}

//if no uses, ((it's)) no use
if (uspec_uses <= 0 || uspec_uses == 1 && can_uspec == false)  {
	move_cooldown [AT_USPECIAL] = 3;
}

//Walljump / Getting hit restores use
if(free && uspec_uses >= 0 && (state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){
	uspec_uses = 1 + !uspec_extra_used;
	can_uspec = (uspec_uses > 0 ? true : false);
}

//WILL CANCELS

will_cancel--;

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && hitpause == true && will_lvl >= 1){
	 will_cancel = 8 - 2 * (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND);
}

if (will_cancel <= 0){
	will_cancel = 0;
}

//NO CANCELLING DURING SPIN FOR HECK'S SAKE
if (state == PS_ATTACK_AIR && attack == AT_USPECIAL && (window == 2 || window == 13)){
	will_cancel = 0;
}


// Backward Jumps? Yeah we got those
if (state == PS_FIRST_JUMP && !jump_lock)
{
    jump_isBack = ((left_down && spr_dir > 0) || (right_down && spr_dir < 0));
    jump_lock = true;
}

//Backward DoubleJumps? Okay now you're just being silly
if (state == PS_DOUBLE_JUMP && !djump_lock)
{
    jump_isBack = ((left_down && spr_dir > 0) || (right_down && spr_dir < 0));
    djump_lock = true;
}

//Safety Resets
if (!free)
{
    jump_lock = false;
    djump_lock = false;
}

//HUDFrame Counter
hud_timer++
if (hud_timer == 6){
    hud_timer = 0;
    hud_frame += 1;
}
if (hud_frame > 5){
    hud_frame = 1;
}

//Hit effect linking
with(hit_fx_obj){
	if("teenah_fspec" in self && player_id == other){
		x = other.x + xoff;
		y = other.y + yoff;
	}
}

//RUNE CODE

if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	if(dspec_cancel) hsp = clamp(hsp, -8, 8);
	dspec_cancel = false;
}

with(oPlayer) if self != other {
	if(teenah_shock == other && !hitpause && ((state == PS_HITSTUN && state_timer == floor(hitstun_full) - 1) || state == PS_HITSTUN_LAND ||
	super_armor || prev_state == PS_WALL_TECH || (state == PS_WALL_TECH && !invincible) || (soft_armor && state_cat != SC_HITSTUN) ||
	((state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) && !invincible) )){
		with(other) var hbox = create_hitbox(AT_DSPECIAL, 2, other.x, other.y);
		for(var i = 0; i < 20; i++){
			can_hit[i] = (i == player);
		}
	}
}

if(has_rune("G")){
	with(oPlayer){
		wrap_sprite = asset_get("hfx_olym_stunsparkle");
	}
}

// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;


// HUG THE CAT

if instance_exists(amber_herObj) && (amber_herObj.state == PS_ATTACK_AIR || amber_herObj.state == PS_ATTACK_GROUND) && amber_herObj.attack == AT_EXTRA_3 {
	if amber_herObj.window == 1 {
		switch(amber_herObj.window_timer){
			case 19:
			// sound_play(asset_get("sfx_cub_yawn"))sfx_kitty_squeak
			sound_play(asset_get("sfx_shing"))
			break;
			case 46:
			sound_play(asset_get("sfx_forsburn_cape_swipe"))
			break;
			case 62:
			sound_play(asset_get("sfx_kitty_squeak"), false, noone, 1.5)
			break;
			case 124:
			sound_play(asset_get("sfx_cub_yawn"))
			break;
			default:
			break;
		}
	}
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
        //in the attack_values
        
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 130);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 34);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
        // set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        // set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_kitty_squeak"));
        // set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 9);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 7);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 34);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 40);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 12);//12
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 41);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
        
        //etc....

        //Important. Puts Amber in startup hug state (2).
        //Editing this variable not recommended
        amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}