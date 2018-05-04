String[] pointData;
String[] pointArray;

void setup(){
  size(300,300);
  background(200);
  noFill();
}

void draw(){
  rect(20,20,50,50);
  rect(mouseX, mouseY, 1,1);
  float x = mouseX;
  float y = mouseY;
  String point = str(x) + str(y);
  //pointArray = append({point};
  pointData= append(pointArray, point);
  
  //pointData.concat({point}); 
  //print(pointData);
  if (mousePressed == true){
    saveStrings("data.txt", pointData);
  }
}