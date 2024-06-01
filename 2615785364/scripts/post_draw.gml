shader_start();

if (attack == AT_DTILT || attack == AT_DAIR){
        if (sonicSpinSpeed >= 2){
			draw_sprite(sprite_get("sonic_hud2"),0,x-95,y-82);
        }
        if (sonicSpinSpeed >= 6){
            draw_sprite(sprite_get("sonic_hud2"),1,x-95,y-82);
        }
        if (sonicSpinSpeed >= 8){
            draw_sprite(sprite_get("sonic_hud2"),2,x-95,y-82);
        }
        if (sonicSpinSpeed >= 10){
            draw_sprite(sprite_get("sonic_hud2"),3,x-95,y-82);
        }
        if (sonicSpinSpeed >= 12){
			draw_sprite(sprite_get("sonic_hud2"),4,x-95,y-82);
        }
}

shader_end();