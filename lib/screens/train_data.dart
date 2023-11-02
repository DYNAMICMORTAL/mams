class Train {
  final String number;
  final String startStation;
  final String endStation;

  Train(this.number, this.startStation, this.endStation);
}

List<Train> trainList = [
  Train('123', 'Mulund Depot', 'CSMT Gate'),
  Train('456', 'Station X', 'Station Y'),
  Train('789', 'Station P', 'Station Q'),
  Train('100', 'Station P', 'Station Q'),
  Train('65AC', 'Station P', 'Station Q'),
  Train('65', 'Station P', 'Station Q'),
  Train('65ac', 'Station P', 'Station Q'),
  Train('64', 'Station P', 'Station Q'),
  Train('88', 'Station P', 'Station Q'),
];
