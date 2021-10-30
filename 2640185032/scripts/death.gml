knives = 0;

with(asset_get("oPlayer")){
    
    if("knife_stack" in self){
        countdown = -1;
        knife_stack = 0;
        outline_color = [0, 0, 0];
        init_shader();
    }
}