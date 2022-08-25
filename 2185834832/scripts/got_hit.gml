//hi
/*
if(waterCharges <= 0){
    waterLevelEmergency = 7
}*/

sound_stop(sound_get("Inner taunt audio thing whatever idk dude"))

move_cooldown[AT_USPECIAL] = 0

double_jump_timer = 0

if(attack == AT_DSPECIAL){
    if(instance_exists(saw_blade)){
        if(saw_blade.state == 0){
            saw_blade.state = 4
            saw_blade.state_timer = 0
            saw_blade.image_index = 0 
        }
    }
}