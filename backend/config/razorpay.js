const razorpayClient = {
  provider: 'razorpay',
  keyId: process.env.RAZORPAY_KEY_ID || 'placeholder_key',
};

module.exports = { razorpayClient };
