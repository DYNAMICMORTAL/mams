class Train {
  final String number;
  final String startStation;
  final String endStation;

  Train(this.number, this.startStation, this.endStation);
}

List<Train> trainList = [
  Train('123', 'Station A', 'Station B'),
  Train('456', 'Station X', 'Station Y'),
  Train('789', 'Station P', 'Station Q'),
];
