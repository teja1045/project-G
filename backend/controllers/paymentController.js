const { razorpayClient } = require('../config/razorpay');

const createPaymentOrder = async (req, res) => {
  const { amount = 0, method = 'UPI' } = req.body;

  if (!amount || amount < 49) {
    return res.status(400).json({ error: 'Amount must be at least ₹49' });
  }

  return res.json({
    message: 'Payment order created (MVP placeholder)',
    gateway: razorpayClient.provider,
    amount,
    method,
    orderId: `order_${Date.now()}`,
  });
};

module.exports = { createPaymentOrder };
