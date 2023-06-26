import 'package:flutter/material.dart';
import 'package:llamita_vivienda/screens/add_customer.dart';
import 'package:llamita_vivienda/screens/customer_detail.dart';
import 'package:llamita_vivienda/utils/db_helper.dart';
import 'package:llamita_vivienda/utils/http_helper.dart';
import 'package:path/path.dart';
import '../models/customer_model.dart';
import 'package:http/http.dart' as dart;

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  int? customersCount;
  List? customers;
  HttpHelper? helper;

  @override
  void initState() {
    initialize();
    super.initState();
  }

  Future initialize() async {
    customers = List.empty();
    customers = await helper?.getCustomers();
    setState(() {
      customersCount = customers?.length;
      customers = customers;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Customers"),
      ),
      body: ListView.builder(
          itemCount: (customersCount == null) ? 0 : customersCount,
          itemBuilder: ((context, index) {
            return CustomerItem(customers![index]);
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddCustomer()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomerItem extends StatefulWidget {
  final CustomerModel customerModel;

  const CustomerItem(this.customerModel, {super.key});

  @override
  State<CustomerItem> createState() => _CustomerItemState();
}

class _CustomerItemState extends State<CustomerItem> {
  late bool favorite;
  late DbHelper dbHelper;
  late NetworkImage image;
  final String defaultImage =
      "https://www.themoviedb.org/assets/2/v4/logos/v2/blue_square_2-d537fb228cf3ded904ef09b136fe3fec72548ebc1fea3fbbd1ad9e36364db38b.svg";

  @override
  void initState() {
    favorite = false;
    dbHelper = DbHelper();
    isFavorite();
    super.initState();
  }

  Future isFavorite() async {
    await dbHelper.openDb();
    final result = await dbHelper.isFavorite(widget.customerModel);
    setState(() {
      favorite = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.customerModel.img != null) {
      image = NetworkImage(widget.customerModel.img!);
    } else {
      image = NetworkImage(defaultImage);
    }

    return Card(
      color: Colors.white,
      elevation: 2.0,
      child: ListTile(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
              builder: (_) => CustomerDetail(widget.customerModel));
          Navigator.push(context, route);
        },
        trailing: IconButton(
          icon: Icon(Icons.favorite,
              color: favorite ? Colors.blueAccent : Colors.grey),
          onPressed: () {
            favorite?dbHelper.delete(widget.customerModel): dbHelper.insert(widget.customerModel);
            setState(() {
              favorite = !favorite;
            });
          },
        ),
        leading: CircleAvatar(
          backgroundImage: image,
        ),
        title: Text(widget.customerModel.title!),
        subtitle: Text(
          widget.customerModel.location!,
          maxLines: 2,
        ),
      ),
    );
  }
}
