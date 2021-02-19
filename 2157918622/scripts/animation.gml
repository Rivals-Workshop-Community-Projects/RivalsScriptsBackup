//animation

if (state == PS_WRAPPED && !free){
    sprite_index = sprite_get("hurtground");
}
if (state == PS_PRATFALL && wrappedfall){
    sprite_index = sprite_get("wrappedfall");
}
if (state == PS_PRATLAND && wrappedfall){
    sprite_index = sprite_get("wrappedland");
}