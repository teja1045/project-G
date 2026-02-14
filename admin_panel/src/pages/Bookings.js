import React from 'react';
import BookingTable from '../components/BookingTable';

const Bookings = () => (
  <section>
    <h2>Bookings & Assignment</h2>
    <BookingTable />
    <p style={{ marginTop: 8 }}>Actions: assign worker, update status, and confirm completion.</p>
  </section>
);

export default Bookings;
