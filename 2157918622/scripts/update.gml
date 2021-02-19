//update

if (!hitpause){
    fspecial_point[0] += point_hsp;
    fspecial_point[1] += point_vsp;
}
if (!practice) practice = (get_training_cpu_action() != CPU_FIGHT);
//print_debug(string(fspecial_point));

if (!free && move_cooldown[AT_DSPECIAL] > 15){
    move_cooldown[AT_DSPECIAL] = 15;
}
if ((!free || whip_tether || whip_player) && get_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY) == 1){
    //set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
}
if (state == PS_WALL_JUMP && move_cooldown[AT_DSPECIAL] > 0){
    move_cooldown[AT_DSPECIAL] = 0;
}

if (!(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	whip_tether = false;
	whip_cancel = false;
	whip_cancel_has_hit = false;
}

if (nspecialused == 0){
	clear_button_buffer(PC_SPECIAL_PRESSED);
}
if (nspecialused < 18){
	nspecialused++;
}

if (state == PS_PRATLAND && state_timer == 1 && whipparried)
{
	whipparried = false;
  	set_state(PS_ATTACK_GROUND);
	window = 5;
	window_timer = 0;
}
if (state == PS_PRATFALL && state_timer == 1 && whipparried)
{
	whipparried = false;
  	set_state(PS_ATTACK_AIR);
	window = 5;
	window_timer = 0;
}
if (state != PS_PRATFALL && state != PS_PRATLAND && !(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))){
	wrappedfall = false;
}

with(oPlayer){
    if(id != other.id){
        if wraptimer < 48{
        	wraptimer++;
        }
        if ("temp_level" in self && (get_training_cpu_action() == CPU_FIGHT || get_training_cpu_action() == CPU_EVADE)){
    		if (other.attack == AT_FSPECIAL && other.window == 3 || (other.window == 2 && other.window_timer > 4)){
				if (place_meeting(other.fspecial_point[0]+other.point_hsp*4,other.fspecial_point[1]+other.point_vsp*4 + 35,hurtboxID)){
					if (state_cat == SC_GROUND_NEUTRAL || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_TURN){
							set_state(PS_PARRY_START);
					}
				}
			}
    	}
    }
}

if get_gameplay_time() < 120 {
	if (left_down && right_down){	//no stop it don't look at this you cheater
		secrettimer++;				// I can do what I want
	}
	if (taunt_down && shield_down){
		secrettimer2++;
	}
	if (special_down && attack_down){
		secrettimer3++;
	}
}
if (secrettimer == 60){
	secretpalette = true;
	secrettimer = 61
	sound_play(asset_get("mfx_confirm"));
}
if (secrettimer2 == 60){
	secretpalette2 = true;
	secrettimer2 = 61
	sound_play(asset_get("mfx_confirm"));
}
if (secrettimer3 == 60){
	secretpalette3 = true;
	secrettimer3 = 61
	sound_play(asset_get("mfx_confirm"));
}
if (secretpalette2 = true){
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt3"));
}
if (secretpalette){
	set_victory_portrait(sprite_get("portrait_special"));
	set_victory_sidebar(sprite_get("result_small_special"));
}
else{
	set_victory_portrait(sprite_get("portrait"));
	set_victory_sidebar(sprite_get("result_small"));
}

with (singleton_field)
{
	if ("orig_player" in self && "size" in self && size != 0 && orig_player == other.player)
	{
		if (other.drawtimer % 20 == 0){
			other.subimg++;
		}
		if (other.subimg > 2){
			other.subimg = 0;
		}
	}
}

if (singleton_field != noone && point_distance(x,y-char_height/2,singleton_field.x,singleton_field.y)<=singleton_field.size)
{
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.10);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, heartFX);

	set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
	set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, heartFX);

	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, heartFX);

	set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.15);
	set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 18);
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, heartFX);

	set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.95);
	set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 11);
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 18);
	
	knockback_adj = 1.2;
}
else
{
	reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT);

	reset_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 4, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT);

	reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);;
	reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT);

	reset_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT);

	reset_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE);
	reset_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE);
	
	knockback_adj = 1.15;
}
/*
//runes
if (has_rune("E")){
	knockback_adj = 0.75;
}
if (has_rune("D")){
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
}
if (has_rune("G")){
	if (wrappedfall){
		was_parried = false;
		wrappedfall = false;
	}
}
if (has_rune("O")){

set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .9);

set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .9);

set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .9);
}
*/

//Trummel & Alto Codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 6;
    trummelcodecsprite1 = sprite_get("article");
    trummelcodecsprite2 = sprite_get("article");
    var page = 0;

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 2;

    trummelcodecline[0,1] = "That's Cupcake. He's an";
    trummelcodecline[0,2] = "acrobat at the Julesvale";
    trummelcodecline[0,3] = "Circus.";
    trummelcodecline[0,4] = "";
    page++;

    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "hes very pink";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";
    page++;

	//Page 2
	trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "Yes, apparently he just ";
    trummelcodecline[2,2] = "really really likes pink.";
    trummelcodecline[2,3] = "And hearts.";
    trummelcodecline[2,4] = "And thigh high socks.";
    page++;

    //Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "he looks like a girl";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
    page++;

    //Page 4
	trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "Yep.";
    trummelcodecline[4,2] = "He's very quick and agile.";
    trummelcodecline[4,3] = "He combos very easily";
    trummelcodecline[4,4] = "and can 0-death you fast.";
    page++;

    //Page 5
	trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 2;

    trummelcodecline[5,1] = "Annoyingly fast.";
    trummelcodecline[5,2] = "But he also has no";
    trummelcodecline[5,3] = "projectiles, and his";
    trummelcodecline[5,4] = "attacks have tiny range.";
    page++;

    //Page 6
	trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 1;

    trummelcodecline[6,1] = "If we zone him, he";
    trummelcodecline[6,2] = "shouldn't be able to";
    trummelcodecline[6,3] = "get close.";
    trummelcodecline[6,4] = "Let's kick this goat's butt.";
    page++;
}

if swallowed { //Kirby ability script starts here
swallowed = 0
var ability_spr = sprite_get("kirby_ability_cupcake");
var ability_hurt = sprite_get("kirby_ability_cupcake_hurt");
var shine_effect = sprite_get("nspecial_effect");
var ability_icon = sprite_get("kirbyicon_cupcake");
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
	set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
	set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
	set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
	set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));

	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 21);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

	set_num_hitboxes(AT_EXTRA_3, 1);

	set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.14);
	set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.7);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

	set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 11001100110010101101101011000100110111101111001);

	newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}
if (enemykirby != noone) { //Attack Update Code
    with oPlayer {
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (get_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH) == 11001100110010101101101011000100110111101111001 && attack == AT_EXTRA_3)) {
			if (window == 3 || (window == 2 && window_timer > 1)){
        		if (jump_pressed){
        			if (free){
        				if (djumps < max_djumps){
        					set_state(PS_DOUBLE_JUMP);
        					vsp = -djump_speed;
        					djumps++;
        					clear_button_buffer(PC_SPECIAL_PRESSED);
        				}
        			}
        			else{
        				set_state(PS_JUMPSQUAT);
        				clear_button_buffer(PC_SPECIAL_PRESSED);
        			}
        		}
    		}
        }
    }
}
