import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data and decode it
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);

    // Fetch user's orders based on their ID
    String ordersData = await fetchUserOrders(user['id']);
    List<dynamic> orders = jsonDecode(ordersData);

    // Calculate total price of all orders
    double total = 0;
    for (String order in orders) {
      String priceData = await fetchProductPrice(order);
      dynamic price = jsonDecode(priceData);

      // Ensure the price is treated as double
      total += (price is int) ? price.toDouble() : price;
    }

    return total;
  } catch (error) {
    print('error caught: $error');
    return -1;
  }
}
