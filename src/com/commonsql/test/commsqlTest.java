package com.commonsql.test;

import java.util.ArrayList;

import com.commonsql.bean.AnType;
import com.commonsql.bean.Animals;
import com.commonsql.dao.AnTypeDAO;
import com.commonsql.dao.AnimalsDAO;

/** 
* @author 作者 E-mail: 
* @version 创建时间：2017年7月23日 下午1:43:30 
* 类说明 
*/
public class commsqlTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AnimalsDAO ad = new AnimalsDAO();
		ArrayList<Animals> ar = ad.getList();
		for (Animals an : ar){
			System.out.println(an.getName());
		}
		
		
		AnTypeDAO at = new AnTypeDAO();
		ArrayList<AnType> atr = at.getList();
		for (AnType ant : atr){
			System.out.println(ant.getAnName());
			
		}

	}

}
