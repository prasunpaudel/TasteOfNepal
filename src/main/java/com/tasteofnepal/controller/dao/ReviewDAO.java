package com.tasteofnepal.controller.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.tasteofnepal.controller.database.DatabaseConnection;
import com.tasteofnepal.model.Review;

public class ReviewDAO {

    public boolean addReview(Review review) {
        String query = "INSERT INTO reviews (user_name, rating, message) VALUES (?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, review.getUserName());
            stmt.setInt(2, review.getRating());
            stmt.setString(3, review.getMessage());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Review> getAllReviews() {
        List<Review> reviews = new ArrayList<>();
        String query = "SELECT * FROM reviews ORDER BY created_at DESC";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                reviews.add(new Review(
                        rs.getInt("id"),
                        rs.getString("user_name"),
                        rs.getInt("rating"),
                        rs.getString("message")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reviews;
    }
}
