class Tank {
  int x, y, dy, size;
  
  Tank() {
    this.x = 60 ;
    this.y = 275;
    this.dy = 0;
    this.size = 75;
  }
  
  void Display() {
    image(tankimage, this.x, this.y, this.size, this.size);
    //fill(142,242,92);
    //ellipse(this.x, this.y, this.size, this.size);
  }
  
  void Move() {
    this.y = this.y - this.dy;
    if (this.y < 275) {
      this.dy = this.dy - Gravity;
    }
    else {
      this.dy = 0;
    }
  }
    
    void LeapUpwards() {
      if (this.y >= 275) {
        this.dy = 17;
      }
    }
    
    
    boolean hits(Rock rock) {
    float x1 = this.x + this.size;
    float y1 = this.y + this.size;
    float x2 = rock.x + rock.size;
    float y2 = rock.y + rock.size;
    return collideTwoObjects(x1, y1, this.size, x2, y2, rock.size);
  }
    
    
}

boolean collideTwoObjects (float x, float y, float d, float x2, float y2, float d2) {
  //2d
  if ( dist(x, y, x2, y2) <= (d/2)+(d2/2) ) {
    return true;
  }
  return false;
};
