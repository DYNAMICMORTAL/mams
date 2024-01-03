const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors()); // Enable CORS for all routes
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
console.log(`now will try to app.post`);


app.post('/updateUserLocation', (req, res) => {
  const userLongitude = parseFloat(req.body.userLongitude);
  const userLatitude = parseFloat(req.body.userLatitude);

  // Perform further operations with the user's location coordinates
  // Example: Log the coordinates
  console.log(`Received user location: ${userLatitude}, ${userLongitude}`);

  res.status(200).send('User location received successfully');
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
console.log(`Received`);