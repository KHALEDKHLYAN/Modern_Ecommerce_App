class TPriceCalculator{
     //-- Calculate price based om tax and shipping
     static double calculateTotalPrice(double productPrice, String location){
        double taxRate = getTaxRateForLocation(location);
        double taxAmount = productPrice * taxRate;

        double shippingCost = getShippingCost(location);

        double totalPrice = productPrice + taxAmount + shippingCost;
        return totalPrice;
     }

     //calculate shipping Cost
     static String calculateShippingCost(double productPrice, String location){
        double shippingCost = getShippingCost(location);
        return shippingCost.toStringAsFixed(2);
     }

     // caculate Tax
     static String calculateTax(double productPrice, String location){
        double taxRate = getTaxRateForLocation(location);
        double taxAmount = productPrice * taxRate;
        return taxAmount.toStringAsFixed(2);
     }

     static double  getTaxRateForLocation(String location){
        //logic to get tax rate for location
        //look for  the location in the database or file or API
        //return the appropriate tax rate
        return 0.10;

     }

     static double getShippingCost(String location){
        //look for the shipping cost for the given location using shipping rate API
        // calculate thr shipping cost based on various factors like distance, weight 
        return 5.00;
     }


}