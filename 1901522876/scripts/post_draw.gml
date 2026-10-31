if(owner.url == 1898782296){
    with (owner) shader_start();
}
if(state == "taunt"){
    draw_sprite(sprite_get("taunt"), image_index, x, y);
}
else if(state == "idle" && waiting){
    draw_sprite(sprite_get("wait"), image_index, x, y);
} else{
    draw_sprite(sprite_get("idle"), -1, x, y);
}
if(owner.url == 1898782296){
   with (owner) shader_end();
}