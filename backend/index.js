const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.post('/getNearestBusStop', (req, res) => {
  const userLongitude = parseFloat(req.body.userLongitude);
  const userLatitude = parseFloat(req.body.userLatitude);

  // Perform your logic to find the nearest bus stop based on user's location
  // Example: Replace this with your actual logic
  const nearestBusStop = {
    stop_name: 'Sample Bus Stop',
    stop_distance: 0.5, // Sample distance in kilometers
  };

  res.status(200).json(nearestBusStop);
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
