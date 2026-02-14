const express = require('express');

const router = express.Router();

router.get('/', (_, res) => {
  res.json([
    {
      id: 'B001',
      wasteType: 'Dry waste',
      status: 'Requested',
      pickupCharge: 49,
    },
  ]);
});

router.post('/', (req, res) => {
  const { wasteType, pickupDate, timeSlot, paymentMethod } = req.body;

  if (!wasteType || !pickupDate || !timeSlot || !paymentMethod) {
    return res.status(400).json({ error: 'Missing required booking fields' });
  }

  return res.status(201).json({
    id: `B${Date.now()}`,
    wasteType,
    pickupDate,
    timeSlot,
    paymentMethod,
    status: 'Requested',
  });
});

module.exports = router;
