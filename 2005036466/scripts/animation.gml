// Because sure.
if codec_active == 1 or codec_active == 2{
    suppress_stage_music( 0.05, 0.05 );
}

//

switch(state){
    case PS_CROUCH:
        if state_timer < 4 or !down_down{
            crouchbox_spr = sprite_get("penny_hurt");
        } else {
            crouchbox_spr = sprite_get("pennycrouch_hurt");
        }
        break;
}