PrintWriter output;

PImage image;

ArrayList<Integer> colors = new ArrayList<Integer>();

int cWidth = 8;
int cHeight = 8;

void setup(){
  size(1280,720);
  //fullScreen();
  image = loadImage("image.png");
  output = createWriter("result.cim");
  image(image,0,0,width,height);
  for(int x=0;x<width;x+=cWidth){
    for(int y=0;y<height;y+=cHeight){
      color temp = 0;
      for(int _x=0;_x<cWidth;_x++){
        for(int _y=0;_y<cHeight;_y++){
          temp+=get(x+_x,y+_y);
        }
      }
      //println(temp);
      temp=(temp/(cWidth*cHeight));
      colors.add(temp);
    }
  }
  int w=width/cWidth;
  for(int i=0;i<colors.size();i++){
    for(int x=0;x<cWidth;x++){
      for(int y=0;y<cHeight;x++){
        set(i%w+x,i/w+y,colors.get(i));
      }
    }
  }
  output.println(cWidth);
  output.println(cHeight);
  for(int i=0;i<colors.size();i++){
    output.println(colors.get(i));
  }
}
