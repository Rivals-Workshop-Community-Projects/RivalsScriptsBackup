//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//I hope i didnt make ur code too messy when i did some slight changes. 

switch (attack)
{
    case AT_NSPECIAL:
        if (window == 1 && window_timer == 1) move_cooldown[AT_NSPECIAL] = 75;
        //Fast Fall disable
        if (window == 1 && !was_parried) can_jump = false;
        can_fast_fall = false;
        can_move = false;
        break;

    case AT_DAIR:
        if (window == !2) can_fast_fall = false;//makes it so that you can hitfall this move
        if (window == 1)
        {
            hsp /= 1.2;
            if (window_timer == 1) move_cooldown[AT_DAIR] = 40;
        }
        break;

        case AT_DSPECIAL:
            switch (window)
            {
                case 2:
                    ///Create Light Barrier
                    if (window_timer == 1 && !hitpause)
                    {
                        my_article = instance_create(x+70*spr_dir, y-50, "obj_article1");
                        airLock = free;
                    }
                case 3:
                    vsp /= 1.3;
                    break;
            }
            break;

        case AT_FSPECIAL://barrier break fspecial
            switch (window)
            {
                case 1:
                    if (window_timer == 1) 
                    	reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE);
                    break;
                case 2:
                    can_wall_jump = true;
                    if (place_meeting( x, y, my_article))
                    {
                        window_timer = 0;
                        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
                        hitpause = true;
                        hitstop = 10;
                        old_hsp = hsp;
                        old_vsp = vsp;
                        instance_destroy(my_article);
                        spawn_hit_fx( x+50*spr_dir, y-50, lanternfx );
                        sound_play(asset_get("sfx_ice_shatter_big"));
                    }
                    spawn_hit_fx( x+20*spr_dir, y-24, 29 );
                    break;
                case 3:
                    can_wall_jump = true;
                    if (get_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE) == 0 && !was_parried && special_pressed)//3
                    {
                        hitstop = 20;
                        set_attack(AT_USPECIAL_2);
                        window = 1;
                    }
                    break;
            }
            break;

        case AT_USPECIAL://barrier break uspecial
            switch (window)
            {
                case 1:
                    if (window_timer == 1)
                        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
                    break;
                case 3:
                    can_wall_jump = true;
                    if (get_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE) == 0 && !was_parried && special_pressed)
                    {
                        hitstop = 5;
                        set_attack(AT_USPECIAL_2);
                        window = 1;
                    }
                case 2:
                    can_wall_jump = true;
                    if (place_meeting( x, y, my_article))
                    {
                        window_timer = 0;
                        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
                        create_hitbox(AT_USPECIAL, 1, x, y);
                        hitpause = true;
                        hitstop = 10;
                        old_hsp = hsp;
                        old_vsp = vsp;
                        instance_destroy(my_article);
                        spawn_hit_fx( x+50*spr_dir, y-50, lanternfx );
                        sound_play(asset_get("sfx_ice_shatter_big"));
                    }
                    break;
            }
            break;
        case 49: //FINAL SMASH By McStinky Duckrs
            if(has_hit)
            {
                set_attack_value(49, AG_NUM_WINDOWS, 7);
                if(fs_cinematic)
                    set_view_position(x + (char_height / 5)*spr_dir, y - (char_height / 0.5));
            }

            switch(window)
            {
                case 1:
                    {
                        fs_has_hit = false;
                        fs_tempcheck = 0;
                        break;
                    }
                case 2:
                    {
                        if(has_hit && !fs_has_hit)
                        {
                            fs_has_hit = true;
                            //check for too many players
                            for(i = 0; i < 4; i++)
                            {
                                if (is_player_on(i+1))
                                    fs_tempcheck ++;
                            }
                            
                            if(fs_tempcheck > 2)
                            {
                                set_window_value(49, 3, AG_WINDOW_LENGTH, 20);
                                set_window_value(49, 5, AG_WINDOW_LENGTH, 50);
                                fs_cinematic = false;
                            }
                            else
                            {
                                sound_play(sound_get("special_metsu_sauce"));
                                reset_window_value(49, 3, AG_WINDOW_LENGTH);
                                reset_window_value(49, 5, AG_WINDOW_LENGTH);
                                fs_cinematic = true;
                            }

                            shake_camera(10, 20)
                        }
                        break;
                    }
                case 3:
                    {
                        if(window_timer == 1 && !has_hit)
                        {
                            set_attack(AT_USPECIAL_2);
                            window = 1;
                        }
                        break;
                    }
                case 4:
                    {
                        if(window_timer == 11)
                            shake_camera(12, 20);
                        break;
                    }
                case 5:
                    {
                        if(window_timer == 40)
                            shake_camera(10, 30);
                        if(window_timer == 70)
                            shake_camera(20, 80);
                        break;
                    }
                case 6:
                    {
                        if(window_timer == 2)
                        fs_has_hit = false;
                        has_hit = false;
                        break;
                    }

            }
}
// dust
if (attack == AT_FSPECIAL && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "dash_start");}
if (attack == AT_USPECIAL && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "n_wavedash");}
if (attack == AT_USPECIAL_2 && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "n_wavedash");}

//pratfall on fspecial whiff
if (attack == AT_FSPECIAL && free && has_hit && window == 4){
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);}
    
if (attack == AT_FSPECIAL && !free && window == 4){
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);}
    
//funny taunt cancel
if (attack == AT_FSPECIAL && window == 2 && taunt_pressed && !free){
        set_attack(AT_TAUNT);
}

//grounded fspecial finisher
if (attack == AT_FSPECIAL && has_hit && window == 3 && special_pressed && !free){
        set_attack(AT_FSPECIAL_2);
}

//SFX Fspecial & Uspecial
if (attack == AT_FSPECIAL && window == 1 && window_timer == 12){
        sound_play(asset_get("sfx_clairen_uspecial_rise"));
}
if (attack == AT_USPECIAL && window == 1 && window_timer == 8){
        sound_play(asset_get("sfx_clairen_uspecial_swing"));
}
if (attack == AT_USPECIAL_2 && window == 1 && window_timer == 1){
        sound_play(asset_get("sfx_spin"));
}
//air fspecial finisher
if (attack == AT_FSPECIAL && has_hit && window == 3 && special_pressed && free){
        set_attack(AT_EXTRA_2);
}

//jump cancel from fspecial jank
if (attack == AT_FSPECIAL && has_hit && window == 2){
    can_jump = true;
}

//Stop
//if (attack == AT_FSPECIAL && has_hit && window == 2){
//    go_through = false;
//}

//Ledge Snap    
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && window == 2){
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
}
}

//Barrier Break Hurtboxes
if (attack = AT_FSPECIAL_2) {
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    }
if (attack = AT_USPECIAL_2) {
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    }
if (attack = AT_EXTRA_2) {
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    }
//Fspecial Spam Limiter
if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 40;}

//Dspecial Get off me hitbox
if (attack == AT_DSPECIAL && window == 2 && window_timer == 1){
    create_hitbox(AT_DSPECIAL, 2, x, y)}
    
//Nspecial Jank
if (attack == AT_NSPECIAL && window == 1 && free == true){
    vsp = 0;
    hsp = 0;
}
//Taunt Hold
if attack = AT_TAUNT && window == 3  && taunt_down {
    window_timer = 14;
}
if (attack == AT_DSPECIAL){
    lanternhud_CURRENT = 0;}
    
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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