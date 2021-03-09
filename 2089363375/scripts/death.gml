cat_init = false
if (instance_exists(mycat)) {
    if (mycat.state != "dead") {
        mycat.state = "dead";
        mycat.state_timer = 49;
    }
}