for (var i = 0; i < array_length(smoke_objects); i++) {
    if (!instance_exists(smoke_objects[i])) continue;
    if (smoke_objects[i].size < 10)
        draw_sprite(smoke3_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
}
for (var i = 0; i < array_length(smoke_objects); i++) {
    if (!instance_exists(smoke_objects[i])) continue;
    if (smoke_objects[i].size < 10)
        draw_sprite(smoke2_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
}
        
for (var i = 0; i < array_length(smoke_objects); i++) {
    if (!instance_exists(smoke_objects[i])) continue;
    if (smoke_objects[i].size < 10)
        draw_sprite(smoke1_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
}