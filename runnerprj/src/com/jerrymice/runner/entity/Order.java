package com.jerrymice.runner.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name="t_order")
public class Order {
    private Integer orderNumber;
    private Integer money;
    private String receipt;
    private String delivery;
    private String remarks;
    private Timestamp invoiceTime;
    private Timestamp receiptTime;
    private Timestamp successTime;
    private Integer status;
    private Timestamp deliveryTime;
    private User invoiceId;
    private User receiptId;
    private Integer size;
    private String coordinate;
    private String itemNumber;

    @Id
    @GeneratedValue(generator = "orderNumber")
    @GenericGenerator(name = "orderNumber", strategy = "assigned")
    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    
    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    
    public String getReceipt() {
        return receipt;
    }

    public void setReceipt(String receipt) {
        this.receipt = receipt;
    }

    
    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

   
    public Timestamp getInvoiceTime() {
        return invoiceTime;
    }

    public void setInvoiceTime(Timestamp invoiceTime) {
        this.invoiceTime = invoiceTime;
    }

    
    public Timestamp getReceiptTime() {
        return receiptTime;
    }

    public void setReceiptTime(Timestamp receiptTime) {
        this.receiptTime = receiptTime;
    }

    
    public Timestamp getSuccessTime() {
        return successTime;
    }

    public void setSuccessTime(Timestamp successTime) {
        this.successTime = successTime;
    }

   
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

  
    public Timestamp getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(Timestamp deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    @ManyToOne
    @JoinColumn(name = "invoiceId")
    public User getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(User invoiceId) {
        this.invoiceId = invoiceId;
    }

    @ManyToOne
    @JoinColumn(name = "receiptId")
    public User getReceiptId() {
        return receiptId;
    }

    public void setReceiptId(User receiptId) {
        this.receiptId = receiptId;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }
    
    public String getItemNumber() {
        return itemNumber;
    }

    public void setItemNumber(String itemNumber) {
        this.itemNumber = itemNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order orders = (Order) o;
        return orderNumber == orders.orderNumber &&
                money == orders.money &&
                status == orders.status &&
                size == orders.size &&
                Objects.equals(receipt, orders.receipt) &&
                Objects.equals(delivery, orders.delivery) &&
                Objects.equals(remarks, orders.remarks) &&
                Objects.equals(invoiceTime, orders.invoiceTime) &&
                Objects.equals(receiptTime, orders.receiptTime) &&
                Objects.equals(successTime, orders.successTime) &&
                Objects.equals(deliveryTime, orders.deliveryTime) &&
                Objects.equals(invoiceId, orders.invoiceId) &&
                Objects.equals(receiptId, orders.receiptId) &&
                Objects.equals(coordinate, orders.coordinate) &&
                Objects.equals(itemNumber, orders.itemNumber);
    }

    @Override
    public int hashCode() {

        return Objects.hash(orderNumber, money, receipt, delivery, remarks, invoiceTime, receiptTime, successTime, status, deliveryTime, invoiceId, receiptId, size, coordinate, itemNumber);
    }
}
