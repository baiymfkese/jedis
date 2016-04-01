package com.dawning.gridview.app.gridview.webapp.jedis.activemq;

import javax.annotation.PostConstruct;
import javax.jms.Message;
import javax.jms.MessageListener;

import org.apache.activemq.broker.BrokerService;
import org.apache.activemq.command.ActiveMQQueue;
import org.apache.activemq.spring.ActiveMQConnectionFactory;
import org.springframework.jms.listener.DefaultMessageListenerContainer;
import org.springframework.stereotype.Service;

@Service
public class MQBroker {

	@PostConstruct
	public void init(){
		System.out.println("开始启动broker....");
		BrokerService brokerService=new BrokerService();
		brokerService.setBrokerName("collector-mq-broker");
		brokerService.setUseJmx(true);
		brokerService.setPersistent(false);
		try {
			brokerService.addConnector("tcp://0.0.0.0:7777");
			brokerService.start();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("启动broker结束....");
		startListener();
	}
	private void startListener(){
		
		System.out.println("开始启动监听....");
		DefaultMessageListenerContainer dmlc=new DefaultMessageListenerContainer();
		ActiveMQConnectionFactory connectionFactory=new ActiveMQConnectionFactory();
		connectionFactory.setBrokerURL("vm://collector-mq-broker-");
		dmlc.setConnectionFactory(connectionFactory);
		dmlc.setDestination(new ActiveMQQueue("ResourceQueue"));
		dmlc.setMessageListener(new MessageListener(){

			public void onMessage(Message msg) {
				// TODO Auto-generated method stub
				System.out.println("msg--------------"+msg);
			}
			
			
		});
		dmlc.initialize();
		dmlc.start();
		System.out.println("启动监听完成....");
	}
}
