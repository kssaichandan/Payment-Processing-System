package com.payment.service;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class PaymentServiceTest {
    PaymentService service = new PaymentService();
    @Test
    public void testSuccessfulPayment() {
        assertTrue(service.processPayment(100.0, "1234567812345678"));
    }
    @Test
    public void testInvalidAmount() {
        assertFalse(service.processPayment(-5.0, "1234567812345678"));
    }
}
