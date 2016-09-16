package com.admin_ser_store;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.class_store.event_add;
import com.connection_store.Connect1;

/**
 * Servlet implementation class Event_add_ser
 */
@WebServlet("/Event_add_ser")
public class Event_add_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private static String imageSavedPath1 = "";
	
	private static String filename1 = "";
	
	static boolean file_1_Flag = false;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Event_add_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/event_add.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) 
        {
        	
            ServletFileUpload upload = new ServletFileUpload();
            try {
            	PrintWriter pw = response.getWriter();
        		pw.println("Hello");
                FileItemIterator itr = upload.getItemIterator(request);
                event_add obj = new event_add();
                while (itr.hasNext()) 
                {
                    FileItemStream item = itr.next();
                    if (item.getFieldName().equals("img1")) {
                        filename1 = item.getName();
                        obj.setFile_name(filename1);
                        System.out.println("f1: "+filename1);
                        System.out.println("File1: "+"upload_paper/" + filename1);
                        request.setAttribute("newpath1", "upload_event/" + filename1);
                    }
                    
                    if (item.isFormField()) 
                    {
                        // do form specific process
                    	
                        String fieldName = item.getFieldName();
                        InputStream is = item.openStream();
                        byte b[] = new byte[is.available()];
                        is.read(b);
                        String value = new String(b);
                        if (fieldName.equals("ename")) {
                        	obj.setEname(value);
                        }else if(fieldName.equals("edetail")){
                        	obj.setEdetail(value);
                        }
                    } else {
                        String path = "D:/proj_8/soc_final/WebContent";
                        String Name = item.getName();
                        processFile(path, item, request, obj);
                    }
                    
                }
                //-------------------
                //clear flags;
                file_1_Flag = false;
                
                if (obj.do_Upload().equalsIgnoreCase("rs")) {
                	
//                	RequestDispatcher rd = request.getRequestDispatcher("/client/templates.jsp");
                    RequestDispatcher rd = request.getRequestDispatcher("Event_view_ser");
                    rd.forward(request, response);
                } else {
                    out.write("File Uploaded Failed");
                }
            } catch (FileUploadException fue) {
                fue.printStackTrace();
            }
        }
        
		
		

	}
	 public static boolean processFile(String path, FileItemStream item, HttpServletRequest request, event_add obj) {
	        try {
	            File file = new File(path + "/upload_event");
	            if (!file.exists()) {
	                System.out.println("file Not Exist");
	                file.mkdir();
	            } else {
	                System.out.println("file  Exist");
	                File savedFile = new File(file.getAbsolutePath()
	                        + File.separator + item.getName());
	                if (!file_1_Flag) {
	                	 imageSavedPath1 = file.getAbsolutePath()
                         + File.separator + item.getName();
	                    file_1_Flag = true;
	                }
	                
	                FileOutputStream fos = new FileOutputStream(savedFile);
	                InputStream is = item.openStream();
	                int x = 0;
	                byte b[] = new byte[1024];
	                while ((x = is.read(b)) != -1) {
	                    fos.write(b, 0, x);
	                }
	                fos.flush();
	                if (file_1_Flag) {
	                    fos.close();
	                }
	                return true;
	            }
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	        return false;
	    }

}
