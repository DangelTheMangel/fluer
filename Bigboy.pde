class BigFlyes { 

  color c; 
  float xpos;
  float ypos;
  float xspeed;
  int r, g, b;
  float ro;


  BigFlyes(float xp, float yp, float s, int rc, int bc, int gc, float ro) { 
    r = rc;
    b = bc;
    g = gc;
    xpos = xp;
    ypos = yp;
    xspeed = s*1.1;
    this.ro= ro;
  }


  void display() { 

    rectMode(CENTER);
    stroke(0);
    fill(r, b, g);
    rotate(PI/ro);
    
    
    ellipse(xpos, ypos, 10*2, 10*2);
    fill(175);
  
    ellipse(xpos+5, ypos+5, 5*1.5, 10*1.5);
    
    ellipse(xpos-5, ypos+5, 5*1.5, 10*1.5);
  }

  // Function.  
  void move() { 
    ypos = ypos + xspeed +random(0,1);
    if (xpos > width) {
      xpos = 0;
    }
  }
}
