class Flyes { 
  float size = 1;

  color c; 
  float xpos;
  float ypos;
  float xspeed;
  int r, g, b;
  float ro;
Flyes(float si){
size = si;
}

  Flyes(float xp, float yp, float s, int rc, int bc, int gc, float ro) { 
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
    
    
    ellipse(xpos, ypos, 10*size, 10 *size);
    fill(175);
  
    ellipse(xpos+5, ypos+5, 5*size, 10*size);
    
    ellipse(xpos-5, ypos+5, 5*size, 10*size);
  }

  // Function.  
  void move() { 
    ypos = ypos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}

/*class BigFlyes { 

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
  
    ellipse(xpos+5, ypos+5, 5*2, 10*2);
    
    ellipse(xpos-5, ypos+5, 5*2, 10*2);
  }

  // Function.  
  void move() { 
    ypos = ypos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}*/
