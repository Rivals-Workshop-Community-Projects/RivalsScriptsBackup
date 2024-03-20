//default stuff
if hud_offset < 1 hud_offset = 0;
var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
hud_offset = floor(hud_offset);
init_shader();

//homemade strong pressed
if strong_buffer strong_buffer--;
if strong_down && !prev_strong strong_buffer = 7;
prev_strong = strong_down;

if shot_fx_timer && !hitstop shot_fx_timer--;

//check if player is using controller
if !using_controller && joy_dir%45 != 0 using_controller = 1;

if state != PS_DASH_START && state != PS_DASH && state != PS_DASH_TURN && !(state == PS_ATTACK_AIR && (attack == AT_FSPECIAL_AIR || (attack == AT_NAIR && attack_down))) sound_stop(float_sfx);

//target anim
with oPlayer if self != other && targeted[other.player-1]{
    targeted[@other.player-1]--;
    if state == PS_DEAD || state == PS_RESPAWN /*|| !(x > get_stage_data(SD_LEFT_BLASTZONE_X) + 200 && x < get_stage_data(SD_RIGHT_BLASTZONE_X) - 200)*/ targeted[@other.player-1] = 0;
    if targeted[@other.player-1] = 0 with other sound_play(sound_get("sfx_drone_disengage"), 0, noone, 0.8);
}

//intro
if get_gameplay_time() <= 15 set_attack(2);

//uair shell
if instance_exists(uair_shot){
    if uair_shot.step_timer < 3 && !hitpause create_hitbox(AT_USPECIAL_2, 1 + sign(uair_shot.step_timer), x, y);
    offset_hud(360);
    if hitpause uair_shot.step_timer--;
}

if target_practice_mode{
    hurtboxID.sprite_index = sprite_get("empty");
}

#define offset_hud
/// offset_hud(val, am = .3;)
var val = argument[0];
var am = argument_count > 1 ? argument[1] : .3;;

hud_offset = lerp(hud_offset, val, am);