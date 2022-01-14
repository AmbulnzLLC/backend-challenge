import React, { useState, useEffect } from 'react';

const CreateOrder = ({ updateOrderList }) => {
  const [pizzaList, setPizzaList] = useState([]);
  const [orderList, setOrderList] = useState([]);
  const [currentPizza, setCurrentPizza] = useState(-1);
  const [currentQuantity, setCurrentQuantity] = useState(0);

  useEffect(async() => {
    const url = '/pizzas';
    const response = await fetch(url);
    const list = await response.json();

    setPizzaList(list);
  }, [])

  const handleSelect = (event) => setCurrentPizza(event.target.value);
  const handleChangeInput = (event) => setCurrentQuantity(event.target.value);
  const handleOnClick = () => {
    const newOrderList = orderList;
    newOrderList.push({ pizza: currentPizza, quantity: currentQuantity });

    setCurrentPizza(0);
    setCurrentQuantity(0);

    setOrderList(newOrderList);
  }

  const getPizzaName = (id) => {
    const pizza = pizzaList.find(pizza => {
      if (pizza.id == id) {
        return pizza
      }
    })

    return pizza?.name || 'Unknow value'
  }

  const handleSubmit = async() => {
    const token = document.querySelector('meta[name="csrf-token"]').content;
    const url = '/orders';
    const response = await fetch(url, {
      method: "POST",
      headers: {
        "X-CSRF-Token": token,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ order: orderList })
    })

    const order = await response.json();

    // todo add errors

    setOrderList([]);
    setCurrentPizza(-1);
    setCurrentQuantity(0);
  }

  return (
    <div className='create-order'>
      <div>
        {orderList.map(item => {
          return (
            <div>
              <div>Name: {getPizzaName(item.pizza)}</div>
              <div>Quantity: {item.quantity}</div>
            </div>
          )
        })}
      </div>
      <div>
        Pizza:
        <select
          value={currentPizza}
          onChange={handleSelect}
          placeholder='Select pizza name'
        >
          {pizzaList.map(pizza => <option key={pizza.id} value={pizza.id}>{pizza.name}</option>)}
        </select>
      </div>
      <div>
        Quantity: 
        <input value={currentQuantity} onChange={handleChangeInput} />
      </div>
      <button onClick={handleOnClick} >Add to order</button>
      <button onClick={handleSubmit} >Create order</button>
    </div>
  )
}

export default CreateOrder;
