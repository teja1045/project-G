import React from 'react';
import Dashboard from './pages/Dashboard';
import Bookings from './pages/Bookings';
import Users from './pages/Users';
import Sidebar from './components/Sidebar';

function App() {
  return (
    <div style={{ display: 'flex', fontFamily: 'sans-serif' }}>
      <Sidebar />
      <main style={{ padding: 16, width: '100%' }}>
        <h1>Garbage Pickup Admin Panel (MVP)</h1>
        <Dashboard />
        <Bookings />
        <Users />
      </main>
    </div>
  );
}

export default App;
