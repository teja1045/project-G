const express = require('express');
const paymentRoutes = require('./routes/payment');
const bookingRoutes = require('./routes/booking');
const workerRoutes = require('./routes/worker');
const adminRoutes = require('./routes/admin');

const app = express();
app.use(express.json());

app.use('/api/payment', paymentRoutes);
app.use('/api/bookings', bookingRoutes);
app.use('/api/worker', workerRoutes);
app.use('/api/admin', adminRoutes);

app.get('/health', (_, res) => {
  res.json({ status: 'ok', service: 'garbage-pickup-backend' });
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
