package com.tasteofnepal.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginFilter implements Filter {

    // Called once when the filter is initialized
    public void init(FilterConfig filterConfig) throws ServletException {}

    // Called every time a request/response pair is passed through the filter
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        // Convert to HTTP-specific request/response
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        // Get current session without creating a new one
        HttpSession session = req.getSession(false);

        // Check if user is logged in (session exists and has "userWithSession")
        boolean loggedIn = (session != null && session.getAttribute("userWithSession") != null);

        // URIs for login, register, and review pages
        String loginURI = req.getContextPath() + "/pages/login.jsp";
        String registerURI = req.getContextPath() + "/pages/register.jsp";
        String reviewURI = req.getContextPath() + "/pages/review.jsp";

        // Check if the request is for login, register, or review page
        boolean loginRequest = req.getRequestURI().equals(loginURI);
        boolean registerRequest = req.getRequestURI().equals(registerURI);
        boolean reviewRequest = req.getRequestURI().equals(reviewURI);

        // Allow access to login and register pages without login
        if (loginRequest || registerRequest) {
            chain.doFilter(request, response);
        } 
        // If the user is not logged in and trying to access the review page, redirect them to login
        else if (!loggedIn && reviewRequest) {
            res.sendRedirect(loginURI);
        } 
        // Allow all other pages and continue the filter chain if logged in
        else {
            chain.doFilter(request, response);
        }
    }

    // Called when the filter is destroyed
    public void destroy() {}
}
