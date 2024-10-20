package com.nt.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrimeTag extends TagSupport {
	private int n = 20;
	private static final long serialVersionUID = -7751321753760179742L;

	public PrimeTag() {
		System.out.println("PrimeTag.PrimeTag()");
	}

	public void setN(int n) {
		System.out.println("PrimeTag.setN()");
		this.n = n;
	}

	private boolean isPrime(int x) {

		for (int i = 2; i < x; ++i) {
			if (x % i == 0)
				return false;
		}
		return true;

	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("PrimeTag.doStartTag()");
		JspWriter jw = pageContext.getOut();
		try {
			jw.println("<b>Prime numbers between 1 to "+n+" are:: </b>");
			for(int i=1;i<=n;++i)
				if(isPrime(i))
					jw.println(i+"&nbsp&nbsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("PrimeTag.doEndTag()");
		return EVAL_PAGE;
	}
}
