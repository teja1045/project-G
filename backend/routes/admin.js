const express = require('express');

const router = express.Router();

router.get('/metrics', (_, res) => {
  res.json({
    bookingsPerDay: 12,
    repeatCustomersPercent: 28,
    avgRevenuePerUser: 73,
    operationalCostPerPickup: 41,
  });
});

router.get('/report/daily', (_, res) => {
  res.json({
    message: 'Daily report export placeholder',
    format: 'excel',
  });
});

module.exports = router;
