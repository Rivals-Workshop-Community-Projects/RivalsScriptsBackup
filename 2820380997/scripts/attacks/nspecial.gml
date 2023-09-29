//This is the inital clone spawn that is also a shine hitbox Referenced Zetterbrun hitboxes for this.
var attack = AT_NSPECIAL;

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("nspecial")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 3);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Zetterburn Nspec Shine with no flipper. Can be Jump Canceled. Spawns a clone. Hold Nspecial to control the clone. Tapping Nspec when clone is out will cause the clone to be detonated.");//AG_MUNO_ATTACK_MISC_ADD = i; i++;	

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 4 / Start Up (Skip 0-3)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_shine")); // asset_get("sfx_swipe_heavy1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 5- / Puff of Smoke
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;

// Window #3 / Frame(s) # 6-8 / Endlag 1
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 1); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox # / Window # - / Shien hitbox -> Referenced Zetterburns
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 3); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 77);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 74);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 1); // Same as Zetters but should it have this? 
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .14);
set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 14); //14  - smoke small
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_disperse);
set_hitbox_value(attack, hitbox_num, 81, "Shine");//HG_MUNO_HITBOX_NAME

hitbox_num++;