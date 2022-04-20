import 'package:get/get.dart';
//
import '../model/salads_model.dart';

class FoodController extends GetxController {
  List<SaladModel> salads = [
    SaladModel(
      id: "1",
      img: "assets/images/pecel.png",
      title: "Pecel",
      subtitle: "Macam Sayur Sayuran",
      price: 15000,
      deliveryTime: "5 min",
      description:
          "Pecel atau pecal merupakan makanan berasal dari pulau Jawa, makanan ini biasanya dihidangkan dengan bumbu sambal kacang sebagai bahan utamanya dan dicampur dengan aneka jenis sayuran. Makanan ini populer terutama di wilayah DI Yogyakarta, Jawa Tengah, dan Jawa Timur",
      quantity: 1,
    ),
    SaladModel(
      id: "2",
      img: "assets/images/nasidoreng.jpg",
      title: "Nasi Goreng Kambing",
      subtitle: "Nasi Yang di Mix",
      price: 20000,
      deliveryTime: "10 min",
      description:
          "Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng, margarin, atau mentega. Biasanya ditambah kecap manis, bawang merah, bawang putih, asam jawa, lada dan bumbu-bumbu lainnya; seperti telur, ayam, dan kerupuk.",
      quantity: 1,
    ),
    SaladModel(
      id: "3",
      img: "assets/images/saladbuah.jpg",
      title: "Salad Buah",
      subtitle: "Aneka Buah Buahan",
      price: 12000,
      deliveryTime: "10 min",
      description:
          "Salad buah adalah makanan segar yang terbuat dari berbagai macam buah enak dan segar yang dicampur dengan bahan lain seperti yogurt, mayones, dan keju.",
      quantity: 1,
    ),
    SaladModel(
      id: "4",
      img: "assets/images/soto.png",
      title: "Soto Lamongan",
      subtitle: "Hangat dan Segar",
      price: 15000,
      deliveryTime: "15 min",
      description:
          "sup tradisional Indonesia yang terutama terdiri dari kaldu, daging, dan sayuran. Banyak sup tradisional disebut soto, sedangkan sup yang dipengaruhi asing dan Barat disebut sop. Soto kadang-kadang dianggap sebagai hidangan nasional Indonesia, karena disajikan dari Sumatera ke Papua, dalam berbagai variasi.",
      quantity: 1,
    ),
  ];

  // For add 1 item from quantityes of Food
  void addQ(int index) {
    if (salads[index].quantity < 9 && salads[index].quantity >= 0) {
      salads[index].quantity++;
    } else {
      Get.snackbar("Notice", "Batas Pemesanan Maksimal 9");
    }
    update(["quantity"]);
  }

  // For remove 1 item from quantityes of Food
  void removeQ(int index) {
    if (salads[index].quantity > 1 && salads[index].quantity <= 9) {
      salads[index].quantity--;
    } else {
      Get.snackbar("Notice", "Pesanan Kamu Tidak Boleh 0");
    }
    update(["quantity"]);
  }
}
