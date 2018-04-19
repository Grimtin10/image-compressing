PrintWriter output;

PImage image;

ArrayList<Integer> colors = new ArrayList<Integer>();

int cWidth = 1;
int cHeight = 1;

void setup(){
  size(1920,1080);
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
      temp=-(temp/(cWidth*cHeight));
      colors.add(temp);
    }
  }
  output.println(cWidth);
  output.println(cHeight);
  for(int i=0;i<colors.size();i++){
    output.println(colors.get(i));
  }
}