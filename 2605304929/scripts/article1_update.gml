// article1_update.gml

switch(state){
    case 1:// Grab Start Up / Inital Air Catch
        sprite_index = sprite_get("cintematic_final_smash_grab1");
        image_index = article1_timer / 10;
        if(player_id.window = 2){state = 2; state_timer = 0;}
    break;
    case 2: // No Cutscene / Grabbed in the air Loop
        sprite_index = asset_get("empty_sprite");
        image_index = 0;
        if(player_id.window = 3){state = 3;state_timer = 0;}
    break;
    case 3: // Throw Start Up / Land Start up (Skip pancake frame)
        sprite_index = sprite_get("cintematic_final_smash_throw1");
        image_index = state_timer / 15;
        if(state_timer == 1 && hitstop == 0){electric_loop_sound_obj = sound_play(electric_loop_sound);}
        //print(state_timer);
        if(player_id.window = 4){state = 4;state_timer = 0;}
    break;
    case 4: // Eyes Fade / Electric Shock
        sprite_index = sprite_get("cintematic_final_smash_eyes");
        image_index = article1_timer / 15;
        if(player_id.window = 5){state = 5;state_timer = 0;}
    break;
    case 5: // Dismounted / Pushed Off
        sprite_index = asset_get("empty_sprite");
        instance_destroy(self);
    break;
}

article1_timer++;
state_timer++;