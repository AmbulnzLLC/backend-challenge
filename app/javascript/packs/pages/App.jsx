import React, { useEffect, useState } from 'react';
import OrderLine from './components/OrderLine';
import CreateOrder from './components/CreateOrder';
import './style.css';

const App = () => {
  const [orderList, setOrderList] = useState([]);
  const [showCreateOrder, setShowCreateOrder] = useState(false);
  useEffect(async() => {
    const url = '/orders';
    const response = await fetch(url);
    const list = await response.json();

    setOrderList(list);
  }, [showCreateOrder])

  const updateOrderList = () => setShowCreateOrder(false)
  const handleCreateOrder = () => setShowCreateOrder(true)

  return (
    <div className='main-wrapper'>
      <button onClick={handleCreateOrder}>Create Order</button>
      { showCreateOrder && <CreateOrder updateOrderList={(order) => updateOrderList(order)}/> }
      { !showCreateOrder && orderList.map(item => <OrderLine key={item.id} order={item}/>)}
    </div>
  )
}

export default App;

