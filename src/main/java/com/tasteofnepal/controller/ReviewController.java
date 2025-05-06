package com.tasteofnepal.controller;

import com.tasteofnepal.controller.dao.ReviewDAO;
import com.tasteofnepal.model.Review;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ReviewController")
public class ReviewController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String message = request.getParameter("message");

        ReviewDAO dao = new ReviewDAO();
        Review review = new Review(0, userName, rating, message);
        dao.addReview(review);

        response.sendRedirect("review.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReviewDAO dao = new ReviewDAO();
        List<Review> reviews = dao.getAllReviews();
        request.setAttribute("reviews", reviews);
        request.getRequestDispatcher("review.jsp").forward(request, response);
    }
}
