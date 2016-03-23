package com.dawning.gridview.app.gridview.webapp.jedis.transaction;

import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

public class MyService {

	private TransactionDefinition taDefinition;
	private TransactionTemplate transactionTemplate;
	
	public boolean transfer(){
		
		transactionTemplate.execute(new TransactionCallback(){

			public Object doInTransaction(TransactionStatus arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			
		});
		return false;
	}
}
