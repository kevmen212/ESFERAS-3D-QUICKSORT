float esfera[] = new float[5];

void setup() {
  fullScreen(P3D);
  for (int i = 0; i < esfera.length; i++) {
    esfera[i] = random(100);
  }
}

void draw() {
  if (mousePressed == true) {
    background(255);
    for (int i = 0; i < esfera.length; i++) {
      pushMatrix();
      stroke(0);
      translate(map(i, 0, esfera.length, width/esfera.length, width), height/2);
      rotateX(0.5);
      fill(0, 0, random(50, 220));
      sphere(esfera[i]);
      popMatrix();
      inicializar();
    }
  }
}
void inicializar()

{
  for ( int i = 0; i <esfera.length; i++) {
    esfera[i]=random(100);
  }
}
void quickSort(float arr[], int begin, int end) {

  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    quickSort(arr, begin, partitionIndex-1);
    quickSort(arr, partitionIndex+1, end);
  }
}
int partition(float arr[], int begin, int end) {
  float pivot = arr[end];
  int i = (begin-1);

  for (int j = begin; j < end; j++) {
    if (arr[j] <= pivot) {
      i++;

      float swapTemp = arr[i];
      arr[i] = arr[j];
      arr[j] = swapTemp;
    }
  }

  float swapTemp = arr[i+1];
  arr[i+1] = arr[end];
  arr[end] = swapTemp;

  return i+1;
}
