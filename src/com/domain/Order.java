package com.domain;
 
public class Order {
	protected String Cost;//�۸�
    protected String Name;//Ͷ��������
    protected String Start_time;//��ʱ��
    protected String End_time;//���ս�����
    protected String Cardstyle;//֤������
    protected String ID_card;//���֤��
    protected String Birth_time;//��������
    protected String Gender;//�Ա�
    protected String Phone;//�绰
    protected String Address;//��ַ
    protected String Beneficiary;//������
    protected int id;//�û�ID
 
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String Cost() {
        return Cost;
    }
    public void setCost(String Cost) {
        this.Cost = Cost;
    }
    public String getName() {
        return Name;
    }
    public void setName(String Name) {
        this.Name = Name;
    }
    public String getStart_time() {
        return Start_time;
    }
    public void setStart_time(String Start_time) {
        this.Start_time = Start_time;
    }
    public String getEnd_time() {
        return End_time;
    }
    public void setEnd_time(String End_time) {
        this.End_time = End_time;
    }
    public String getCardstyle() {
        return Cardstyle;
    }
    public void setCardstyle(String Cardstyle) {
        this.Cardstyle = Cardstyle;
    }
    public String getID_card() {
        return ID_card;
    }
    public void setID_card(String ID_card) {
        this.ID_card = ID_card;
    }
    public String getBirth_time() {
        return Birth_time;
    }
    public void setBirth_time(String Birth_time) {
        this.Birth_time = Birth_time;
    }
    public String getGender() {
        return Gender;
    }
    public void setGender(String Gender) {
        this.Gender = Gender;
    }
    public String getPhone() {
        return Phone;
    }
    public void setPhone(String Phone) {
        this.Phone = Phone;
    }
    public String getAddress() {
        return Address;
    }
    public void setAddress(String Address) {
        this.Address = Address;
    }
    public String getBeneficiary() {
        return Beneficiary;
    }
    public void setBeneficiary(String Beneficiary) {
        this.Beneficiary = Beneficiary;
    }
    
   // public Order() {}
    
/*public Order(String Name,String Cost,String Start_time,String End_time,String Cardstyle,String ID_card,String Birth_time,String Gender,String Phone,String Address,String Beneficiary) {
	this.Name=Name;
	this.Cost=Cost;
	this.Start_time=Start_time;
	this.End_time=End_time;
	this.Cardstyle=Cardstyle;
	this.ID_card=ID_card;
	this.Birth_time=Birth_time;
	this.Gender=Gender;
	this.Phone=Phone;
	this.Address=Address;
	this.Beneficiary=Beneficiary;
}*/
}