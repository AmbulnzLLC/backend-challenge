import React, { useState } from 'react'

const OrderLine = ({ order }) => {
  const [isOpen, setOpen] = useState(false);
  const handleClick = () => setOpen(!isOpen);

  return (
    <div className='order-line'>
      <div className='order-header'>
        <div className='order-title'>Order №{ order.id }</div>
        <div className='order-total'>Total sum:{ order.total }</div>
        <div onClick={handleClick}>Show more</div>
      </div>
      { isOpen && <div className='order-body'>
        { order.items.map(item => {
          return (<div className='order-item'>
            <div>{item.pizza}</div>
            <div>{item.quantity}</div>
          </div>
        )})}
      </div> }
    </div>
  )
}

export default OrderLine;
