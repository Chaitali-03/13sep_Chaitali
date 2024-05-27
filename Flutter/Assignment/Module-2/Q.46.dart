//46. Create a program using List
void main()
{
  List<String> data=["A","B","C"];
  data.add("D");
  print(data);

  List<String> data2=["P","Q","r"];
  print(data2);

  data.addAll(data2);
  print(data);
  print(data.length);
  print(data[1]);

  data[6]="z";
  print(data);

  data.remove("z");
  print(data);

  data.removeAt(3);
  print(data);

  for(String elment in data)
    {
      print(elment);
    }


}