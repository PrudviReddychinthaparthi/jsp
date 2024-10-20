package com.nt.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class DisplayTag extends TagSupport {

	private static final long serialVersionUID = -868582597898690889L;

	private int size = 20;
	private String font;

	public void setSize(int size) {
		this.size = size;
	}

	public void setFont(String font) {
		this.font = font;
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("DisplayTag.doStartTag()");
		JspWriter out = pageContext.getOut();
		try {
			out.println("<span style='font-family:" + font + ";font-size:" + size + "px;' >");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("DisplayTag.doEndTag()");
		// get Out Object
		JspWriter out = pageContext.getOut();
		try {
			out.println("</span>");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
