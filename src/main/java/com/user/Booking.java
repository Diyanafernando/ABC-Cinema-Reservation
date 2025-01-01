package com.user;

public class Booking {
    private int bookingID;
    private String movieName;
    private String seatNumber;
    private String userEmail;

    public Booking(int bookingID, String movieName, String seatNumber, String userEmail) {
        this.bookingID = bookingID;
        this.movieName = movieName;
        this.seatNumber = seatNumber;
        this.userEmail = userEmail;
    }

    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
}
