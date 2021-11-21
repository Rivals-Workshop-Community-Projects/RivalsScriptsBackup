if (instance_exists(terrain)){
        terrain.state = 2;
        terrain.state_timer = 0;
}
terrain = instance_create(x, y, "obj_article1");