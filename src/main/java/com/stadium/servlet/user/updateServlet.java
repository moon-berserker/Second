package com.stadium.servlet.user;

import com.stadium.entity.User;
import com.stadium.entity.Venue;
import com.stadium.service.UserService;
import com.stadium.service.VenueService;
import com.stadium.service.impl.UserServiceImpl;
import com.stadium.service.impl.VenueServiceImpl;
import com.stadium.utils.ThymeleafUtil;
import org.thymeleaf.context.Context;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update")
public class updateServlet extends HttpServlet {
    UserService service;
    @Override
    public void init() throws ServletException {
        service = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Context context = new Context();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String telephone = req.getParameter("telephone");
        User user = (User) req.getSession().getAttribute("user");
//        Venue venue = (Venue) req.getSession().getAttribute("venue");
//        context.setVariable("studentid", user.getUserid());
//        context.setVariable("username", user.getUsername());
//        context.setVariable("password", user.getPassword());
//        context.setVariable("telephone", user.getTelephone());
//        venue.setState("0");
        user.setUsername(username);
        user.setPassword(password);
        user.setTelephone(telephone);
        service.update(user);
//        service_v.update(venue);
        req.getRequestDispatcher("/personal").forward(req,resp);
    }
}
