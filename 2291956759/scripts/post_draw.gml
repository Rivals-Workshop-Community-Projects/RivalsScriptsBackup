shader_start();


 if cheapmode == 2 {
	  
	  if get_gameplay_time() < 600 {
	      draw_debug_text(x - 150 ,y -162,"A cheapie? Prepare to face my army then.");
	  }  
	    
	}

if cheapmode = 1 && get_gameplay_time() < 300{ 
	draw_debug_text(x - 80 ,y -162,"Your name seem sus.");
	draw_debug_text(x - 140 ,y -142,"(down + taunt to active anticheat.)");
}

shader_end() 

