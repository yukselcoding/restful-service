package com.yuksel.exception;

public class EmployeeNotFoundException extends RuntimeException {
    public EmployeeNotFoundException(Long id) {
        super(String.format("Employee with %s NOT FOUND", id));
    }
}
