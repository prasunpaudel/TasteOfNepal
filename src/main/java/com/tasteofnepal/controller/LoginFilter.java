package com.tasteofnepal.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginFilter implements Filter {
    
    // This method is called only once when the filter is first created.
    public void init(FilterConfig filterConfig) throws ServletException {}

    // This method is called every time a request/response pair is passed through the filter chain.
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

//    	 System.out.println("🔍 LoginFilter is being triggered!");
    	
        // Cast the generic ServletRequest and ServletResponse to their HTTP equivalents
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        // Get the current session, but don't create a new one if it doesn't exist
        HttpSession session = req.getSession(false);

        // Check if the user is logged in by verifying if session exists and contains the user attribute
        boolean loggedIn = (session != null && session.getAttribute("userWithSession") != null);

        // Get the login page URI to allow redirection when needed
        String loginURI = req.getContextPath() + "/pages/login.jsp";

        // Check if the current request is actually for the login page
        boolean loginRequest = req.getRequestURI().equals(loginURI);

        // If user is logged in or requesting the login page, allow the request to proceed
        if (loggedIn || loginRequest) {
            chain.doFilter(request, response); // continue the request-response flow
        } else {
            // If not logged in, redirect the user to the login page
            res.sendRedirect(loginURI);
        }
    }

    // This method is called when the filter is being taken out of service.
    public void destroy() {}

} // end of LoginFilter
