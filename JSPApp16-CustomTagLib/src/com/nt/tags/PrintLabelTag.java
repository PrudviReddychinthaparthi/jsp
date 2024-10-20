package com.nt.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintLabelTag extends TagSupport {

	private static final long serialVersionUID = 1050531380052376788L;

	public PrintLabelTag() {
		System.out.println("PrintLabelTag.PrintLabelTag()");
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("PrintLabelTag.doStartTag()");
		JspWriter jw = pageContext.getOut();
		try {
			jw.println("Hello, I am the Print Label Tag");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("PrintLabelTag.doEndTag()");
		return EVAL_PAGE;
	}
}
