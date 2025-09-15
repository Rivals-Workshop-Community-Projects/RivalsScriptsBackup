 with(asset_get("oPlayer")){
	if(id != other.id && webbed == true && id != webbed_id){
        var webbed_sprite = -1;
        //sprite_get can only be called directly by the workshop character
        with (other) {   
            webbed_sprite = sprite_get("webbedeffect");
        }
            
        if (webbed_sprite != -1)
           // shader_start();
            draw_sprite(webbed_sprite, get_gameplay_time()*.15, x, y);
        with (webbed_sprite){
            //shader_end();
        }
    }
 }
