import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data and decode it
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);

    // Fetch user's orders based on their ID
    String ordersData = await fetchUserOrders(user['id']);
    
    // Check if ordersData is null
    if (ordersData == null || ordersData == 'null') {
      throw 'User orders not found';
    }

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
    return -1;  // Return -1 as an integer in case of an error
  }
}
