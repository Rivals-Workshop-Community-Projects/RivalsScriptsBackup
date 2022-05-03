//

if (followArray != -4) {


	
    with oPlayer {
    	
		if id == other.followArray[0] {

			other.camx1 = x
			other.camy1 = min(y - 80, 700)

		}
		
		if id == other.followArray[1] {

			other.camx2 = x
			other.camy2 = min(y - 80, 700)

		}
		
	}
	


	

oldcamx = ((camx1 + camx2) + (room_width*2))/6
oldcamy = max((camy1 + camy2 + (room_height))/4 - 154, -50) + 60 	

newcamx += floor((oldcamx - newcamx)/12)
newcamy += floor((oldcamy - newcamy)/12)


camcontrolx = min( room_width/2 + 200, max( room_width/2 - 200, newcamx))
camcontroly = min( 450, max(newcamy + 100,250)) 

set_view_position( camcontrolx, camcontroly ) ;



}

