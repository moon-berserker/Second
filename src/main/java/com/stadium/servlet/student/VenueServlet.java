package com.stadium.servlet.student;

import com.stadium.entity.User;
import com.stadium.entity.Venue;
import com.stadium.service.VenueService;
import com.stadium.service.impl.VenueServiceImpl;
import com.stadium.utils.ThymeleafUtil;
import org.thymeleaf.context.Context;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/venue")
public class VenueServlet extends HttpServlet {
    VenueService service;
    @Override
    public void init() throws ServletException{
        service = new VenueServiceImpl();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Context context = new Context();
        User user = (User) req.getSession().getAttribute("user");
        context.setVariable("userid", user.getUserid());
        Venue venue = (Venue) req.getSession().getAttribute("venue");
        context.setVariable("venue_list",service.getVenueList());
        ThymeleafUtil.process("venue.html", context, resp.getWriter());
    }
}
