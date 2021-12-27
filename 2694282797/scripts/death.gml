holding_present = false;
if instance_exists(present_id) {
    if present_id.being_held = true {
        instance_destroy(present_id);
    }
}