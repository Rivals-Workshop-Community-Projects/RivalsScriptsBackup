// Barrier update

if hitstop > 0{
    return;
}

switch(state){
    case "init":
        if (timer == 0){
            sound_play(sound_get("barriercreate"))
        }
        if timer >= 20{
            timer = 0;
            state = "active";
        }
        break;
        
    case "active":
        if timer >= 400{
            timer = 0;
            state = "break";
        }
    break;
    
    case "break":
        if (timer == 1){
            sound_play(sound_get("soulsiphonexplode"))
            mask_index = asset_get("empty_sprite");
        }
        if timer >= 20{
            instance_destroy();
            return;
        }
    break;
}

timer += 1;