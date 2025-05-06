package com.tasteofnepal.model;

public class Review {
    private int id;
    private String userName;
    private int rating;
    private String message;

    // Constructors
    public Review() {}

    public Review(int id, String userName, int rating, String message) {
        this.id = id;
        this.userName = userName;
        this.rating = rating;
        this.message = message;
    }

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
