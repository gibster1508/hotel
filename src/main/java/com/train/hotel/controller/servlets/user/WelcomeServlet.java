package com.train.hotel.controller.servlets.user;

import com.train.hotel.controller.Links;
import com.train.hotel.utility.ServletUtility;
import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "WelcomeServlet", value = "/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
    private static final Logger log = Logger.getLogger(WelcomeServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtility.forward(Links.WELCOME_VIEW, request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
