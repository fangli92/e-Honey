package org.example.finalproject.business;

public class User {

    private String emailAddress;
    private String firstName;
    private String lastName;

    public User(String firstName, String lastName, String emailAddress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.emailAddress = emailAddress;
    }

    public String getFirstName() {
        return firstName;
    }
}
