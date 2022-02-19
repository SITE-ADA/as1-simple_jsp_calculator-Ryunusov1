package az.web.webandmobile2hw1;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CalculateNumberServlet", value = "/calculate-number-servlet")
public class CalculateNumberServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = null;
        String detail = "Browser-"+request.getHeader("User-Agent")+
                " AND Operator system - " + System.getProperty("os.name");
        request.setAttribute("browserAndOS",detail);
        dispatcher = request.getRequestDispatcher("/detail.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        Integer number1 = null;
        Integer number2 = null;
        Integer output = null;
        try {
            number1 = Integer.parseInt(req.getParameter("first-number"));
            number2 = Integer.parseInt(req.getParameter("second-number"));
        }
        catch (Exception err){
            req.setAttribute("parseError","The inputs only require the integer digit!!");
            dispatcher = req.getRequestDispatcher("/index.jsp");
            dispatcher.forward(req, resp);
        }
        String op_code =req.getParameter("op_code");
        if (op_code.equals("add"))
            output = number1+number2;
        else if (op_code.equals("sub"))
            output = number1-number2;
        else if (op_code.equals("mul"))
            output = number1*number2;
        else if (op_code.equals("div")){
            try {
                output = number1/number2;
            }
            catch (Exception ex){
                req.setAttribute("notAllowed","Dividing by zero not allowed!!");
                dispatcher = req.getRequestDispatcher("/index.jsp");
                dispatcher.forward(req, resp);
            }
        }
        req.setAttribute("output",output);
        dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, resp);
    }

    public void destroy() {
    }
}