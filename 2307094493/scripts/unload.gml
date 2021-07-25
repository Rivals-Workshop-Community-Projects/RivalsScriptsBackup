if (instance_exists(acorn)) {
    if (ds_list_valid(acorn.colliding_hitboxes)) {
        ds_list_destroy(acorn.colliding_hitboxes);
    }
}

with (asset_get("obj_article3")) {
    if (ds_list_valid(colliding_hitboxes)) {
        ds_list_destroy(colliding_hitboxes);
    }
}