//death.gml

dspecial_used = false
move_cooldown[AT_DSPECIAL] = 0
move_cooldown[AT_NSPECIAL] = 0

if(instance_exists(hurricane)){
    hurricane.state = 1
    hurricane.state_timer = 0
    hurricane.image_index = 0
}
