package com.java.service;

public interface MailService {
		public boolean sendEmailId(String customerName, String userEmail) throws Exception;

		public boolean sendEmailPassword(String customerName, String userEmail) throws Exception;
}
