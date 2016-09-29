package service;


import java.util.ArrayList;
import java.util.Date;

import mybean.Usercard;
import mydb.MyJdbc;

public class Usercardservice {
	public void rebooks(String username,String rechange,String pay){
		MyJdbc jdbc = new MyJdbc();
		Usercard usercard = new Usercard();
		Date date = new Date();
		String tamp = null;
		String balance = null;
		String time = null;
		String operate = null; 
		int c = 0;
		int t1 = 0;
		int t2 = 0;
		ArrayList<Usercard> list = new ArrayList<Usercard>();
		list = jdbc.selectUsercard(username);
		System.out.println(list.size());
		if(list.size()-1 == -1){
			c=1;
		}
		else
			c = Integer.parseInt(list.get(list.size()-1).getTamp())+1;
		tamp = String.valueOf(c);
		time = date.toString();
		t1 = Integer.parseInt(rechange);
		t2 = Integer.parseInt(pay);
		if(t1>t2){
			String t = null;
			t = String.valueOf(t1-t2); 
			operate="+"+t;
			int b = 0;
			if(list.size()-1 == -1){
				b = 0;
			}
			else
				b = Integer.parseInt(list.get(list.size()-1).getBalance());
			b = b+t1-t2;
			balance = String.valueOf(b);	
		}
		if(t1<t2){
			String t = null;
			t = String.valueOf(t2-t1); 
			operate="-"+t;
			int b = 0;
			if(list.size()-1 == -1){
				b = 0;
			}
			else
				b = Integer.parseInt(list.get(list.size()-1).getBalance());
			b = b-t2+t1;
			balance = String.valueOf(b);	
		}
		if(t1==t2){
			String t = null;
			t = String.valueOf(t1-t2); 
			operate="+"+t;
			int b = 0;
			if(list.size()-1 == -1){
				b = 0;
			}
			else
				b = Integer.parseInt(list.get(list.size()-1).getBalance());
			b = b+t1-t2;
			balance = String.valueOf(b);	
		}
		usercard.setUsername(username);
		usercard.setTamp(tamp);
		usercard.setBalance(balance);
		usercard.setTime(time);
		usercard.setOperate(operate);
		jdbc.insertUsercard(usercard);
	}
}
