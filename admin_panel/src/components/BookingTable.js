import React from 'react';

const rows = [
  { id: 'B001', customer: 'Rahul', wasteType: 'Dry waste', status: 'Requested' },
  { id: 'B002', customer: 'Sneha', wasteType: 'E-waste', status: 'Assigned' },
];

const BookingTable = () => (
  <table border="1" cellPadding="8" style={{ borderCollapse: 'collapse', width: '100%' }}>
    <thead>
      <tr>
        <th>ID</th>
        <th>Customer</th>
        <th>Waste Type</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      {rows.map((row) => (
        <tr key={row.id}>
          <td>{row.id}</td>
          <td>{row.customer}</td>
          <td>{row.wasteType}</td>
          <td>{row.status}</td>
        </tr>
      ))}
    </tbody>
  </table>
);

export default BookingTable;
