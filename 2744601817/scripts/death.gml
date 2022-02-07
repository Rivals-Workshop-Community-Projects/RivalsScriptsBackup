//death.gml

sound_stop(asset_get("sfx_death1"));
sound_stop(asset_get("sfx_death2"));

sound_stop(sound_get("bdash1"))
sound_stop(sound_get("rdash1"))

sound_play(log_death_sound);

//old code ignore this

with(kunai){ //article1
    //print_debug("YOU DIED ALSO MY ID IS "+string(id));

    if (id==kunai.id) {
        state_timer = 0;
        state = 6;
        //print_debug("IM DELETING THE RIGHT THING");
    }
    
}

/*
//lord fucking forgive me
for (i = 0; i < instance_number(obj_article1); i+=1;) {
    print_debug(string(i));
    obj = instance_find(obj_article1,i);
    print_debug("this guy is "+string(obj.id)); //print object id

    if (obj.id==kunai.id) { //Found the kunai! destroy it.
        obj.state_timer = 0;
        obj.state = 6;
        print_debug("IM DELETING THE RIGHT THING");
    }
    //also WHY IS THIS THE ONLY WAY TO MAKE THIS WORK (like is there no way to find an object by id)
}
*/

dash_dir = 0;
max_fall = max_fall_default;