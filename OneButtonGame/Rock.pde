class Rock {
  int x, y, size;
  
  Rock() {
    this.x = 2000;
    this.y = 260; 
    this.size = 100;
  }

  void Move() {
    this.x = this.x - 18;
    if(this.x < -this.size) {
      this.x = (int) random(800, 3000);
    }
  }
  
  void Display() {
    image(rockimage, this.x, this.y, this.size, this.size);
    //fill(131, 52, 235);
    //rect(this.x, this.y, this.size, this.size);
  }
  
}
