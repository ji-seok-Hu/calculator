void main() {
  List<String> num_list = [
    "1",
    "2",
    "3",
    "1",
    "2",
    ",",
    "4",
    ",",
    "2",
    "1",
    ",",
    "4",
    "1",
    "2"
  ];
  List<String> num_sign = ["-", "-", "+"];
  List<int> empy = [];
  List<int> num_ssin = [];

  // String str = "12312,4,21,412";
  num_list[0] = num_list.join();
  // print(num_list);s
  List<String> result = num_list[0].split(',');
  // print(result);
  for (int i = 0; i < result.length; i++) {
    int non = int.parse(result[i]);
    empy.add(non);
  }
  // print(empy);
  for (int i = 0; i < num_sign.length; i++) {
    if (num_sign[i] == "+") {
      if (i == 0) {
        num_ssin.add(empy[0]);
        // print(num_ssin);
        num_ssin[0] = num_ssin[0] + empy[1];
      } else if (i > 0) {
        num_ssin[0] = num_ssin[0] + empy[i + 1];
        print(num_ssin);
      }
    } else if (num_sign[i] == "-") {
      if (i == 0) {
        num_ssin.add(empy[0]);
        num_ssin[0] = num_ssin[0] - empy[1];
      } else if (i > 0) {
        num_ssin[0] = num_ssin[0] - empy[i + 1];
      }
    }
  }

  num_list.clear();
  String str = num_ssin[0].toString();
  num_list.add(str);
  print(num_list.join());
}
