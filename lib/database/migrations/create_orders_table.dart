import 'package:vania/vania.dart';

class CreateOrdersTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('orders', () {
      id();
      date('order_date');
      timeStamps();
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('orders');
  }
}
