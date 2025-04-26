if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack == AT_DAIR && window == 3)){
  sound_stop(ram_sound)
}

if (has_rune("N") && taunt_pressed && y > get_stage_data(SD_TOP_BLASTZONE_Y) && !was_parried){
    hurtboxID.dodging = false;
    set_attack(AT_TAUNT);
}

if (free){

    if (stance == "pizzahead"){
        //
    } else {
        if (has_rune("G") && ((state == PS_FIRST_JUMP && state_timer > 2) || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || (state == PS_ATTACK_AIR && attack != AT_DAIR)) && ((jump_down && vsp > 0) || (jump_down && down_down)) && faceFloatTime > 0 && !hitpause){
            vsp = 0.5;
            faceFloatTime -= 1;
            faceFloating = true;
        } else {
            faceFloating = false;
        }
    }
} else {
    if (has_rune("G")){
        faceFloatTime = 180;
    }
}

if (!hitpause){
    var newArray = 0;
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
    }
    afterimage_array = newArray;
}


for (var b = 0; b < array_length(bits); b++){
    with bits[b]{
        image_index = floor(image_index);
        vsp += 0.5;
    }
}

init_shader();

if get_match_setting(SET_PRACTICE){
    if up_down{
        move_cooldown[AT_TAUNT] = 2;
        if taunt_pressed{
            minion_number = (minion_number + 1) % 7;
            next_item_tossed += 1;
            if (next_item_tossed > 4){
                next_item_tossed = 0;
            }
            clear_button_buffer(PC_TAUNT_PRESSED);
        }
    }
    if down_down{
        //move_cooldown[AT_TAUNT] = 2;
        if taunt_pressed{
            with obj_article1{
                if orig_player_id == other{
                    state = "DEATH";
                }
            }
            next_item_tossed -= 1;
            if (next_item_tossed < 0){
                next_item_tossed = 4;
            }
            clear_button_buffer(PC_TAUNT_PRESSED);
        }
    }
}

if stance == "pizzahead" && state == PS_DASH && state_timer % 15 == 1{
    sound_play(sound_get("pizzaheadstep"), 0, 0, 0.7, 1 - - (0.03 * random_func_2(get_gameplay_time() % 200, 6, true)));
}

if (towerLifetime < 300 && !(attack == AT_DSPECIAL_2 && (window == 12 || window == 13 || window == 14 || window == 15) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))){
    towerLifetime += 2;
}

if (!instance_exists(pizzaHeadTV)){
    sound_stop(televisionSound);
}

with (hit_fx_obj){

    if (player == other.player){
        depth = other.depth - 1;


        if (hit_fx == other.TV_debrisVFX){
            vsp = min(vsp + 0.5, 200);
            draw_angle = vsp * 20 * -sign(hsp);
            step_timer = originalImage - 1;

            if (round(vsp) == 20){
                step_timer = hit_length;
            }
        }

        if (hit_fx == other.cogDies){
            vsp = -5 + round(step_timer/2);
            draw_angle = (step_timer * 15) * spr_dir * -1;
        }
    }
}

if (hasAltCloth && state != PS_IDLE && state != PS_SPAWN){

    if (stance == "pizzaface"){
        spawn_hit_fx(x, y, faceCloth);
    } else {
        spawn_hit_fx(x, y, headCloth);
    }
    
    hasAltCloth = false;

}

if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && "machswat_sfx" in self sound_stop(machswat_sfx);

