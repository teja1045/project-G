import React from 'react';

const Sidebar = () => (
  <aside style={{ width: 220, padding: 16, background: '#f2f7f2', minHeight: '100vh' }}>
    <h3>Admin Controls</h3>
    <ul>
      <li>View bookings</li>
      <li>Assign worker</li>
      <li>Change pricing</li>
      <li>View payments</li>
      <li>Daily Excel report</li>
      <li>Manage users</li>
    </ul>
  </aside>
);

export default Sidebar;
