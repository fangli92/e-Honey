package org.example.finalproject.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.finalproject.business.User;

import java.io.IOException;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

  protected void doGet(HttpServletRequest request,
                       HttpServletResponse response) throws ServletException, IOException {

    doPost(request, response);

  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    String url = "/index.jsp";

    // get current action
    String action = request.getParameter("action");
    if (action == null) {
      String firstName = request.getParameter("firstName");
      String lastName = request.getParameter("lastName");
      String emailAddress = request.getParameter("email");

      User u = new User(firstName, lastName, emailAddress);

      HttpSession session = request.getSession();
      session.setAttribute("user", u);

      url = "/index.jsp";
    }

    else if (action.equals("display")) {
      url = "/register.jsp";
    }

    // perform action and set URL to appropriate page
    else if (action.equals("logout")) {
      HttpSession session = request.getSession();
      session.removeAttribute("user");
      url = "/index.jsp";    // the "index" page
    }

    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);

    dispatcher.forward(request, response);
  }

}
