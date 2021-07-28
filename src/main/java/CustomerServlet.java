import bob.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet (urlPatterns = {"/customer","/"})
//@WebServlet (urlPatterns = {"/"})
public class CustomerServlet extends HttpServlet {
    static ArrayList<Customer> list = new ArrayList<>();
        static {
        list.add(new Customer("Tian", "18", "HN", "anh1.jpg"));
        list.add(new Customer("av", "18", "HN", "anh1.jpg"));
        list.add(new Customer("an", "18", "HN", "anh1.jpg"));
        list.add(new Customer("ew", "18", "HN", "anh1.jpg"));
    }
    @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("listCustomer", list);
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("ShowCustomer.jsp");
        dispatcher.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String date = req.getParameter("date");
        String address = req.getParameter("address");
        String img = req.getParameter("img");

        list.add(new Customer(name,date,address,img));
        RequestDispatcher dispatcher;
        req.setAttribute("listCustomer", list);
        dispatcher = req.getRequestDispatcher("ShowCustomer.jsp");
        dispatcher.forward(req, resp);
    }}
