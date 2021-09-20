//death.gml

waterLevel = 0
waterCharges = 1

if(instance_exists(saw_blade)){
    saw_blade.state = 4
    saw_blade.state_timer = 0
    saw_blade.image_index = 0
}