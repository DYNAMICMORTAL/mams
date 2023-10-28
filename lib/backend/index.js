// import express from 'express'
// import mysql2 from 'mysql2'
// const app = express();
// const port = 3000;

// // MySQL Connection Configuration
// const db = mysql2.createConnection({
//   host: '192.168.0.102',
//   user: 'root',
//   password: 'some_pass',
//   database: 'first_db',
// });

// // Connect to MySQL
// db.connect((err) => {
//   if (err) {
//     console.error('Error connecting to MySQL:', err);
//   } else {
//     console.log('Connected to MySQL!');
//   }
// });

// // API endpoint for bus details
// // app.get('/api/buses/:busNumber', (req, res) => {
// //   const busNumber = req.params.busNumber;

// //   // Perform a MySQL query to get information about the specified bus
// //   const query = 'SELECT * FROM Buses WHERE bus_number = ?';

// //   db.query(query, [busNumber], (err, results) => {
// //     if (err) {
// //       console.error('Error executing MySQL query:', err);
// //       res.status(500).send('Internal Server Error');
// //     } else {
// //       if (results.length > 0) {
// //         res.json(results[0]); // Send the first result (assuming bus numbers are unique)
// //       } else {
// //         res.status(404).send('Bus not found');
// //       }
// //     }
// //   });
// // });












// app.get('/api/buses/:busNumber', (req, res) => {
//     const busNumber = req.params.busNumber;
  
//     const query = 'SELECT Buses.*, Routes.route_name, Routes.destination ' +
//                   'FROM Buses ' +
//                   'JOIN Routes ON Buses.route_id = Routes.route_id ' +
//                   'WHERE Buses.bus_number = ?';
  
//     db.query(query, [busNumber], (err, results) => {
//       if (err) {
//         console.error('Error executing MySQL query:', err);
//         res.status(500).send('Internal Server Error');
//       } else {
//         if (results.length > 0) {
//           const busInfo = results[0];
//           res.json({
//             number: busInfo.bus_number,
//             route: busInfo.route_name,
//             destination: busInfo.destination,
//           });
//         } else {
//           res.status(404).send('Bus not found');
//         }
//       }
//     });
//   });








//   // New API endpoint for bus stops
// app.get('/api/buses/:busNumber/stops', (req, res) => {
//     const busNumber = req.params.busNumber;
  
//     const query = `
//       SELECT BusStops.stop_name
//       FROM Buses
//       JOIN BusStopsAssociation ON Buses.bus_id = BusStopsAssociation.bus_id
//       JOIN BusStops ON BusStopsAssociation.stop_id = BusStops.stop_id
//       WHERE Buses.bus_number = ?;
//     `;
  
//     db.query(query, [busNumber], (err, results) => {
//       if (err) {
//         console.error('Error executing MySQL query:', err);
//         res.status(500).send('Internal Server Error');
//       } else {
//         const stops = results.map((result) => result.stop_name);
//         res.json({ stops });
//       }
//     });
// });










// // API endpoint for user details
// app.get('/api/users/:userId', (req, res) => {
//     const userId = req.params.userId;
  
//     const query = 'SELECT * FROM Users WHERE user_id = ?';
  
//     db.query(query, [userId], (err, results) => {
//       if (err) {
//         console.error('Error executing MySQL query:', err);
//         res.status(500).send('Internal Server Error');
//       } else {
//         if (results.length > 0) {
//           res.json(results[0]);
//         } else {
//           res.status(404).send('User not found');
//         }
//       }
//     });
//   });

// // API endpoint for reservation details
// app.get('/api/reservations/:reservationId', (req, res) => {
//   const reservationId = req.params.reservationId;

//   // Perform a MySQL query to get information about the specified reservation
//   const query = 'SELECT * FROM Reservations WHERE reservation_id = ?';

//   db.query(query, [reservationId], (err, results) => {
//     if (err) {
//       console.error('Error executing MySQL query:', err);
//       res.status(500).send('Internal Server Error');
//     } else {
//       if (results.length > 0) {
//         res.json(results[0]); // Send the first result (assuming reservation IDs are unique)
//       } else {
//         res.status(404).send('Reservation not found');
//       }
//     }
//   });
// });

// // Start the Express server
// app.listen(port, () => {
//   console.log(`Server is running on http://localhost:${port}`);
// });


























import express from 'express';
import mysql2 from 'mysql2';
import env from 'dotenv';

const app = express();
const port = 3000;

// MySQL Connection Configuration
const db = mysql2.createConnection({
  host: process.env.IP_LINK,
  user: 'root',
  password: 'some_pass',
  database: process.env.DB_NAME,
});

// Connect to MySQL
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL!');
  }
});

// API endpoint for bus details
app.get('/api/buses/:busNumber', (req, res) => {
  const busNumber = req.params.busNumber;

  const query = 'SELECT Buses.*, Routes.route_name, Routes.destination ' +
                'FROM Buses ' +
                'JOIN Routes ON Buses.route_id = Routes.route_id ' +
                'WHERE Buses.bus_number = ?';

  db.query(query, [busNumber], (err, results) => {
    if (err) {
      console.error('Error executing MySQL query:', err);
      res.status(500).send('Internal Server Error');
    } else {
      if (results.length > 0) {
        const busInfo = results[0];
        res.json({
          number: busInfo.bus_number,
          route: busInfo.route_name,
          destination: busInfo.destination,
        });
      } else {
        res.status(404).send('Bus not found');
      }
    }
  });
});

// New API endpoint for bus stops
app.get('/api/buses/:busNumber/stops', (req, res) => {
  const busNumber = req.params.busNumber;

  const query = `
    SELECT BusStops.stop_name
    FROM Buses
    JOIN BusStopsAssociation ON Buses.bus_id = BusStopsAssociation.bus_id
    JOIN BusStops ON BusStopsAssociation.stop_id = BusStops.stop_id
    WHERE Buses.bus_number = ?;
  `;

  db.query(query, [busNumber], (err, results) => {
    if (err) {
      console.error('Error executing MySQL query:', err);
      res.status(500).send('Internal Server Error');
    } else {
      const stops = results.map((result) => result.stop_name);
      res.json({ stops });
    }
  });
});

// API endpoint for user details
app.get('/api/users/:userId', (req, res) => {
  const userId = req.params.userId;

  const query = 'SELECT * FROM Users WHERE user_id = ?';

  db.query(query, [userId], (err, results) => {
    if (err) {
      console.error('Error executing MySQL query:', err);
      res.status(500).send('Internal Server Error');
    } else {
      if (results.length > 0) {
        res.json(results[0]);
      } else {
        res.status(404).send('User not found');
      }
    }
  });
});

// API endpoint for reservation details
app.get('/api/reservations/:reservationId', (req, res) => {
  const reservationId = req.params.reservationId;

  const query = 'SELECT * FROM Reservations WHERE reservation_id = ?';

  db.query(query, [reservationId], (err, results) => {
    if (err) {
      console.error('Error executing MySQL query:', err);
      res.status(500).send('Internal Server Error');
    } else {
      if (results.length > 0) {
        res.json(results[0]);
      } else {
        res.status(404).send('Reservation not found');
      }
    }
  });
});

// Start the Express server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
