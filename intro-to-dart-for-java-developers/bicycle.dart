class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);
  // ↑は↓と同じ
  // Bicycle(int cadence, int speed, int gear) {
  //   this.cadence = cadence;
  //   this.speed = speed;
  //   this.gear = gear;
  // }

  // toStringをoverrideすることでインスタンスをprintした時の出力が変わる
  // デフォルトだと "Instance of ‘Bicycle'" が出力される
  @override
  String toString() => 'Bicycle: $speed mph';
}

void main() {
  // 値が変わらない場合はvarの代わりにfinalを使うこともできる
  var bike = Bicycle(2, 2, 1);
  // ↑は↓と同じ（newキーワードはoptional）
  // var bike = new Bicycle(2, 0, 1);

  print(bike); 
}

