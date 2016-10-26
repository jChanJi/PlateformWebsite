package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminFilter implements Filter {
	private FilterConfig config;
	public AdminFilter() {
		// TODO Auto-generated constructor stub
	}
	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		String nologinpath = config.getInitParameter("nologinpath");
		String charset = config.getInitParameter("charset");
		if (charset == null) {
			charset = "utf-8";
		}
		request.setCharacterEncoding(charset);
		
		if (nologinpath != null) {
			String[] strings = nologinpath.split(";");
			for (int i = 0; i < strings.length; i++) {
				if (strings[i] == null || "".equals(strings[i])) {
					continue;
				}
				if (request.getRequestURI().indexOf(strings[i]) != -1) {
					arg2.doFilter(arg0, arg1);
					return;
				}
			}
		}

		if (request.getSession().getAttribute("name") != null) {
			arg2.doFilter(arg0, arg1);
		} else {
			response.sendRedirect(request.getContextPath() + "/jsp/behind/sign.jsp");
		}

	}

	public void init(FilterConfig arg0) throws ServletException {
		config = arg0;
	}

}
