///#args attack // this line makes code editors not freak out for some reason

//makes him use his wrangler if the sentry is ready
if wrangle_ready == true{
    if(attack == AT_FTILT){
        attack = AT_EXTRA_1; //this is under ftilt_2.gml
    }
}
if free{
    if(attack == AT_DSPECIAL){
        attack = AT_DSPECIAL_AIR;
    }
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
// muno_event_type = 2;
// user_event(14);