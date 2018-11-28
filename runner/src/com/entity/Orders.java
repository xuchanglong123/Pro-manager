package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Orders {
    private int orderNumber;
    private int money;
    private String receipt;
    private String delivery;
    private String remarks;
    private Timestamp invoiceTime;
    private Timestamp receiptTime;
    private Timestamp successTime;
    private int status;
    private Timestamp deliveryTime;
    private String invoiceId;
    private String receiptId;
    private int size;

    @Id
    @Column(name = "orderNumber", nullable = false)
    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }

    @Basic
    @Column(name = "money", nullable = false, precision = 0)
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
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
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
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
    @Column(name = "invoiceId", nullable = false, length = 50)
    public String getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(String invoiceId) {
        this.invoiceId = invoiceId;
    }

    @Basic
    @Column(name = "receiptId", nullable = false, length = 50)
    public String getReceiptId() {
        return receiptId;
    }

    public void setReceiptId(String receiptId) {
        this.receiptId = receiptId;
    }

    @Basic
    @Column(name = "size", nullable = false)
    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Orders orders = (Orders) o;
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
                Objects.equals(receiptId, orders.receiptId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(orderNumber, money, receipt, delivery, remarks, invoiceTime, receiptTime, successTime, status, deliveryTime, invoiceId, receiptId, size);
    }
}
