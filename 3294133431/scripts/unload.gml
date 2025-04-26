//

if(parryClone != noone)
    instance_destroy(parryClone);
for(var i = 0; i < ds_list_size(clones); i++)
    instance_destroy(clones[|i]);
ds_list_destroy(clones);
ds_list_destroy(sappers);
ds_list_destroy(trails);
ds_list_destroy(opponentLines);

ds_map_destroy(hudYOffsetMap);
ds_map_destroy(m1);
ds_map_destroy(m2);
ds_map_destroy(m3);
ds_map_destroy(m4);
ds_map_destroy(postDrawMessageMap);
ds_map_destroy(spriteMap);