package com.payment.service;
public class PaymentService {
    public boolean processPayment(double amount, String cardNumber) {
        if (amount <= 0) return false;
        if (cardNumber == null || !cardNumber.matches("\\d{16}")) return false;
        return true;
    }
}
