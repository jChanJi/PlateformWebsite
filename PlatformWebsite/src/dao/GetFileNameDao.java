package dao;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

public class GetFileNameDao {
	 public void getAllFileName(String path,ArrayList<String> fileName)
	    {
	        File file = new File(path);
	        File [] files = file.listFiles();
	        if(files!=null)
	        for(File a:files)
	        {
	            if(a.isDirectory())
	            {
	            	getAllFileName(a.getAbsolutePath(),fileName);
	            }
	            else {
	            	String names = a.getName();
	                if(names != null)
	                fileName.addAll(Arrays.asList(names));
				}
	        }
	        else {
				fileName=null;
			}
	    }
	 }
