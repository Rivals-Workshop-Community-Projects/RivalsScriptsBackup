//hi

nspec_cancel_buffer = false

steam_wall_dismiss = true

if(pedal_to_metal){
    pedal_to_metal = false
    move_cooldown[AT_NSPECIAL] = 80
    if(steam > 12.5){
        steam -= 12.5
    }else{
        steam = 0
    }
}