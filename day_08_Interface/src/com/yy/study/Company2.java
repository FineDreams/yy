package com.yy.study;

public class Company2 {
     /*
      * ��������һ����������õ�ʱ��
      * �����һ������Ķ���
      * ��������Ķ�����
      * 
      */
	private Person person;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	public void work(){
		if(person instanceof Teacher){
			//���person�������ָ��Ķ���
			//��Teacher���͵ģ���ô����ʽ���Ϊtrue
			System.out.println("��һ����ʦ");
		}
		if(person instanceof Student){
			System.out.println("��һ��ѧ��");
		}
		person.work();
	}
}