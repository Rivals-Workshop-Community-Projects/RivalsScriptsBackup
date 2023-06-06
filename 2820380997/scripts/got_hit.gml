//got_hit.gml
// Stop clone from walkign when hit
clone_walk_direction = 0;  // Stop clone from walking

//Destroy Clone on getting hit
//print(orig_knock);
if (orig_knock > 2){ // makes sure that the hit did some minimum kb threshold to prevent weird coded hitboxes from auto destroying clone.
    if(instance_exists(clone_object_ID)){
        clone_object_ID.state = 99;
    }
}