import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelapp/models/destination_model.dart';

class DestinationService {
  final CollectionReference _destinationReference = FirebaseFirestore.instance.collection('destination');


  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot snapshot = await _destinationReference.get();

      List<DestinationModel> destinations = snapshot.docs.map((data) {
        return DestinationModel.fromJson(data.id, data.data() as Map<String, dynamic>);
      }).toList();
      return destinations;  
    } catch (e) {
      throw e;
    }
  }
}