//update
if (uspecial_hud_text_alpha > 0.0) uspecial_hud_text_alpha -= 0.1;
if (uspecial_hud_text_alpha_2 > 0.0) uspecial_hud_text_alpha_2 -= 0.1;

//Destroy the article
if (state == PS_RESPAWN or state == PS_DEAD){
    if(uspecial_save != noone){
        instance_destroy(uspecial_save);
        uspecial_save = noone;    
    }
}