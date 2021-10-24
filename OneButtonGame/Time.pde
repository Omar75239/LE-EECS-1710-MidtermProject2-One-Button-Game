class Time {
  float currentTime;
  Time(float set) {
    currentTime = set;
  }
  float getTime() {
    return(currentTime);
  }
  void countUp() {
    currentTime = currentTime + 1/frameRate;
  }
}
