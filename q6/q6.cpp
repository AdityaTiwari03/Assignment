#include <iostream>
#include <ctime>
#include <unistd.h>

using namespace std;

void beep(){
  system("paplay /home/sbdaule/Music/beep-06.wav");
}

int main(){
  time_t startTime;
  time_t currentTime;
  int interval = 20;
  beep();
  startTime = time(NULL);

  while(true){
    currentTime = time(NULL);
    cout << '\a';
    if(difftime(currentTime, startTime) >= interval){
      beep();
      startTime = currentTime;
    }
    sleep(interval);
  }
  return 0;
}
