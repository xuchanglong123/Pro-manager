package com.jerrymice.runner.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
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

    @Basic
    @Column(name = "money", nullable = false, precision = 0)
    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    @Basic
    @Column(name = "receipt", nullable = false, length = 256)
    public String getReceipt() {
        return receipt;
    }

    public void setReceipt(String receipt) {
        this.receipt = receipt;
    }

    @Basic
    @Column(name = "delivery", nullable = false, length = 256)
    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    @Basic
    @Column(name = "remarks", nullable = true, length = 256)
    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Basic
    @Column(name = "invoiceTime", nullable = false)
    public Timestamp getInvoiceTime() {
        return invoiceTime;
    }

    public void setInvoiceTime(Timestamp invoiceTime) {
        this.invoiceTime = invoiceTime;
    }

    @Basic
    @Column(name = "receiptTime", nullable = false)
    public Timestamp getReceiptTime() {
        return receiptTime;
    }

    public void setReceiptTime(Timestamp receiptTime) {
        this.receiptTime = receiptTime;
    }

    @Basic
    @Column(name = "successTime", nullable = true)
    public Timestamp getSuccessTime() {
        return successTime;
    }

    public void setSuccessTime(Timestamp successTime) {
        this.successTime = successTime;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "deliveryTime", nullable = true)
    public Timestamp getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(Timestamp deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    @Basic
    @ManyToOne
    @JoinColumn(name = "invoiceId")
    public User getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(User invoiceId) {
        this.invoiceId = invoiceId;
    }

    @Basic
//    @Column(name = "receiptId", nullable = false, length = 50)
    @ManyToOne
    @JoinColumn(name = "receiptId")
    public User getReceiptId() {
        return receiptId;
    }

    public void setReceiptId(User receiptId) {
        this.receiptId = receiptId;
    }

    @Basic
    @Column(name = "size", nullable = false)
    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    @Basic
    @Column(name = "coordinate", nullable = false, length = 50)
    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }

    @Basic
    @Column(name = "itemNumber", nullable = false, length = 20)
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
