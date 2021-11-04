package com.team.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;

public class UserFrontController extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI();
      String contextPath = req.getContextPath();
      String command = requestURI.substring(contextPath.length());
      ActionForward forward = null;

      switch (command) {
      case "/user/UserLoginOk.me":
         try {forward = new UserLoginOkAction().execute(req, resp);}catch(Exception e) {System.out.println(e);}
         break;
      case "/user/UserLogin.me":
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/app/member/login.jsp");
         break;
      case "/user/JoinOk.me":
    	  try {forward = new UserJoinOkAction().execute(req, resp);}catch(Exception e) {System.out.println(e);}
    	  break;
      case "/user/Logout.me":
    	  try {forward = new UserLogoutAction().execute(req, resp);}catch(Exception e) {System.out.println(e);}
    	  break;
      case "/user/UserCheckIdOk.me":
    	  try {forward = new UserCheckIdOkAction().execute(req, resp);}catch(Exception e) {System.out.println(e);}
    	  break;
   
      }

      if (forward != null) {
         if (forward.isRedirect()) {
            resp.sendRedirect(forward.getPath());
         } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
            dispatcher.forward(req, resp);
         }
      }
   }
}