import 'package:flutter/material.dart';
import 'package:mams/booking/selectroute.dart';

import 'confirmMyTrip.dart';

class TripDetailsPage extends StatefulWidget {
  final String source;
  final String destination;
  final List<String> stationNames;
  TripDetailsPage({required this.source, required this.destination, required this.stationNames});

  @override
  _TripDetailsPageState createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  List<bool> isSeatSelected = List.generate(24, (index) => false);

  final List<String> reservedSeats = ["1,3", "1,4", "2,3", "2,4", "3,3", "3,4"];

  @override
  Widget build(BuildContext context) {

     List<String> stationNames = [
    'MULUND BUS DEPOT',
    'Mulund BMC GARDEN',
    'MAHARSHI ARVIND CHOWK',
    'MULUND RAILWAY STATION WEST',
    'DHANVANTARI HOSPITAL',
    'MULUND SONAPUR',
    'MUNICIPAL SCHOOL',
    'MULUND CHECKNAKA BUS STATION',
    'MAHARANA PRATAP CHOWK MULUND',
    'WAGLE ESTATE POST OFFICE',
    'MARATHON CHOWK TEEN HAATH NAKA',
    'LOUIS WADI',
    'NITIN COMPANY JUNCTION',
    'CADBURY JUNCTION',
    'MAJIWADA',
    'KAPUR BAWADI',
    'TATWADNYAN VIDYAPITH',
    'MANPADA',
    'BRAHMAND AZAD NAGAR',
    'PATLI PADA',
    'WAGHBIL',
    'MUCHHALA COLLEGE',
    'ANAND NAGAR OR SAINATH NAGAR',
    'KASARVADAWALI NAKA',

  ];

   
   // Update the variable
    int selectedSeatCount = isSeatSelected.where((isSelected) => isSelected).length;
    int basePrice = 10;
    int extraStationCharge = 1;
    int totalStations = stationNames.indexOf(widget.destination) - stationNames.indexOf(widget.source);
    int pricePerSeat = basePrice + (totalStations > 5 ? (totalStations - 5) * extraStationCharge : 0);
    int totalPrice = pricePerSeat * selectedSeatCount;

    return Scaffold(
      appBar: AppBar(
        title: Text("Trip Details"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.blue),
              SizedBox(width: 8),
              Text("Source: ${widget.source}", style: TextStyle(fontSize: 18)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.red),
              SizedBox(width: 8),
              Text("Destination: ${widget.destination}", style: TextStyle(fontSize: 18)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Select Seat", style: TextStyle(fontSize: 24)),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.5,
            ),
            itemCount: 24,
            itemBuilder: (context, index) {
              final seatNumber = index + 1;
              final isSelected = isSeatSelected[index];
              final coordinates = "${(index ~/ 4) + 1},${(index % 4) + 1}";
              final isReserved = reservedSeats.contains(coordinates);
              return CheckboxListTile(
                title: Text("Seat $seatNumber"),
                value: isSelected,
                onChanged: (bool? newValue) {
                  setState(() {
                    if (!isReserved) {
                      isSeatSelected[index] = newValue ?? false;
                    }
                  });
                },
                secondary: Icon(
                  isSelected ? Icons.check : isReserved ? Icons.block : Icons.bus_alert,
                  color: isSelected ? Colors.green : isReserved ? Colors.red : Colors.grey,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Total Selected Seats: $selectedSeatCount"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Price per Seat: Rs. $pricePerSeat"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Total Price: Rs. $totalPrice"),
          ),

          ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmMyTrip(
          source: widget.source,
          destination: widget.destination,
          totalPrice: totalPrice,
        ),
      ),
    );
  },
  child: Text("Continue to Pay"),
),

        ],
        
      ),
      
    );
  }
}
