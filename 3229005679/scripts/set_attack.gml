
if (attack == AT_FSPECIAL && instance_exists(vigiWeenie) && vigiWeenie.state != 6 && vigiWeenie.destroyed == false){

    if (place_meeting(x + (hsp * 2), y + (vsp * 2), vigiWeenie) || place_meeting(x + hsp, y + vsp, vigiWeenie)){
        window = 2;
        window_timer = 0;
        vigiWeenie.spr_dir = spr_dir;
        vigiWeenie.x = x;
        y = vigiWeenie.y;

        hsp = round(hsp) + (ground_friction * spr_dir);
        vigiWeenie.hsp = hsp;


        move_cooldown[AT_FSPECIAL] = 0;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    } else {
        attack = AT_FSPECIAL_2;
        vsp *= 0.5;
        vigiWeenie.spr_dir = spr_dir;
    }
}

//Everyting needs to stop if it is on cooldown, except for AT_FSPECIAL.
if move_cooldown[attack] > 0 then exit;


switch (attack){

    case AT_DATTACK:

        sound_play(sound_get("vigislide"))

    break;

    case AT_TAUNT:

        if (down_down){
            attack = AT_TAUNT_2;
            
        } else {

            if (get_player_color(player) != 4){
                sound_play(sound_get("vigitaunt" + string(random_func(5, 7, true) + 1 )),0,0,1,0.9 + ((random_func(4, 1, false)*0.2)));
            } else {
                sound_play(sound_get("sound_taunt" + string(random_func(5, 8, true) + 1 )),0,0,1,0.9 + ((random_func(4, 1, false)*0.2)));
            }
            tauntRNG = random_func(1, 24, true);
            old_vsp = vsp;
            old_hsp = hsp;
        }

    break;

    case AT_DSTRONG:
    
        times_through = 0;

    break;

    case AT_USPECIAL:

        if (!free && !jump_pressed){
            attack = AT_USPECIAL_GROUND;
        } else {
            vsp = -17.5;
            sound_play(sound_get("vigiuzijump"))
        }

    break;

    case AT_FSPECIAL:

        if (!instance_exists(vigiWeenie)){
            vigiWeenie = instance_create(x, y, "obj_article3");
            vsp = min(0, vsp) - 1;
        }

    break;

    case AT_USTRONG:

        if (has_rune("K")){
            times_through = 0;
        }

    break;

}