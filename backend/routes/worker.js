const express = require('express');

const router = express.Router();

router.get('/assigned', (_, res) => {
  res.json([
    {
      bookingId: 'B002',
      customerName: 'Sneha',
      actionItems: ['Call customer', 'Collect waste', 'Upload photo proof'],
    },
  ]);
});

router.patch('/:bookingId/complete', (req, res) => {
  const { bookingId } = req.params;
  res.json({ bookingId, status: 'Completed' });
});

module.exports = router;
