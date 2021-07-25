air_max_speed = 6;
dairtimer = 0;
dairland = 0;
teleparticles = 0;

if(skeletonout){
    skeletonout = false;
    with(spawnegg){
        state = 4;
    }
}
if(!endertnt2 && !endertnt){
	if(tntout){
		with(tnt){
		    state = 400;
		}
	}
}
if(endertnt2){
	with(enderman){
		endermovetnt = 6;
	}
}